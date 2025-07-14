sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'escalacion/test/integration/FirstJourney',
		'escalacion/test/integration/pages/EscalacionList',
		'escalacion/test/integration/pages/EscalacionObjectPage'
    ],
    function(JourneyRunner, opaJourney, EscalacionList, EscalacionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('escalacion') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEscalacionList: EscalacionList,
					onTheEscalacionObjectPage: EscalacionObjectPage
                }
            },
            opaJourney.run
        );
    }
);