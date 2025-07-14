using { sap.capire.sico as my } from '../db/schema';

annotate SICOService.Contacto with @odata.draft.enabled; 

/**
 * Servicio para gestión operativa del sistema SICO.
 */
service SICOService {

  @UI: {
  LineItem: [
    { Value: nombre, Label: 'Nombre del Pilar' },
    { Value: tipoIntervencion_code, Label: 'Tipo de Intervención' },
    { Value: tipoPilar_code, Label: 'Tipo de Pilar' },
    { Value: estado_code, Label: 'Estado' },
    { Value: producto_code, Label: 'Producto' },
    { Value: cliente_ID, Label: 'Cliente' },
    { Value: implementadorTercero_ID, Label: 'Impl. Tercero' },
    { Value: implementadorSAP_ID, Label: 'Impl. SAP' },
    { Value: fechaInicio, Label: 'Fecha Inicio' },
    { Value: fechaFin, Label: 'Fecha Fin' },
    { Value: fechaGoLivePlaneada, Label: 'Go Live Planeado' },
    { Value: fechaGoLiveReal, Label: 'Go Live Real' },
    { Value: qGate, Label: 'Q-Gate' },
    { Value: antecedente_ID, Label: 'Antecedente' },
    { Value: serviciosEscenciales_code, Label: 'Servicio Escencial' },
    { Value: matrizRiesgos_ID, Label: 'Matriz de Riesgos' },
    { Value: reporteSemanal_ID, Label: 'Último Reporte' }
  ],
  SelectionFields: [
    nombre,
    tipoIntervencion_code,
    tipoPilar_code,
    estado_code,
    producto_code,
    cliente_ID,
    fechaInicio,
    fechaGoLiveReal
  ]
} 
entity PilarCO as projection on my.PilarCO;

  @UI: {
    LineItem: [
      { Value: nombre }
    ]
  }
  entity Producto as projection on my.Producto;

  @UI: {
    LineItem: [
      { Value: nombre },
      { Value: email },
      { Value: compania },
      { Value: rol },
      { Value: relacion_code}
    ],
    SelectionFields: [ nombre, rol ]
  }
  entity Contacto as projection on my.Contacto;

  @UI: {
    LineItem: [
      { Value: descripcion },
      { Value: estado_code },
      { Value: actividad_ID },
      { Value: dueno_ID },
      { Value: duracion },
      { Value: observaciones }
    ]
  }
  entity Accion as projection on my.Accion;

  @UI: {
    LineItem: [
      { Value: nombre },
      { Value: tipoActividad_code },
      { Value: flag_code },
      { Value: fechaInicio},
      { Value: fechaFin },
      { Value: dueDate },
      { Value: descripcion}
    ]
  }
  entity Actividad as projection on my.Actividad;

  @UI: {
    LineItem: [
      { Value: pilar_ID, Label: 'Pilar' },
      { Value: fecha, Label: 'Fecha' },
      { Value: link, Label: 'Enlace Documento' },
      { Value: cliente_ID, Label: 'Cliente' },
      { Value: partner_ID, Label: 'Partner' },
      { Value: representanteLegal_ID, Label: 'Rep. Legal' },
      { Value: representanteSAP_ID, Label: 'Rep. SAP' },
      { Value: pais, Label: 'País' },
      { Value: firmaDigital, Label: 'Firma Digital' }
    ],
    SelectionFields: [ pilar_ID, cliente_ID, partner_ID, fecha, pais ]
  }
  @odata.draft.enabled
  entity CartaPCCP as projection on my.CartaPCCP;

  @UI: {
    LineItem: [
      { Value: ID },
      { Value: pilar_ID },
      { Value: fecha },
      { Value: fase_ID },
      { Value: estado_ID },
      { Value: salidaProductivo },
      { Value: descripcionFase },
      { Value: resumen }
    ],
    SelectionFields: [
      ID, pilar_ID, fecha, fase_ID, estado_ID
    ]
  }
  @cds.redirection.target
  entity vista_reporte_semanal as projection on my.vista_reporte_semanal;

  // Las demás entidades las dejamos sin UI por simplicidad, pero puedes extenderlas si lo necesitas:
  entity Cliente            as projection on my.Cliente;
  entity Partner            as projection on my.Partner;
  entity SAP                as projection on my.SAP;
  entity Incidente          as projection on my.Incidente;
  @odata.draft.enabled
  entity Escalacion         as projection on my.Escalacion;
  entity Plan               as projection on my.Plan;
  //entity CartaPCCP          as projection on my.CartaPCCP;
  entity Acta               as projection on my.Acta;
  entity Ticket             as projection on my.Ticket;
  entity Evaluacion         as projection on my.Evaluacion;
  @odata.draft.enabled
  entity SolicitudPCCP      as projection on my.SolicitudPCCP;
  entity Servicios          as projection on my.Servicio;
  entity Antecedente        as projection on my.Antecedente;
  entity MatrizRiesgos      as projection on my.MatrizRiesgos;
  entity PilarFase          as projection on my.PilarFase;
  entity InformacionBasica  as projection on my.InformacionBasica;
  entity InformacionMinimaObligatoria as projection on my.InformacionMinimaObligatoria;
  entity InformacionAdicional         as projection on my.InformacionAdicional;
  entity Milestones         as projection on my.Milestones;
  entity PasosSiguientes    as projection on my.PasosSiguientes;
  @odata.draft.enabled
  entity ReporteSemanal     as projection on my.ReporteSemanal;
}



/**
 * Servicio de sólo lectura para catálogos y listas maestras.
 */
service ReferenceCatalogService {
  @readonly
  entity TipoIntervencion   as projection on my.TipoIntervencion;
  @readonly
  entity TipoPilar          as projection on my.TipoPilar;
  @readonly
  entity TipoPlan           as projection on my.TipoPlan;
  @readonly
  entity TipoRiesgo         as projection on my.TipoRiesgo;
  @readonly
  entity TipoActividad      as projection on my.TipoActividad;
  @readonly
  entity Estado             as projection on my.Estado;
  @readonly
  entity EstadoAccion       as projection on my.EstadoAccion;
  @readonly
  entity Prioridad          as projection on my.Prioridad;
  @readonly
  entity Flag               as projection on my.Flag;
  @readonly
  entity Fase               as projection on my.Fase;
  @readonly
  entity Localizacion       as projection on my.Localizacion;
}