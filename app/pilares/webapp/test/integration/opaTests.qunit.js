sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/pilares/test/integration/FirstJourney',
		'ns/pilares/test/integration/pages/PilarCOList',
		'ns/pilares/test/integration/pages/PilarCOObjectPage'
    ],
    function(JourneyRunner, opaJourney, PilarCOList, PilarCOObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/pilares') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePilarCOList: PilarCOList,
					onThePilarCOObjectPage: PilarCOObjectPage
                }
            },
            opaJourney.run
        );
    }
);