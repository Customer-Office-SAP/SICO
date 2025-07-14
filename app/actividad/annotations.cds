using SICOService as service from '../../srv/services';
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
);

