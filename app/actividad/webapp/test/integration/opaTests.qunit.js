sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'actividad/test/integration/FirstJourney',
		'actividad/test/integration/pages/ActividadList',
		'actividad/test/integration/pages/ActividadObjectPage'
    ],
    function(JourneyRunner, opaJourney, ActividadList, ActividadObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('actividad') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheActividadList: ActividadList,
					onTheActividadObjectPage: ActividadObjectPage
                }
            },
            opaJourney.run
        );
    }
);