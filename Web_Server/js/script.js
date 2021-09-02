function translateIrReportNames( p_json ){
  // check that there is data
  if( p_json.length === 1 ){
    // get IR reports select list
    var l_irReporSelect$ = $( "#" + p_json[0].id + "_saved_reports" );
    // loop translated report names and change report name to IR report select list
    $.each( p_json[0].reports, function( i, report ){
      // get IR reports select list option by report id and extract prefix
      var l_option$ = l_irReporSelect$.find( "option[value=\"" + report.id + "\"]" )
        ,l_oldName = l_option$.text()
        ,l_namePrefix = l_oldName.substring( 0, l_oldName.indexOf( ". " ) + 2 )
      ;
      // change option text
      l_option$.text( l_namePrefix + report.name );
    });
  }
}
