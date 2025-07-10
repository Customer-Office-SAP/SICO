sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/ProductoList',
		'project1/test/integration/pages/ProductoObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductoList, ProductoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductoList: ProductoList,
					onTheProductoObjectPage: ProductoObjectPage
                }
            },
            opaJourney.run
        );
    }
);