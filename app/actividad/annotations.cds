using SICOService as service from '../../srv/services';
using from '../../db/schema';

annotate service.Actividad with @(
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
                Label : 'flag_code',
                Value : flag_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'tipoActividad_code',
                Value : tipoActividad_code,
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
                Label : 'dueDate',
                Value : dueDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descripcion',
                Value : descripcion,
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
        flag.nombre,
        fechaInicio,
        dueDate,
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : flag.nombre,
        },
        {
            $Type : 'UI.DataField',
            Value : nombre,
        },
        {
            $Type : 'UI.DataField',
            Value : tipoActividad.nombre,
            Label : '{i18n>TipoActividad}',
        },
        {
            $Type : 'UI.DataField',
            Value : fechaInicio,
        },
        {
            $Type : 'UI.DataField',
            Value : fechaFin,
        },
        {
            $Type : 'UI.DataField',
            Value : dueDate,
        },
        {
            $Type : 'UI.DataField',
            Value : descripcion,
            Label : '{i18n>DescripcinActividad}',
        },
        {
            $Type : 'UI.DataField',
            Value : listaAcciones.ID,
            Label : '{i18n>IdAccin}',
        },
        {
            $Type : 'UI.DataField',
            Value : listaAcciones.descripcion,
            Label : '{i18n>DescripcinAccin}',
        },
        {
            $Type : 'UI.DataField',
            Value : tipoActividad_code,
            Label : 'tipoActividad_code',
        },
    ],
);

annotate service.Actividad with {
    ID @Common.Label : '{i18n>IdActividad}'
};

annotate service.Actividad with {
    nombre @Common.Label : '{i18n>Actividad}'
};

annotate service.Flag with {
    nombre @Common.Label : '{i18n>Flag}'
};

annotate service.Actividad with {
    dueDate @Common.Label : '{i18n>DueDate}'
};

annotate service.Actividad with {
    fechaInicio @Common.Label : '{i18n>FechaInicio1}'
};

annotate service.Actividad with {
    fechaFin @Common.Label : '{i18n>FechaFin1}'
};

annotate service.Actividad with {
    descripcion @Common.Label : '{i18n>Descripcin}'
};

annotate service.TipoActividad with {
    name @Common.Label : 'Tipo Actividad'
};

