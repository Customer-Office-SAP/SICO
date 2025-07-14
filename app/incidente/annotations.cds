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
            },
            {
                $Type : 'UI.DataField',
                Value : evento_ID,
                Label : '{i18n>IdPilar}',
            },
            {
                $Type : 'UI.DataField',
                Value : evento.matrizRiesgos_ID,
                Label : '{i18n>IdMatrizRiesgos}',
            },
            {
                $Type : 'UI.DataField',
                Value : responsable.nombre,
                Label : '{i18n>NombreResponsable}',
            },
            {
                $Type : 'UI.DataField',
                Label : 'descripcion',
                Value : descripcion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fechaInicio',
                Value : fechaInicio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fechaFin',
                Value : fechaFin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fechaCorte',
                Value : fechaCorte,
            },
            {
                $Type : 'UI.DataField',
                Value : prioridad.nombre,
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
            Value : estado.nombre,
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
            Value : evento.matrizRiesgos_ID,
            Label : '{i18n>IdMatrizRiesgos}',
        },
        {
            $Type : 'UI.DataField',
            Value : responsable.nombre,
            Label : '{i18n>NombreResponsable}',
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
            Value : prioridad.nombre,
        },
    ],
    UI.SelectionFields : [
        estado.nombre,
        prioridad.nombre,
        fechaInicio,
    ],
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
    nombre @Common.Label : '{i18n>Estado}'
};

annotate service.Prioridad with {
    nombre @Common.Label : '{i18n>Prioridad}'
};

annotate service.Incidente with {
    fechaInicio @Common.Label : '{i18n>FechaInicio1}'
};

