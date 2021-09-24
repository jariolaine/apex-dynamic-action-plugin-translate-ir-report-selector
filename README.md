# Translate IR or IG report selector
![](https://img.shields.io/badge/Plug--in_Type-Dynamic_Action-orange.svg)
![](https://img.shields.io/badge/Oracle_Database-18c-blue.svg)
![](https://img.shields.io/badge/APEX-21.1-success.svg)

Translate the names of IR or IG saved reports using text messages.

Demo available at [apex.oracle.com](https://apex.oracle.com/pls/apex/jari/r/translate-ir-report-selector-plug-in-demo/home)

## Usage

### System Requirements
* Oracle Database 18c or later
* Oracle Application Express version 21.1 or later

### Report Name Translation

Translations of report names should be saved in [text messages](https://docs.oracle.com/en/database/oracle/application-express/21.1/htmdb/translating-messages.html#GUID-3557FD3D-EC89-4F18-91B7-E8E304459266). The name of the text message consists of the prefix *IR_REPORT_ALIAS_* or *IG_REPORT_ALIAS_*, depending on region, and the saved report alias, for example *IR_REPORT_ALIAS_345678*.

To create text messages for all IR and IG saved alternative reports in application, run the below PL/SQL block. Then translate created messages with the APEX builder.

```sql
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

  /* Fetch all saved IR reports and create text message */
  for c1 in(
    select t1.application_id
      ,t1.page_id
      ,t1.report_id
      ,t1.report_name
      ,t1.report_alias
    from apex_application_page_ir_rpt t1
    where 1 = 1
      and t1.application_id = l_app_id
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

  /* Fetch all saved IG reports and create text message */
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
```
### Dynamic Action for IR

Create dynamic action
- **Event**: After Refresh
- **Selection Type**: Region
- **Region**: *select yout interactive report region*
- **Action**: Translate IR/IG Report Selector [Plug-In]
- **Fire on Initialization**: On

### Dynamic Action for IG

Create dynamic action
- **Event**: Selection Change [interactive Grid]
- **Selection Type**: Region
- **Region**: *select yout interactive grid region*
- **Action**: Translate IR/IG Report Selector [Plug-In]
- **Fire on Initialization**: On

## License

This code is released under [MIT license](https://github.com/jariolaine/apex-dynamic-action-plugin-translate-ir-report-selector/blob/master/LICENSE) by Jari Laine.
