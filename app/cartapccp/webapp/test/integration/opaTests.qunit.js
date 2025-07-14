sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cartapccp/test/integration/FirstJourney',
		'cartapccp/test/integration/pages/CartaPCCPList',
		'cartapccp/test/integration/pages/CartaPCCPObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartaPCCPList, CartaPCCPObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cartapccp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartaPCCPList: CartaPCCPList,
					onTheCartaPCCPObjectPage: CartaPCCPObjectPage
                }
            },
            opaJourney.run
        );
    }
);