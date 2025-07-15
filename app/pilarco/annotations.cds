using SICOService as service from '../../srv/services';
annotate service.PilarCO with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : nombre,
                Label : '{i18n>NombrePilar}',
            },
            {
                $Type : 'UI.DataField',
                Value : tipoIntervencion.name,
                Label : '{i18n>TipoIntervencin}',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente.nombre,
                Label : '{i18n>Cliente}',
            },
            {
                $Type : 'UI.DataField',
                Value : implementadorTercero.nombre,
                Label : '{i18n>ImplementadorTercero}',
            },
            {
                $Type : 'UI.DataField',
                Value : implementadorSAP.nombre,
                Label : '{i18n>ImplementadorSap}',
            },
            {
                $Type : 'UI.DataField',
                Value : producto.nombre,
                Label : '{i18n>Producto}',
            },
            {
                $Type : 'UI.DataField',
                Value : tipoPilar.nombre,
                Label : '{i18n>TipoPilar}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FechaInicio1}',
                Value : fechaInicio,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FechaFin1}',
                Value : fechaFin,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FechaGolivePlaneada}',
                Value : fechaGoLivePlaneada,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FechaGoliveReal}',
                Value : fechaGoLiveReal,
            },
            {
                $Type : 'UI.DataField',
                Value : estado.nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Qgate}',
                Value : qGate,
            },
            {
                $Type : 'UI.DataField',
                Value : antecedente_ID,
                Label : '{i18n>IdAntecendente}',
            },
            {
                $Type : 'UI.DataField',
                Value : serviciosEscenciales.nombre,
                Label : '{i18n>ServiciosEscenciales}',
            },
            {
                $Type : 'UI.DataField',
                Value : matrizRiesgos_ID,
                Label : '{i18n>IdMatrizRiesgo}',
            },
            {
                $Type : 'UI.DataField',
                Value : equipoGeneral.nombre,
                Label : '{i18n>EquipoGeneral}',
            },
            {
                $Type : 'UI.DataField',
                Value : equipoCliente.nombre,
                Label : '{i18n>EquipoCliente}',
            },
            {
                $Type : 'UI.DataField',
                Value : equipoPartner.nombre,
                Label : '{i18n>EquipoPartner}',
            },
            {
                $Type : 'UI.DataField',
                Value : equipoSAP.nombre,
                Label : '{i18n>EquipoSap}',
            },
            {
                $Type : 'UI.DataField',
                Value : equipoSoporte.nombre,
                Label : '{i18n>EquipoSoporte}',
            },
            {
                $Type : 'UI.DataField',
                Value : reporteSemanal_ID,
                Label : '{i18n>IdReporteSemanal}',
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
    ],
    UI.SelectionFields : [
        ID,
        nombre,
        tipoPilar_code,
        producto_code,
        cliente_ID,
        fechaInicio,
        fechaGoLiveReal,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : nombre,
            Label : '{i18n>NombrePilar}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaInicio,
            Label : '{i18n>FechaInicio1}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaFin,
            Label : '{i18n>FechaFin1}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaGoLivePlaneada,
            Label : '{i18n>GolivePlaneado}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaGoLiveReal,
            Label : '{i18n>GoliveReal}',
        },
        {
            $Type : 'UI.DataField',
            Value : qGate,
            Label : '{i18n>Qgate}',
        },
        {
            $Type : 'UI.DataField',
            Value : serviciosEscenciales_code,
            Label : '{i18n>ServicioEscencial}',
        },
        {
            $Type : 'UI.DataField',
            Value : matrizRiesgos_ID,
            Label : '{i18n>IdMatrizRiesgos}',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : tipoIntervencion.nombre,
            Label : '{i18n>TipoIntervencin}',
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.nombre,
        Label : '{i18n>Cliente}',
        },
        {
            $Type : 'UI.DataField',
            Value : implementadorTercero.nombre,
            Label : '{i18n>ImplementadorTercero}',
        },
        {
            $Type : 'UI.DataField',
            Value : implementadorSAP.nombre,
            Label : '{i18n>ImplementadorSap}',
        },
        {
            $Type : 'UI.DataField',
            Value : fase_ID,
            Label : '{i18n>IdFase}',
        },
        {
            $Type : 'UI.DataField',
            Value : estado.nombre,
        },
        {
            $Type : 'UI.DataField',
            Value : antecedente_ID,
            Label : 'ID Antecedente',
        },
        {
            $Type : 'UI.DataField',
            Value : fase.fase.nombre,
            Label : '{i18n>Fase}',
        },
    ],
);

annotate service.PilarCO with {
    cliente @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Contacto',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : cliente_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'email',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'compania',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'rol',
                },
            ],
        },
        Common.Label : 'ID Cliente',
    )
};

annotate service.PilarCO with {
    implementadorTercero @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contacto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : implementadorTercero_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombre',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'compania',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'rol',
            },
        ],
    }
};

annotate service.PilarCO with {
    implementadorSAP @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contacto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : implementadorSAP_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombre',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'compania',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'rol',
            },
        ],
    }
};

annotate service.PilarCO with {
    fase @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarFase',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : fase_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'fase_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombre',
            },
        ],
    }
};

annotate service.PilarCO with {
    antecedente @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Antecedente',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : antecedente_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descripcion',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'duracion',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'estado_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'observaciones',
            },
        ],
    }
};

annotate service.PilarCO with {
    matrizRiesgos @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'MatrizRiesgos',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : matrizRiesgos_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'tipoRiesgo_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descripcion',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'probabilidad_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'frecuencia_code',
            },
        ],
    }
};

annotate service.PilarCO with {
    reporteSemanal @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'vista_reporte_semanal',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : reporteSemanal_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'fecha',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'fechaGoLiveActual',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'salidaProductivo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descripcionFase',
            },
        ],
    }
};

annotate service.PilarCO with {
    tipoPilar @Common.Label : 'Tipo Pilar'
};

annotate service.PilarCO with {
    estado @Common.Label : 'Estado'
};

annotate service.PilarCO with {
    producto @Common.Label : 'Producto'
};

annotate service.PilarCO with {
    fechaInicio @Common.Label : 'Fecha Inicio'
};

annotate service.PilarCO with {
    fechaGoLiveReal @Common.Label : 'Fecha GoLive Real'
};

annotate service.PilarCO with {
    ID @Common.Label : '{i18n>IdPilar}'
};
