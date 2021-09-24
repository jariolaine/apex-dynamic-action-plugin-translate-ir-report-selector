declare

  /* Change application id and language code for your needs */
  /* Application id */
  l_app_id      number        := 100;
  /* Language code */
  l_language    varchar2(255) := 'fi';

  /* text message prefix for IR */
  l_ir_msg_prefix  varchar2(255) := 'IR_REPORT_ALIAS_';
  /* text message prefix for IG */
  l_ig_msg_prefix  varchar2(255) := 'IG_REPORT_ALIAS_';

begin

  /*
    Fetch all application saved public IR reports and
    create text message for specified language code
  */
  for c1 in(
    select t1.application_id
      ,t1.page_id
      ,t1.report_id
      ,t1.report_name
      ,t1.report_alias
    from apex_application_page_ir_rpt t1
    where 1 = 1
      and t1.application_id = l_app_id
      and t1.report_type in( 'ALTERNATIVE_DEFAULT', 'PUBLIC' )
      and t1.report_alias is not null
      and t1.report_name is not null
      and not exists(
        select 1
        from apex_application_translations x1
        where 1 = 1
          and x1.language_code = l_language
          and x1.application_id = t1.application_id
          and x1.translatable_message = l_ir_msg_prefix || t1.report_alias
      )
  ) loop
    apex_lang.create_message(
      p_application_id => c1.application_id
      ,p_name => l_ir_msg_prefix || c1.report_alias
      ,p_language => l_language
      ,p_message_text => c1.report_name
    );
  end loop;

  /*
    Fetch all application saved public IG reports and
    create text message for specified language code
  */
  for c1 in(
    select t1.application_id
      ,t1.page_id
      ,t1.report_id
      ,t1.name
      ,t1.static_id
    from apex_appl_page_ig_rpts t1
    where 1 = 1
      and t1.application_id = l_app_id
      and t1.type = 'ALTERNATIVE'
      and t1.static_id is not null
      and t1.name is not null
      and not exists(
        select 1
        from apex_application_translations x1
        where 1 = 1
          and x1.language_code = l_language
          and x1.application_id = t1.application_id
          and x1.translatable_message = l_ig_msg_prefix || t1.static_id
      )
  ) loop
    apex_lang.create_message(
      p_application_id => c1.application_id
      ,p_name => l_ig_msg_prefix || c1.static_id
      ,p_language => l_language
      ,p_message_text => c1.name
    );
  end loop;

  commit;

end;
/
