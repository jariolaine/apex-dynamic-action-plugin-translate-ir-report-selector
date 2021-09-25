function translateIrReportNames( p_options ){

  // check that there is data
  if( p_options.length === 1 ){

    // if region is IR
    if( p_options[0].type === "NATIVE_IR" ){

      apex.debug.info( "report type:", p_options[0].type );

      // get IR reports select list
      var l_irReporSelect$ = $( "#" + p_options[0].region + "_saved_reports" );
      // for storing selected report translated name
      var l_replaceValue;

      // loop translated report names and change report name to IR report selector
      $.each( p_options[0].reports, function( i, report ){

        // get IR reports select list option by report id and extract prefix
        var l_option$ = l_irReporSelect$.find( 'option[value="' + report.id + '"]' )
          // get old report name from option
          ,l_oldName = l_option$.text()
          // extract prefix from old report name
          ,l_namePrefix = l_oldName.substring( 0, l_oldName.indexOf( ". " ) + 2 )
          // concanate prefix to translated report namme
          ,l_newName =  l_namePrefix + report.name;
        ;

        apex.debug.info( "option text old:", l_oldName, "new:", l_newName );

        // if option is selected store translated and old report name
        if( l_option$.is( ":selected" ) ){

          // store old selected report name
          l_searchValue = l_option$.text();

          // Remove prefix from old seleted report name

          l_searchValue = l_searchValue.substring( l_searchValue.indexOf( ". " ) + 2 );

          // store translated selected report name
          l_replaceValue = report.name;
          apex.debug.info(
            "Selected report old:"
            ,l_searchValue
            ,"new:"
            ,l_replaceValue
          );

        }

        // change select list option text to translated report name
        l_option$.text( l_namePrefix + report.name );

      });

      // if selected report name is translated
      if( l_replaceValue ){

        // get alternative default controll label
        var l_control$ = $( "#" + p_options[0].region + "_control_text_adefault" );

        apex.debug.info( "Selected report is alternative default:", l_control$.length === 1 );

        // if alternative default controll label
        if( l_control$.length === 1 ){

          // change alternative default controll label to translated name
          l_control$.text( l_control$.text().replace( l_searchValue, l_replaceValue ) );

        } else {

          // alternative default controll label not found
          // then it should be user saved public report
          l_control$ = $( "#" + p_options[0].region + "_control_text_report" );

          apex.debug.info( "Selected report is user saved public report:", l_control$.length === 1 );

          l_control$.text( l_control$.text().replace( '"' + l_searchValue + '"', '"' + l_replaceValue + '"' ) );

        }

        // find visually hidden report summary element
        var l_reportSummaryItem$ = $( "#" + p_options[0].region + "_control_panel_summary" ).find(
          "li.a-IRR-reportSummary-item--savedReport span.a-IRR-reportSummary-value"
        );

        if( apex.debug.getLevel() > 0 ){

          var l_reportSummaryText = l_reportSummaryItem$.map( function(){
            return $( this ).text();
          }).get().join( ", " );

          apex.debug.info( "Report summary element(s) count:", l_reportSummaryItem$.length );
          apex.debug.info( "Report summary element(s) old text:", l_reportSummaryText );

        }

        // change hidden report summary element text
        l_reportSummaryItem$.text( l_replaceValue );

        if( apex.debug.getLevel() > 0 ){

          apex.debug.info( "Report summary element(s) new text:", l_reportSummaryItem$.text() );

        }

      }

    // if region is IG
    } else if( p_options[0].type === "NATIVE_IG" ){

      apex.debug.info( "report type:", p_options[0].type );

      // set report names
      translateIgReportNames( p_options )

      // get IG region
      var Ig$ = $( "#" + p_options[0].region );

      // register event listener to IG region
      Ig$.on( "interactivegridviewchange interactivegridreportsettingschange", function(event, ui) {

        // debug event that is fired
        apex.debug.info( event );

        // Ajax call to fetch report translations
        var l_result = apex.server.plugin( p_options[0].ajax_identifier, {
            // pass region id to process
            x01:p_options[0].region
          },{
            success: function( data ){

              apex.debug.info( data );
              // set report names
              translateIgReportNames( data )

            }
          }
        );

      });

    }

  }
  // private function for handling IG
  function translateIgReportNames( p_options ){

    // get IG reports select list
    var l_irReporSelect$ = $( "#" + p_options[0].region + "_ig_toolbar select" );
    var l_replaceValue;

    // loop translated report names and change report name to IG report selector
    $.each( p_options[0].reports, function( i, report ){

      // get IG reports select list option by report id
      l_option$ = l_irReporSelect$.find( 'option[value="' + report.id + '"]' );

      // if option is selected store translated and old report name
      if( l_option$.is( ":selected" ) ){

        // store old selected report name
        l_searchValue = l_option$.text();

        // store translated selected report name
        l_replaceValue = report.name;
        apex.debug.info(
          "Selected report old:"
          ,l_searchValue
          ,"new:"
          ,l_replaceValue
        );

      }

      apex.debug.info( "option text old:", l_option$.text(), "new:", report.name );

      // change option text to translated report name
      l_option$.text( report.name );

    });

    // if selected report name is translated
    if( l_replaceValue ){

      var l_reportSummaryItem$ = $( "#" + p_options[0].region + "_ig_summary" );
      var l_reportSummaryText = l_reportSummaryItem$.text();

      apex.debug.info( "Report summary old text:", l_reportSummaryText );

      l_reportSummaryItem$.text( l_reportSummaryText.replace( l_searchValue, l_replaceValue ) );

      if( apex.debug.getLevel() > 0 ){

        apex.debug.info( "Report summary new text:", l_reportSummaryItem$.text() );

      }

    }

  }

}
