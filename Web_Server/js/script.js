function translateIrReportNames( p_options ){

  var l_exists = p_options.length === 1

  // check that there is data
  if( l_exists ){

    var l_regionId        = p_options[0].region;
    var l_regionType      = p_options[0].type;

    // if region is IR
    if( l_regionType === "NATIVE_IR" ){

      l_regionId = "#" + l_regionId;

      // translated reports array
      var l_reportArr   = p_options[0].reports;
      // get IR reports select list options
      var l_options$ = $( l_regionId + "_saved_reports option" );

      // loop select list options to change report name
      l_options$.each( function(){

        // option
        var l_option$     = $(this);
        // report name
        var l_optionText  = l_option$.text();
        // report id
        var l_optionValue = l_option$.val();
        // is report currently selected one
        var l_isSelected  = l_option$.is( ":selected" )
        // extract prefix from old report name
        var l_textPrefix  = l_optionText.substring( 0, l_optionText.indexOf( ". " ) + 2 )
        var l_newText;
        var l_translatedText;

        // find translated report name
        $.grep( l_reportArr, function( report, i ){

          if( report.id == l_optionValue ){
            l_translatedText = report.name;
            l_newText = l_textPrefix + l_translatedText
            // change option text to translated report name
            l_option$.text( l_newText );
          }

        });

        apex.debug.info(
          l_regionType
          ,"option"
          ,"value:"
          ,l_optionValue
          ,"text:"
          ,l_optionText
          ,"is selected"
          ,l_isSelected
          ,"translated to:"
          ,l_newText
        );

        // if option is selected then replace report name to other places also in IR region
        if( l_isSelected && l_translatedText ){

          // get alternative default controll label
          var l_control$ = $( l_regionId + "_control_text_adefault" );
          var l_exists = l_control$.length === 1;

          apex.debug.info(
            l_regionType
            ,"report"
            ,l_optionValue
            ,"is alternative default:"
            ,l_exists
          );

          // if alternative default controll label
          if( l_exists ){

            // change alternative default controll label to translated name
            l_control$.text( l_control$.text().replace( l_optionText, l_translatedText ) );

          } else {

            // alternative default controll label not found
            // then it should be user saved public report
            l_control$ = $( l_regionId + "_control_text_report" );
            l_exists = l_control$.length === 1;

            apex.debug.info(
              l_regionType
              ,"report"
              ,l_optionValue
              ,"is user saved public report:"
              ,l_exists
            );

            if( l_exists ){
              l_control$.text( l_control$.text().replace( l_optionText, l_translatedText ) );
            }

          }

          // find visually hidden report summary element
          var l_reportSummaryItem$ = $( l_regionId + "_control_panel_summary" ).find(
            "li.a-IRR-reportSummary-item--savedReport span.a-IRR-reportSummary-value"
          );

          // change hidden report summary element text
          l_reportSummaryItem$.text( l_translatedText );

        }

      });

    // if region is IG
    } else if( l_regionType === "NATIVE_IG" ){

      var l_ajaxIdentifier  = p_options[0].ajax_identifier;

      // set report names
      translateIgReportNames( p_options );

      // get IG region
      var Ig$ = $( "#" + l_regionId  );

      // register event listener to IG region
      Ig$.on( "interactivegridviewchange interactivegridreportsettingschange", function(event, ui) {

        // debug event that is fired
        apex.debug.info( l_regionType, "event:", event );

        // Ajax call to fetch report translations
        var l_result = apex.server.plugin( l_ajaxIdentifier, {
            // pass region id to process
            x01: l_regionId
          },{
            success: function( data ){

              apex.debug.info( l_regionType, "ajax response:", data );
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

    var l_regionId    = "#" + p_options[0].region;
    var l_regionType  = p_options[0].type;
    var l_reportArr   = p_options[0].reports;
    // get IG reports select list options
    var l_options$    = $( l_regionId + "_ig_toolbar select option" );

    // loop select list options to change report name
    l_options$.each( function(){

      // option
      var l_option$     = $(this);
      // report name
      var l_optionText  = l_option$.text();
      // report id
      var l_optionValue = l_option$.val();
      var l_isSelected  = l_option$.is( ":selected" )
      var l_newText;

      // find translated report name
      $.grep( l_reportArr, function( report, i ){

        if( report.id == l_optionValue ){
          l_newText = report.name;
          // change option text to translated report name
          l_option$.text( l_newText );
        }

      });

      apex.debug.info(
        l_regionType
        ,"option"
        ,"value:"
        ,l_optionValue
        ,"text:"
        ,l_optionText
        ,"is selected"
        ,l_isSelected
        ,"translated to:"
        ,l_newText
      );

      // if option is selected then replace report name to other places also in IG region
      if( l_isSelected && l_newText ){

        var l_reportSummaryItem$ = $( l_regionId + "_ig_summary" );
        var l_reportSummaryText = l_reportSummaryItem$.text();

        l_reportSummaryItem$.text( l_reportSummaryText.replace( l_optionText, l_newText ) );

      }

    });

  }

}
