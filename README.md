# Translate IR report selector
![](https://img.shields.io/badge/Plug--in_Type-Dynamic_Action-orange.svg)
![](https://img.shields.io/badge/Oracle_Database-18c-blue.svg)
![](https://img.shields.io/badge/APEX-21.1-success.svg)

Translate the names of IR saved reports using text messages.

Demo available at [apex.oracle.com](https://apex.oracle.com/pls/apex/jari/r/translate-ir-report-selector-plug-in-demo/home)

## Usage

### System Requirements
* Oracle Database 18c or later
* Oracle Application Express version 21.1 or later

### Report Name Translation

Translations are stored to [text messages](https://docs.oracle.com/en/database/oracle/application-express/21.1/htmdb/translating-messages.html#GUID-3557FD3D-EC89-4F18-91B7-E8E304459266). Text message name consists of prefix *IR_REPORT_ALIAS_* and report alias like *IR_REPORT_ALIAS_345678*.

You can create text messages running below PL/SQL block and then translate message using APEX builder.

```sql
declare
  /* Application id */
  l_app_id      number        := 100;
  /* Language code */
  l_language    varchar2(255) := 'fi';
  /* text message prefix */
  l_msg_prefix  varchar2(255) := 'IR_REPORT_ALIAS_';
begin
  /* Fetch all saved reports and create text message */
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
          and x1.translatable_message = l_msg_prefix || t1.report_alias
      )
  ) loop
    apex_lang.create_message(
      p_application_id => c1.application_id
      ,p_name => l_msg_prefix || c1.report_alias
      ,p_language => l_language
      ,p_message_text => c1.report_name
    );
  end loop;
  commit;
end;
/
```
### Dynamic Action

Create dynamic action
- **Event**: After Refresh
- **Selection Type**: Region
- **Region**: *select yout interactive report region*
- **Action**: Translate IR Report Selector [Plug-In]

## License

This code is released under [MIT license](https://github.com/jariolaine/apex-dynamic-action-plugin-translate-ir-report-selector/blob/master/LICENSE) by Jari Laine.
