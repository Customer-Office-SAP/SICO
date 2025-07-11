using SICOService as service from '../../srv/services';
using from '../../db/schema';

annotate service.Contacto with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Nombre}',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email1}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Compania1}',
                Value : compania,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Rol}',
                Value : rol,
            },
            {
                $Type : 'UI.DataField',
                Value : relacion.nombre,
                Label : '{i18n>Relacion}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Overview}',
            ID : 'i18nOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'GeneratedFacet1',
                    Label : '{i18n>GeneralInformation}',
                    Target : '@UI.FieldGroup#GeneratedGroup',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Detalles}',
                    ID : 'i18nDetalles',
                    Target : '@UI.FieldGroup#i18nDetalles',
                },
            ],
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Nombre}',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email1}',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Compania1}',
            Value : compania,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Rol}',
            Value : rol,
        },
        {
            $Type : 'UI.DataField',
            Value : relacion.nombre,
            Label : '{i18n>Relacion}',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
        TypeImageUrl : 'sap-icon://alert',
    },
    UI.FieldGroup #i18nDetalles : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
        ],
    },
);

annotate service.Contacto with {
    nombre @(
        Common.Label : '{i18n>Nombre}',
        )};

annotate service.Contacto with {
    rol @(
        Common.Label : '{i18n>Rol}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Contacto',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : rol,
                    ValueListProperty : 'rol',
                },
            ],
            Label : '{i18n>Rol}',
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.Relacion with {
    nombre @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Relacion',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : nombre,
                    ValueListProperty : 'nombre',
                },
            ],
            Label : '{i18n>NombreRelacion}',
        },
        Common.ValueListWithFixedValues : true,
)};

