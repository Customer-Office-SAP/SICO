sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'contacto/test/integration/FirstJourney',
		'contacto/test/integration/pages/ContactoList',
		'contacto/test/integration/pages/ContactoObjectPage'
    ],
    function(JourneyRunner, opaJourney, ContactoList, ContactoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('contacto') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheContactoList: ContactoList,
					onTheContactoObjectPage: ContactoObjectPage
                }
            },
            opaJourney.run
        );
    }
);