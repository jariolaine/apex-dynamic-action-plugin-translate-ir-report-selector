# Translate IR/IG Report Selector
![](https://img.shields.io/badge/Plug--in_Type-Dynamic_Action-orange.svg)
![](https://img.shields.io/badge/Oracle_Database-18c-blue.svg)
![](https://img.shields.io/badge/APEX-21.1-success.svg)

Translate the names of Interactive Report and Interactive Grid saved alternative reports using text messages.

Demo available at [apex.oracle.com](https://apex.oracle.com/pls/apex/jari/r/translate-ir-report-selector-plug-in-demo/home)

## Usage

### System Requirements
* Oracle Database 18c or later
* Oracle Application Express version 21.1 or later

### Report Name Translation

Translations of report names should be saved in [text messages](https://docs.oracle.com/en/database/oracle/application-express/21.1/htmdb/translating-messages.html#GUID-3557FD3D-EC89-4F18-91B7-E8E304459266). The name of the text message consists of the prefix *IR_REPORT_ALIAS_* or *IG_REPORT_ALIAS_*, depending on region, and the saved report alias, for example *IR_REPORT_ALIAS_345678*.

#### Seed Text Messages

To seed text messages for all Interactive Report and Interactive Grid saved alternative reports in application, run the PL/SQL script [seed_text_messages.sql](APEX/Script/seed_text_messages.sql). Then translate created messages with the APEX builder.

### Dynamic Action for Interactive Report

- **Event**: After Refresh
- **Selection Type**: Region
- **Region**: *select yout interactive report region*
  - **Action**: Translate IR/IG Report Selector [Plug-In]
  - **Fire on Initialization**: On

### Dynamic Action for Interactive Grid

- **Event**: Page Load
  - **Action**: Translate IR/IG Report Selector [Plug-In]
  - **Selection Type**: Region
  - **Region**: *select yout interactive grid region*

## License

This code is released under [MIT license](https://github.com/jariolaine/apex-dynamic-action-plugin-translate-ir-report-selector/blob/master/LICENSE) by Jari Laine.
