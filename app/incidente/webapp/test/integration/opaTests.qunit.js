sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'incidente/test/integration/FirstJourney',
		'incidente/test/integration/pages/IncidenteList',
		'incidente/test/integration/pages/IncidenteObjectPage'
    ],
    function(JourneyRunner, opaJourney, IncidenteList, IncidenteObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('incidente') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIncidenteList: IncidenteList,
					onTheIncidenteObjectPage: IncidenteObjectPage
                }
            },
            opaJourney.run
        );
    }
);