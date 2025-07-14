using SICOService as service from '../../srv/services';
annotate service.SolicitudPCCP with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Link}',
                Value : link,
            },
            {
                $Type : 'UI.DataField',
                Value : pilar.ID,
                Label : '{i18n>IdPilar}',
            },
            {
                $Type : 'UI.DataField',
                Value : partner.ID,
                Label : '{i18n>IdPartner}',
            },
            {
                $Type : 'UI.DataField',
                Value : partner.nombrePartner,
                Label : '{i18n>NombrePartner}',
            },
            {
                $Type : 'UI.DataField',
                Value : partner.localizacion_ID,
                Label : '{i18n>IdLocalizacionPartner1}',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente.ID,
                Label : '{i18n>IdCliente}',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente.contactos.nombre,
                Label : '{i18n>NombreCliente1}',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente.localizacion_ID,
                Label : '{i18n>IdLocalizacionCliente}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>IdSolucionesSapScope}',
                Value : solucionesSAPenScope_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>InformacinBsica}',
            ID : 'InformacinBsica',
            Target : '@UI.FieldGroup#InformacinBsica',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>InformacinMnimaObligatoria}',
            ID : 'InformacinMnimaObligatoria',
            Target : '@UI.FieldGroup#InformacinMnimaObligatoria',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>InformacinAdicional}',
            ID : 'i18nInformacinAdicional',
            Target : '@UI.FieldGroup#i18nInformacinAdicional',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Milestones',
            ID : 'Milestones',
            Target : '@UI.FieldGroup#Milestones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Link Solicitud',
            Value : link,
        },
        {
            $Type : 'UI.DataField',
            Value : partner.nombrePartner,
            Label : '{i18n>NombrePartner}',
        },
        {
            $Type : 'UI.DataField',
            Value : pilar_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.contactos.nombre,
            Label : '{i18n>NombreCliente1}',
        },
        {
            $Type : 'UI.DataField',
            Value : informacionBasica.ID,
            Label : '{i18n>IdInformacinBsica}',
        },
        {
            $Type : 'UI.DataField',
            Value : informacionMinimaObligatoria_ID,
            Label : '{i18n>IdInformacinMnimaObligatoria}',
        },
        {
            $Type : 'UI.DataField',
            Value : informacionAdicional.ID,
            Label : '{i18n>IdInformacinAdicional}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>IdSolucionesSapScope}',
            Value : solucionesSAPenScope_code,
        },
        {
            $Type : 'UI.DataField',
            Value : solucionesSAPenScope.nombre,
            Label : '{i18n>SolucionesSapScope}',
        },
        {
            $Type : 'UI.DataField',
            Value : milestones.ID,
            Label : '{i18n>IdMilestones}',
        },
    ],
    UI.SelectionFields : [
        ID,
        cliente_ID,
        pilar_ID,
    ],
    UI.FieldGroup #InformacinBsica : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : informacionBasica_ID,
                Label : '{i18n>IdInformacinBsica}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r1,
                Label : 'r1',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r2,
                Label : 'r2',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r3,
                Label : 'r3',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r4,
                Label : 'r4',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r5,
                Label : 'r5',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r6,
                Label : 'r6',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.r7,
                Label : 'r7',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.ACV,
                Label : 'ACV',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionBasica.TCV,
                Label : 'TCV',
            },
        ],
    },
    UI.FieldGroup #InformacinMnimaObligatoria : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria_ID,
                Label : '{i18n>IdInformacinMnimaObligatoria}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria.soporteOfrecidoPor.nombre,
                Label : '{i18n>NombreSoporteOfrecidoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria.soporteOfrecidoPor.email,
                Label : '{i18n>EmailSoporteOfrecidoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria.soporteOfrecidoPor.rol,
                Label : '{i18n>RolSoporteOfrecidoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria.soporteOfrecidoPor.compania,
                Label : '{i18n>CompaaSoporteOfrecidoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria.tipoSoporte,
                Label : '{i18n>TipoSoporte}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionMinimaObligatoria.consultoriaSAP,
                Label : '{i18n>ConsultoraSap}',
            },
        ],
    },
    UI.FieldGroup #i18nInformacinAdicional : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : informacionAdicional_ID,
                Label : '{i18n>IdInformacinAdicional}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionAdicional.metodologia,
                Label : '{i18n>Metodologa}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionAdicional.enfoqueSAPS4HANA,
                Label : '{i18n>EnfoqueSapS4hana}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionAdicional.infraestAdoptada,
                Label : '{i18n>InfraestructuraAdoptada}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionAdicional.estrategiaProyecto,
                Label : '{i18n>EstrategiaProyecto}',
            },
            {
                $Type : 'UI.DataField',
                Value : informacionAdicional.tipoContrato,
                Label : '{i18n>TipoContrato}',
            },
        ],
    },
    UI.FieldGroup #Milestones : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : milestones_ID,
                Label : '{i18n>IdMilestones}',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.kickOff,
                Label : '{i18n>KickOff}',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.incioPlaneamiento,
                Label : '{i18n>InicioPlaneamiento}',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.inicioDiseno,
                Label : '{i18n>InicioDiseo}',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.inicioRealizacion,
                Label : '{i18n>InicioRealizacin}',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.inicioCutOver,
                Label : 'inicioCutOver',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.inicioTestIntegrados,
                Label : 'inicioTestIntegrados',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.inicioEntrenamiento,
                Label : 'inicioEntrenamiento',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.goLive,
                Label : 'goLive',
            },
            {
                $Type : 'UI.DataField',
                Value : milestones.infoDetallada,
                Label : 'infoDetallada',
            },
        ],
    },
);

annotate service.SolicitudPCCP with {
    partner @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Partner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : partner_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombrePartner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'escalacionAnterior',
            },
        ],
    }
};

annotate service.SolicitudPCCP with {
    pilar @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PilarCO',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : pilar_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'tipoIntervencion_code',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'producto_code',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'tipoPilar_code',
                },
            ],
        },
        Common.Label : '{i18n>IdPilar}',
    )
};

annotate service.SolicitudPCCP with {
    cliente @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cliente',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : cliente_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.Label : '{i18n>IdCliente}',
    )
};

annotate service.SolicitudPCCP with {
    informacionBasica @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'InformacionBasica',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : informacionBasica_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'r1',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'r2',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'r3',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'r4',
            },
        ],
    }
};

annotate service.SolicitudPCCP with {
    informacionMinimaObligatoria @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'InformacionMinimaObligatoria',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : informacionMinimaObligatoria_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'tipoSoporte',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'consultoriaSAP',
            },
        ],
    }
};

annotate service.SolicitudPCCP with {
    informacionAdicional @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'InformacionAdicional',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : informacionAdicional_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'metodologia',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'enfoqueSAPS4HANA',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'infraestAdoptada',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'estrategiaProyecto',
            },
        ],
    }
};

annotate service.SolicitudPCCP with {
    milestones @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Milestones',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : milestones_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'kickOff',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'incioPlaneamiento',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'inicioDiseno',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'inicioRealizacion',
            },
        ],
    }
};

annotate service.SolicitudPCCP with {
    ID @Common.Label : '{i18n>IdSolicitud}'
};

