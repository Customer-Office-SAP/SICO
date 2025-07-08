using sap.capire.sico as service from '../../srv/services';
annotate service.PilarCO with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'tipoIntervencion',
                Value : tipoIntervencion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'nombre',
                Value : nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'tipoPilar_code',
                Value : tipoPilar_code,
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
                Label : 'estado',
                Value : estado,
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
            Label : 'tipoIntervencion',
            Value : tipoIntervencion,
        },
        {
            $Type : 'UI.DataField',
            Label : 'nombre',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'tipoPilar_code',
            Value : tipoPilar_code,
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
    ],
    UI.SelectionFields : [
        nombre,
        cliente_ID,
        estado,
    ],
);

annotate service.PilarCO with {
    producto @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Producto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : producto_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombreProducto',
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
                ValueListProperty : 'tipoRiesgo',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descripcion',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'probabilidad',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'frecuencia',
            },
        ],
    }
};

annotate service.PilarCO with {
    nombre @Common.Label : 'nombre'
};

annotate service.PilarCO with {
    cliente @Common.Label : 'cliente_ID'
};

annotate service.PilarCO with {
    estado @Common.Label : 'estado'
};

