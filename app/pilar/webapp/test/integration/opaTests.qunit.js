sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pilar/test/integration/FirstJourney',
		'pilar/test/integration/pages/PilarCOList',
		'pilar/test/integration/pages/PilarCOObjectPage',
		'pilar/test/integration/pages/ContactoObjectPage'
    ],
    function(JourneyRunner, opaJourney, PilarCOList, PilarCOObjectPage, ContactoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pilar') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePilarCOList: PilarCOList,
					onThePilarCOObjectPage: PilarCOObjectPage,
					onTheContactoObjectPage: ContactoObjectPage
                }
            },
            opaJourney.run
        );
    }
);