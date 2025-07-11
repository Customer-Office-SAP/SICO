sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'reportesemanal/test/integration/FirstJourney',
		'reportesemanal/test/integration/pages/ReporteSemanalMain'
    ],
    function(JourneyRunner, opaJourney, ReporteSemanalMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('reportesemanal') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheReporteSemanalMain: ReporteSemanalMain
                }
            },
            opaJourney.run
        );
    }
);