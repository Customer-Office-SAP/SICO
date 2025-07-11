using SICOService as service from '../../srv/services';
annotate service.Contacto with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'nombre',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'compania',
                Value : compania,
            },
            {
                $Type : 'UI.DataField',
                Label : 'rol',
                Value : rol,
            },
            {
                $Type : 'UI.DataField',
                Label : 'relacion_code',
                Value : relacion_code,
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
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Overview}',
            ID : 'i18nOverview',
            Facets : [
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'nombre',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'compania',
            Value : compania,
        },
        {
            $Type : 'UI.DataField',
            Label : 'rol',
            Value : rol,
        },
        {
            $Type : 'UI.DataField',
            Label : 'relacion_code',
            Value : relacion_code,
        },
        {
            $Type : 'UI.DataField',
            Value : relacion.nombre,
            Label : 'nombre',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.Contacto with {
    nombre @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Contacto',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : nombre,
                    ValueListProperty : 'nombre',
                },
            ],
            Label : 'Nombre',
        },
        Common.ValueListWithFixedValues : true,
)};

