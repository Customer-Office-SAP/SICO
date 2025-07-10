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
                Label : 'relacion',
                Value : relacion,
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
            Label : 'relacion',
            Value : relacion,
        },
    ],
);

annotate service.Contacto with {
    cliente @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Cliente',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : cliente_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'calificacion',
            },
        ],
    }
};

annotate service.Contacto with {
    SAP @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SAP',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : SAP_ID,
                ValueListProperty : 'ID',
            },
        ],
    }
};

