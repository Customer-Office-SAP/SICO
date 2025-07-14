using SICOService as service from '../../srv/services';
annotate service.ReporteSemanal with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : matrizRiesgos_ID,
                Label : '{i18n>IdMatrizDeRiesgos}',
            },
            {
                $Type : 'UI.DataField',
                Value : pilar_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : fase_ID,
                Label : '{i18n>IdFase}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DescripcionFase}',
                Value : descripcionFase,
            },
            {
                $Type : 'UI.DataField',
                Value : estado_ID,
                Label : '{i18n>IdEstado}',
            },
            {
                $Type : 'UI.DataField',
                Value : pilar.nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FechaGoliveActual}',
                Value : fechaGoLiveActual,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>SalidaProductivo}',
                Value : salidaProductivo,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Fecha}',
                Value : fecha,
            },
            {
                $Type : 'UI.DataField',
                Value : cliente_ID,
                Label : 'ID Cliente',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ComentariosImplementador}',
                Value : comentariosImplementador,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Resumen}',
                Value : resumen,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>EstadoTpicosRelevantes}',
                Value : estadoTopicosRelevantes,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>GestinRecursos}',
                Value : gestionRecursos,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>AspectosClaveActivate}',
                Value : aspectosClaveActivate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ConsideracionesRelevantes}',
                Value : consideracionesRelevantes,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>IncidenciasRelevantes}',
                Value : incidenciasRelevantes,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Recomendaciones}',
                Value : recomendaciones,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OtrosTemasRelacionados}',
                Value : otrosTemasRelacionados,
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
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : matrizRiesgos_ID,
            Label : '{i18n>IdMatrizDeRiesgos}',
        },
        {
            $Type : 'UI.DataField',
            Value : pilar_ID,
            Label : '{i18n>IdPilar}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>DescripcinFase}',
            Value : descripcionFase,
        },
        {
            $Type : 'UI.DataField',
            Value : estado_ID,
            Label : '{i18n>IdEstado}',
        },
        {
            $Type : 'UI.DataField',
            Value : cliente_ID,
            Label : '{i18n>IdCliente}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Fecha}',
            Value : fecha,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FechaGoliveActual}',
            Value : fechaGoLiveActual,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>SalidaProductivo}',
            Value : salidaProductivo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ComentariosImplementador}',
            Value : comentariosImplementador,
        },
        {
            $Type : 'UI.DataField',
            Value : aspectosClaveActivate,
            Label : '{i18n>AspectosClaveActivate}',
        },
        {
            $Type : 'UI.DataField',
            Value : consideracionesRelevantes,
            Label : '{i18n>ConsideracionesRelevantes}',
        },
        {
            $Type : 'UI.DataField',
            Value : estadoTopicosRelevantes,
            Label : '{i18n>EstadoTpicosRelevantes}',
        },
        {
            $Type : 'UI.DataField',
            Value : gestionRecursos,
            Label : '{i18n>GestinRecursos}',
        },
        {
            $Type : 'UI.DataField',
            Value : incidenciasRelevantes,
            Label : '{i18n>InidenciasRelevantes}',
        },
        {
            $Type : 'UI.DataField',
            Value : otrosTemasRelacionados,
            Label : '{i18n>OtrosTemasRelacionados}',
        },
        {
            $Type : 'UI.DataField',
            Value : recomendaciones,
            Label : '{i18n>Recomendaciones}',
        },
        {
            $Type : 'UI.DataField',
            Value : resumen,
            Label : '{i18n>Resumen}',
        },
    ],
    UI.SelectionFields : [
        pilar_ID,
        pilar.nombre,
        fecha,
    ],
    UI.HeaderInfo : {
        TypeName : 'Reporte Semanal',
        TypeNamePlural : '',
    },
);

annotate service.ReporteSemanal with {
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

annotate service.ReporteSemanal with {
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

annotate service.ReporteSemanal with {
    fase @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarCO',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : fase_ID,
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
    }
};

annotate service.ReporteSemanal with {
    estado @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarCO',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : estado_ID,
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
    }
};

annotate service.ReporteSemanal with {
    nombre @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarCO',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : nombre_ID,
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
    }
};

annotate service.ReporteSemanal with {
    cliente @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarCO',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : cliente_ID,
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
    }
};

annotate service.PilarCO with {
    nombre @(
        Common.Label : '{i18n>Estado}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Estado',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : nombre,
                    ValueListProperty : 'name',
                },
            ],
            Label : 'Estado',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ReporteSemanal with {
    fecha @Common.Label : '{i18n>Fecha}'
};

