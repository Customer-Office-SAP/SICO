using SICOService as service from '../../srv/services';

annotate service.CartaPCCP with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID Carta',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Fecha}',
                Value : fecha,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Link}',
                Value : link,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Pas}',
                Value : pais,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FirmaDigital}',
                Value : firmaDigital,
            },
            {
                $Type : 'UI.DataField',
                Value : pilar_ID,
                Label : '{i18n>IdPilar}',
            },
            {
                $Type : 'UI.DataField',
                Value : partner_ID,
                Label : '{i18n>IdPartner}',
            },
            {
                $Type : 'UI.DataField',
                Value : partner.nombrePartner,
                Label : '{i18n>NombrePartner}',
            },
            {
                $Type : 'UI.DataField',
                Value : partner.localizacion_ID,
                Label : '{i18n>IdLocalizacionPartner1}',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente_ID,
                Label : 'ID Cliente',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente.contactos.nombre,
                Label : 'Nombre Cliente',
            },
            {
                $Type : 'UI.DataField',
                Value : cliente.localizacion_ID,
                Label : '{i18n>IdLocalizacionCliente}',
            },
            {
                $Type : 'UI.DataField',
                Value : representanteLegal_ID,
                Label : '{i18n>IdRepresentanteLegal}',
            },
            {
                $Type : 'UI.DataField',
                Value : representanteLegal.nombre,
                Label : '{i18n>NombreRepresentanteLegal}',
            },
            {
                $Type : 'UI.DataField',
                Value : representanteLegal.rol,
                Label : '{i18n>RolRepresentanteLegal}',
            },
            {
                $Type : 'UI.DataField',
                Value : representanteSAP_ID,
                Label : '{i18n>IdRepresentanteSap}',
            },
            {
                $Type : 'UI.DataField',
                Value : representanteSAP.nombre,
                Label : '{i18n>NombreRepresentanteSap}',
            },
            {
                $Type : 'UI.DataField',
                Value : representanteSAP.rol,
                Label : '{i18n>RolRepresentanteSap}',
            },
        ],
    },
    
    UI.DataPoint #TextoInstrucciones : {
        $Type : 'UI.DataPointType',
        Title : '🛈 Instrucciones',
        Value : 'Por favor diligencie todos los campos obligatorios antes de firmar la carta PCCP. Recuerde verificar que la información del cliente, partner y representantes esté completa.'
    },

    UI.FieldGroup #Instrucciones : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@UI.DataPoint#TextoInstrucciones'
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'InstruccionesFacet',
            Label : 'Instrucciones para diligenciar',
            Target : '@UI.FieldGroup#Instrucciones'
        }
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : '{i18n>IdCarta}',
            Criticality : pilar.reporteSemanal.estado.matrizRiesgos.impactoCuantitativoDias,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Pas}',
            Value : pais,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FechaCarta}',
            Value : fecha,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LinkCarta}',
            Value : link,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FirmaDigital}',
            Value : firmaDigital,
        },
        {
            $Type : 'UI.DataField',
            Value : representanteLegal.nombre,
            Label : '{i18n>NombreRepresentanteLegal}',
        },
        {
            $Type : 'UI.DataField',
            Value : representanteSAP.nombre,
            Label : '{i18n>NombreRepresentanteSap}',
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.contactos.nombre,
            Label : '{i18n>NombreCliente1}',
            @UI.Importance : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.localizacion_ID,
            Label : 'Localizacion Cliente',
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.contactos.relacion_code,
            Label : '{i18n>RelacionCliente}',
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.contactos.rol,
            Label : '{i18n>RolCliente}',
        },
        {
            $Type : 'UI.DataField',
            Value : partner.nombrePartner,
            Label : '{i18n>NombrePartner}',
        },
        {
            $Type : 'UI.DataField',
            Value : partner.localizacion_ID,
            Label : '{i18n>LocalizacionPartner}',
        },
        {
            $Type : 'UI.DataField',
            Value : partner.escalacionAnterior,
            Label : 'Escalacion Anterior Partner',
        },
        {
            $Type : 'UI.DataField',
            Value : pilar_ID,
            Label : '{i18n>IdPilar}',
        },
        {
            $Type : 'UI.DataField',
            Value : pilar.nombre,
            Label : '{i18n>NombrePilar}',
        },
        {
            $Type : 'UI.DataField',
            Value : pilar.tipoPilar.nombre,
            Label : '{i18n>NombreTipoPilar}',
        },
        {
            $Type : 'UI.DataField',
            Value : cliente.ID,
            Label : 'ID Cliente',
        },
    ],

    UI.SelectionFields : [
        cliente_ID,
        fecha,
        pais,
        partner_ID,
    ],

    UI.HeaderInfo : {
        TypeName : 'Carta PCCP',
        TypeNamePlural : 'Cartas PCCP',
        Title : {
            $Type : 'UI.DataField',
            Value : firmaDigital,
            Label : 'Nombre del documento'
        },
        Description : {
            $Type : 'UI.DataField',
            Value : pais,
            Label : 'País de la carta'
        }
    },
);

// --- Las anotaciones de value help (sin cambios) ---
annotate service.CartaPCCP with {
    pilar @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'PilarCO',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : pilar_ID,
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

annotate service.CartaPCCP with {
    cliente @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cliente',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : cliente_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Cliente',
        },
        Common.Label : '{i18n>Cliente}',
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.CartaPCCP with {
    partner @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Partner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : partner_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Partner',
        },
        Common.Label : '{i18n>Partner}',
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.CartaPCCP with {
    representanteLegal @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contacto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : representanteLegal_ID,
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

annotate service.CartaPCCP with {
    representanteSAP @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contacto',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : representanteSAP_ID,
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

annotate service.CartaPCCP with {
    fecha @Common.Label : '{i18n>Fecha}'
};

annotate service.CartaPCCP with {
    pais @Common.Label : '{i18n>Pas}'
};

annotate service.Contacto with {
    rol @Common.Text : relacion.name
};
annotate service.Partner with {
    localizacion @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Partner',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : localizacion,
                    ValueListProperty : 'localizacion_ID',
                },
            ],
            Label : 'ID localizacion P',
        },
        Common.ValueListWithFixedValues : true,
)};

annotate service.Cliente with {
    localizacion @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cliente',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : localizacion,
                    ValueListProperty : 'localizacion_ID',
                },
            ],
            Label : 'ID localizacion C',
        },
        Common.ValueListWithFixedValues : true,
)};

