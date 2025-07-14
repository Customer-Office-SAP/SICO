sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'reportesemanal/test/integration/FirstJourney',
		'reportesemanal/test/integration/pages/ReporteSemanalList',
		'reportesemanal/test/integration/pages/ReporteSemanalObjectPage'
    ],
    function(JourneyRunner, opaJourney, ReporteSemanalList, ReporteSemanalObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('reportesemanal') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheReporteSemanalList: ReporteSemanalList,
					onTheReporteSemanalObjectPage: ReporteSemanalObjectPage
                }
            },
            opaJourney.run
        );
    }
);