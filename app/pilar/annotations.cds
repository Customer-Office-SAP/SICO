using SICOService as service from '../../srv/services';
annotate service.PilarCO with {
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

annotate service.PilarCO with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : nombre,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : cliente.ID,
        },
        TypeImageUrl : 'sap-icon://alert',
    }
);

