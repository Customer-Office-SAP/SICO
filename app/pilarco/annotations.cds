using SICOService as service from '../../srv/services';
annotate service.PilarCO with {
    implementadorTercero @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Partner',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : implementadorTercero_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombrePartner',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'escalacionAnterior',
            },
        ],
    }
};

annotate service.PilarCO with {
    implementadorSAP @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SAP',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : implementadorSAP_ID,
                ValueListProperty : 'ID',
            },
        ],
    }
};

annotate service.PilarCO with {
    antecedente @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Antecedente',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : antecedente_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descripcion',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'duracion',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'estado',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'observaciones',
            },
        ],
    }
};

annotate service.PilarCO with {
    serviciosEscenciales @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Servicios',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : serviciosEscenciales_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'nombre',
            },
        ],
    }
};

annotate service.PilarCO with {
    nombre @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PilarCO',
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

annotate service.PilarCO with {
    estado @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'PilarCO',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : estado,
                    ValueListProperty : 'estado',
                },
            ],
            Label : 'Estado',
        },
        Common.ValueListWithFixedValues : true,
        )};

