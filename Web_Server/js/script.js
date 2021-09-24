function translateIrReportNames( p_options ){
  // check that there is data
  if( p_options.length === 1 ){

    // if region is IR
    if( p_options[0].type === "NATIVE_IR" ){

      // get IR reports select list
      var l_irReporSelect$ = $( "#" + p_options[0].id + "_saved_reports" );

      // get selected report current name
      // use this later to change alternative default controll label
      var l_searchValue = l_irReporSelect$.find( "option:selected" ).text();
      l_searchValue = l_searchValue.substring( l_searchValue.indexOf( ". " ) + 2 );

      // loop translated report names and change report name to IR report selector
      $.each( p_options[0].reports, function( i, report ){
        // get IR reports select list option by report id and extract prefix
        var l_option$ = l_irReporSelect$.find( "option[value=\"" + report.id + "\"]" )
          ,l_oldName = l_option$.text()
          ,l_namePrefix = l_oldName.substring( 0, l_oldName.indexOf( ". " ) + 2 )
        ;
        // change select list option text
        l_option$.text( l_namePrefix + report.name );
      });

      // get alternative default controll label
      var l_control$ = $( "#" + p_options[0].id + "_control_text_adefault" );
      var l_replaceValue = l_irReporSelect$.find( "option:selected" ).text();

      // change alternative default controll label
      l_replaceValue = l_replaceValue.substring( l_replaceValue.indexOf( ". " ) + 2 );
      l_control$.text( l_control$.text().replace( l_searchValue, l_replaceValue ) );
      $( "#" + p_options[0].id + "_control_panel_summary a[data-setting=\"report-default\"] span.a-IRR-reportSummary-value").text( l_replaceValue );

    // if region is IG
    } else if( p_options[0].type === "NATIVE_IG" ){

      // get IG reports select list
      var l_irReporSelect$ = $( "#" + p_options[0].id + "_ig_toolbar" ).find( "select" );

      // loop translated report names and change report name to IG report selector
      $.each( p_options[0].reports, function( i, report ){
        // get IG reports select list option by report id
        var l_option$ = l_irReporSelect$.find( "option[value=\"" + report.id + "\"]" );
        // change select list option text
        l_option$.text( report.name );
      });

    }

  }
}
