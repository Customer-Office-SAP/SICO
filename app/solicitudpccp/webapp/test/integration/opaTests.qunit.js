sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'solicitudpccp/test/integration/FirstJourney',
		'solicitudpccp/test/integration/pages/SolicitudPCCPList',
		'solicitudpccp/test/integration/pages/SolicitudPCCPObjectPage'
    ],
    function(JourneyRunner, opaJourney, SolicitudPCCPList, SolicitudPCCPObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('solicitudpccp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSolicitudPCCPList: SolicitudPCCPList,
					onTheSolicitudPCCPObjectPage: SolicitudPCCPObjectPage
                }
            },
            opaJourney.run
        );
    }
);