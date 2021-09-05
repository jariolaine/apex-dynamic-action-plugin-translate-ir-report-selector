function translateIrReportNames( p_json ){
  // check that there is data
  if( p_json.length === 1 ){
    // get IR reports select list
    var l_irReporSelect$ = $( "#" + p_json[0].id + "_saved_reports" );
    // get selected report current name
    var l_searchValue = l_irReporSelect$.find( "option:selected" ).text();
    l_searchValue = l_searchValue.substring( l_searchValue.indexOf( ". " ) + 2 );

    // loop translated report names and change report name to IR report selector
    $.each( p_json[0].reports, function( i, report ){
      // get IR reports select list option by report id and extract prefix
      var l_option$ = l_irReporSelect$.find( "option[value=\"" + report.id + "\"]" )
        ,l_oldName = l_option$.text()
        ,l_namePrefix = l_oldName.substring( 0, l_oldName.indexOf( ". " ) + 2 )
      ;
      // change option text
      l_option$.text( l_namePrefix + report.name );
    });
    // get alternative default controll label
    var l_control$ = $( "#" + p_json[0].id + "_control_text_adefault" );
    var l_replaceValue = l_irReporSelect$.find( "option:selected" ).text();
    // change alternative default controll label
    l_replaceValue = l_replaceValue.substring( l_replaceValue.indexOf( ". " ) + 2 );
    l_control$.text( l_control$.text().replace( l_searchValue, l_replaceValue ) );
    $( "#" + p_json[0].id + "_control_panel_summary a[data-setting=\"report-default\"] span.a-IRR-reportSummary-value").text( l_replaceValue );
  }
}
