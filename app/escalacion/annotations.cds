using SICOService as service from '../../srv/services';
annotate service.Escalacion with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>IdEscalacin}',
            },
            {
                $Type : 'UI.DataField',
                Value : incidente_ID,
                Label : '{i18n>IdIncidente}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Fecha}',
                Value : fecha,
            },
            {
                $Type : 'UI.DataField',
                Value : escaladoPor.nombre,
                Label : '{i18n>NombreEscaladoPor}',
            },
            {
                $Type : 'UI.DataField',
                Value : escaladoPara.nombre,
                Label : '{i18n>NombreEscaladoPara}',
            },
            {
                $Type : 'UI.DataField',
                Value : responsable.nombre,
                Label : '{i18n>NombreResponsable}',
            },
            {
                $Type : 'UI.DataField',
                Value : estado.nombre,
                Label : '{i18n>Estado}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Comentarios}scalacion',
                Value : comentarios,
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
            Label : 'fecha',
            Value : fecha,
        },
        {
            $Type : 'UI.DataField',
            Label : 'estado_code',
            Value : estado_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'comentarios',
            Value : comentarios,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : incidente_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : escaladoPor.nombre,
            Label : '{i18n>NombreEscaladoPor}',
        },
        {
            $Type : 'UI.DataField',
            Value : escaladoPara.nombre,
            Label : '{i18n>NombeEscaladoPara}',
        },
        {
            $Type : 'UI.DataField',
            Value : responsable.nombre,
            Label : '{i18n>NombreResponsable}',
        },
        {
            $Type : 'UI.DataField',
            Value : estado.name,
            Label : '{i18n>Estado}',
        },
    ],
    UI.SelectionFields : [
        ID,
        incidente_ID,
        fecha,
    ],

    UI.HeaderInfo : {
        TypeName : 'Escalación',
        TypeNamePlural : 'Escalaciones',
    },
);

annotate service.Escalacion with {
    incidente @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Incidente',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : incidente_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'estado_code',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'descripcion',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'fechaInicio',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'fechaFin',
                },
            ],
        },
        Common.Label : 'incidente_ID',
    )
};

annotate service.Escalacion with {
    escaladoPor @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contacto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : escaladoPor_ID,
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

annotate service.Escalacion with {
    escaladoPara @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contacto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : escaladoPara_ID,
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

annotate service.Escalacion with {
    ID @Common.Label : 'ID'
};

annotate service.Escalacion with {
    fecha @Common.Label : 'fecha'
};

