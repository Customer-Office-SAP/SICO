using SICOService as service from '../../srv/services';
using from '../../db/schema';

annotate service.ReporteSemanal with @(
    UI.SelectionFields #filterBarMacro : [
        cliente.nombre,
        fase.nombre,
        pilar_ID,
    ]
);

annotate service.PilarCO with {
    nombre @(
        Common.Label : '{i18n>Cliente}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PilarFase',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : nombre,
                    ValueListProperty : 'nombre',
                },
            ],
            Label : '{i18n>Fase}',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ReporteSemanal with {
    pilar @Common.Label : '{i18n>Pilar}'
};

annotate service.PilarFase with {
    nombre @Common.Text : fase_code
};

annotate service.MatrizRiesgos with @(
    UI.LineItem #tableMacro : [
        {
            $Type : 'UI.DataField',
            Value : descripcion,
            Label : '{i18n>Descripcion}',
        },
        {
            $Type : 'UI.DataField',
            Value : dueDate,
            Label : '{i18n>Duedate}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaFin,
            Label : '{i18n>FechaFin}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaInicio,
            Label : '{i18n>FechaInicio}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaSeguimientoPCC,
            Label : '{i18n>FechaSeguimientoPcc}',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : impactoCualitativo,
            Label : '{i18n>ImpactoCualitativo}',
        },
        {
            $Type : 'UI.DataField',
            Value : impactoCuantitativoDias,
            Label : '{i18n>ImpactoCuantitativoDias}',
        },
        {
            $Type : 'UI.DataField',
            Value : impactoCuantitativoDolares,
            Label : '{i18n>ImpactoCuantitativoDolares}',
        },
        {
            $Type : 'UI.DataField',
            Value : impactoCuantitativoEsfuerzo,
            Label : '{i18n>ImpactoCuantitativoEsfuerzo}',
        },
        {
            $Type : 'UI.DataField',
            Value : issue,
            Label : '{i18n>Issue}',
        },
        {
            $Type : 'UI.DataField',
            Value : estadoRiesgo.nombre,
            Label : '{i18n>EstadoRiesgo}',
        },
        {
            $Type : 'UI.DataField',
            Value : frecuencia.nombre,
            Label : '{i18n>Frecuencia}',
        },
        {
            $Type : 'UI.DataField',
            Value : tipoRiesgo.nombre,
            Label : '{i18n>TipoRiesgo}',
        },
        {
            $Type : 'UI.DataField',
            Value : probabilidad.nombre,
            Label : '{i18n>Probabilidad}',
        },
    ]
);

annotate service.Estado with {
    nombre @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'MatrizRiesgos',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : nombre,
                    ValueListProperty : 'estadoRiesgo_code',
                },
            ],
            Label : '{i18n>EstadoRiesgo}',
        },
        Common.ValueListWithFixedValues : true,
)};

