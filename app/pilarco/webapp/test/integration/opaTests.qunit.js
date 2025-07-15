sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pilarco/test/integration/FirstJourney',
		'pilarco/test/integration/pages/PilarCOList',
		'pilarco/test/integration/pages/PilarCOObjectPage'
    ],
    function(JourneyRunner, opaJourney, PilarCOList, PilarCOObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pilarco') + '/index.html'
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