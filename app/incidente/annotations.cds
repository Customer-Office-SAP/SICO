using SICOService as service from '../../srv/services';
using from '../../db/schema';

annotate service.Incidente with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>IdIncidente}',
            },
            {
                $Type : 'UI.DataField',
                Value : estado.nombre,
                Criticality : evento.matrizRiesgos.impactoCuantitativoDias,
            },
            {
                $Type : 'UI.DataField',
                Value : evento_ID,
                Label : '{i18n>IdPilar}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Descripcin}',
                Value : descripcion,
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
                Label : '{i18n>FechaCorte}',
                Value : fechaCorte,
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@UI.ConnectedFields#connected',
                Label : 'Prioridad',
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
            Value : ID,
            Label : '{i18n>IdIncidente}',
        },
        {
            $Type : 'UI.DataField',
            Value : evento_ID,
            Label : 'ID Pilar',
        },
        {
            $Type : 'UI.DataField',
            Value : evento.nombre,
            Label : '{i18n>NombrePilar}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Descripcin}',
            Value : descripcion,
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
            Label : '{i18n>FechaCorte}',
            Value : fechaCorte,
        },
        {
            $Type : 'UI.DataField',
            Value : estado_code,
            Label : '{i18n>Estado}',
        },
        {
            $Type : 'UI.DataField',
            Value : prioridad_code,
            Label : 'Prioridad',
        },
    ],
    UI.SelectionFields : [
        estado.nombre,
        prioridad.nombre,
        fechaInicio,
    ],
    UI.ConnectedFields #connected : {
        $Type : 'UI.ConnectedFieldsType',
        Template : '{prioridad_code} {prioridad_nombre}',
        Data : {
            $Type : 'Core.Dictionary',
            prioridad_code : {
                $Type : 'UI.DataField',
                Value : prioridad_code,
            },
            prioridad_nombre : {
                $Type : 'UI.DataField',
                Value : prioridad.nombre,
            },
        },
    },
);

annotate service.Incidente with {
    evento @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarCO',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : evento_ID,
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

annotate service.Estado with {
    nombre @(
        Common.Label : '{i18n>Estado}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Incidente',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : nombre,
                    ValueListProperty : 'estado_code',
                },
            ],
            Label : 'Estado',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Prioridad with {
    nombre @(
        Common.Label : '{i18n>Prioridad}',
        Common.Text : name,
    )
};

annotate service.Incidente with {
    fechaInicio @Common.Label : '{i18n>FechaInicio1}'
};

