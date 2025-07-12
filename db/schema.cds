using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';

namespace sap.capire.sico;


entity InformacionBasica : cuid, managed {
  r1 : Boolean;
  r2 : Boolean;
  r3 : Boolean;
  r4 : Boolean;
  r5 : Boolean;
  r6 : Boolean;
  r7 : Boolean;
  ACV: Integer;
  TCV: Integer;
}

entity InformacionMinimaObligatoria : cuid, managed {
  soporteOfrecidoPor : Composition of many Contacto on soporteOfrecidoPor.ID != '';
  tipoSoporte        : String;
  consultoriaSAP     : Boolean;
}

entity InformacionAdicional : cuid, managed {
  metodologia        : String;
  enfoqueSAPS4HANA   : String;
  infraestAdoptada   : String;
  estrategiaProyecto : String;
  tipoContrato       : String;
}

entity Localizacion : cuid, managed {
  region     : String;
  ciudad     : String;
  pais       : String;
  direccion  : String;
}

entity NPS : cuid, managed {
  anio         : Integer;
  quarter      : Integer;
  calificacion : String;
}

entity Cliente : cuid, managed {
  localizacion : Association to Localizacion;
  calificacion : Association to NPS;
  contactos    : Composition of many Contacto on contactos.ID != '';
}

entity Contacto : cuid, managed {
  nombre    : String;
  email     : String;
  compania  : String;
  rol       : String;
  relacion  : Association to Relacion;
}

entity Partner : cuid, managed {
  nombrePartner       : String;
  localizacion        : Association to Localizacion;
  escalacionAnterior  : Boolean;
}

entity SAP : cuid, managed {
  localizacion : Association to Localizacion;
  contactos    : Composition of many Contacto on contactos.ID != '';
}

entity TipoPlan : CodeList {
    key code : String;
    nombre   : String;
}


entity MatrizRiesgos : cuid, managed {
  tipoRiesgo                   : Association to TipoRiesgo;
  descripcion                 : String;
  probabilidad                : Association to Prioridad;
  frecuencia                  : Association to Prioridad;
  impactoCualitativo          : String;
  impactoCuantitativoDolares : Decimal(18,2);
  impactoCuantitativoDias     : Integer;
  impactoCuantitativoEsfuerzo : String;
  estadoRiesgo                : Association to Estado;
  dueno                      : Composition of many Contacto on dueno.ID != '';
  fechaInicio                : Date;
  fechaFin                   : Date;
  dueDate                    : Date;
  fechaSeguimientoPCC        : Date;
  issue                      : Boolean;
}

entity Accion : cuid, managed {
  actividad     : Association to Actividad;
  dueno         : Association to Contacto;
  descripcion   : String;
  duracion      : Date;
  estado        : Association to EstadoAccion;
  observaciones : String;
}

entity Actividad : cuid {
  nombre          : String;
  flag            : Association to Flag;
  tipoActividad   : Association to TipoActividad;
  listaAcciones   : Composition of many Accion on listaAcciones.ID != '';
  fechaInicio     : Date;
  fechaFin        : Date;
  dueDate         : Date;
  descripcion     : String;
}

entity Antecedente : cuid, managed {
  actividad     : Association to Actividad;
  contacto      : Composition of many Contacto on contacto.ID != '';
  descripcion   : String;
  duracion      : Date;
  estado        : Association to Estado;
  observaciones : String;
}

entity PilarCO : cuid, managed {
  tipoIntervencion      : Association to TipoIntervencion;
  nombre                : String;
  cliente               : Association to Contacto;
  implementadorTercero : Association to Contacto;
  implementadorSAP     : Association to Contacto;
  producto             : Association to Producto;
  tipoPilar            : Association to TipoPilar;
  fechaInicio          : Date;
  fechaFin             : Date;
  fechaGoLivePlaneada  : Date;
  fechaGoLiveReal      : Date;
  estado               : Association to Estado;
  qGate                : Boolean;
  antecedente          : Association to Antecedente;
  serviciosEscenciales : Association to Servicio;
  matrizRiesgos        : Association to MatrizRiesgos;
  equipoGeneral        : Composition of many Contacto on equipoGeneral.ID != '';
  equipoCliente        : Composition of many Contacto on equipoCliente.ID != '';
  equipoPartner        : Composition of many Contacto on equipoPartner.ID != '';
  equipoSAP            : Composition of many Contacto on equipoSAP.ID != '';
  equipoSoporte        : Composition of many Contacto on equipoSoporte.ID != '';
  reporteSemanal       : Association to ReporteSemanal;
}

entity ReporteSemanal : cuid, managed {
  pilar                    : Association to PilarCO;
  matrizRiesgos           : Association to MatrizRiesgos;
  fecha                   : Date;
  fase                   : Association to PilarCO;
  estado                   : Association to PilarCO;
  nombre                   : Association to PilarCO;
  cliente                   : Association to PilarCO;
  descripcionFase           : String;
  fechaGoLiveActual          : Date;
  salidaProductivo          : Boolean;
  comentariosImplementador   : String;
  resumen                       : String;
  estadoTopicosRelevantes: String;
  gestionRecursos         : String;
  aspectosClaveActivate   : String;
  consideracionesRelevantes: String;
  incidenciasRelevantes   : String;
  recomendaciones         : String;
  otrosTemasRelacionados  : String;
}

entity Milestones : cuid, managed {
  kickOff              : Date;
  incioPlaneamiento    : Date;
  inicioDiseno         : Date;
  inicioRealizacion    : Date;
  inicioCutOver        : Date;
  inicioTestIntegrados : Date;
  inicioEntrenamiento  : Date;
  goLive               : Date;
  infoDetallada        : Date;
}

entity SolicitudPCCP : cuid, managed {
  link                          : String;
  partner                       : Association to Partner;
  pilar                         : Association to PilarCO;
  cliente                       : Association to Cliente;
  informacionBasica             : Association to InformacionBasica;
  informacionMinimaObligatoria : Association to InformacionMinimaObligatoria;
  informacionAdicional          : Association to InformacionAdicional;
  solucionesSAPenScope          : Association to Producto;
  milestones                    : Association to Milestones;
}

entity Plan : cuid, managed {
  tipoPlan         : Association to TipoPlan;
  pilar            : Association to PilarCO;
  riesgo           : Association to MatrizRiesgos;
  listaActividades : Composition of many Actividad on listaActividades.ID != '';
}

entity Evaluacion : cuid, managed {
  evaluador        : String;
  solicitante      : String;
  aprobadoMD       : Boolean;
  segundoAprobador : Boolean;
}

entity CartaPCCP : cuid, managed {
  pilar              : Association to PilarCO;
  fecha              : Date;
  link               : String;
  cliente            : Association to Cliente;
  partner            : Association to Partner;
  representanteLegal : Association to Contacto;
  representanteSAP   : Association to Contacto;
  pais               : String;
  firmaDigital       : String;
}

entity Ticket : cuid, managed {
  responsable : String;
  estado      : String;
  dueDate     : Date;
}

entity Incidente : cuid, managed {
  estado       : Association to Estado;
  evento       : Association to PilarCO;
  responsable  : Composition of many Contacto on responsable.ID != '';
  descripcion  : String;
  fechaInicio  : Date;
  fechaFin     : Date;
  fechaCorte   : Date;
  prioridad    : Association to Prioridad;
}

entity Escalacion : cuid, managed {
  incidente     : Association to Incidente;
  fecha         : Date;
  escaladoPor   : Association to Contacto;
  escaladoPara  : Association to Contacto;
  responsable   : Composition of many Contacto on responsable.ID != '';
  estado        : Association to Estado;
  comentarios   : String;
}

entity Handover : cuid, managed {
  proyecto      : Association to PilarCO;
  entregadoPor  : Association to Contacto;
  recibidoPor   : Association to Contacto;
  fecha         : Date;
  criterios     : String;
}

entity Acta : cuid, managed {
  participantes : Composition of many Contacto on participantes.ID != '';
  resumen       : String;
  link          : String;
}


entity PilarFase : cuid, managed {
  pilar  : Association to PilarCO;
  fase   : Association to Fase;
  nombre : String;
}

entity Servicio : CodeList {
  key code : String;
  nombre   : String;
}

entity Producto : CodeList {
  key code : String;
  nombre   : String;
}

entity TipoPilar : CodeList {
  key code : String;
  nombre   : String;
}

entity TipoIntervencion : CodeList {
  key code : String;
  nombre   : String;
}

entity Estado : CodeList {
  key code : String;
  nombre   : String;
}

entity Relacion : CodeList {
  key code : String;
  nombre   : String;
}

entity TipoRiesgo : CodeList {
  key code : String;
  nombre   : String;
}

entity Prioridad : CodeList {
  key code : String;
  nombre   : String;
}

entity EstadoAccion : CodeList {
  key code : String;
  nombre   : String;
}

entity Flag : CodeList {
  key code : String;
  nombre   : String;
}

entity TipoActividad : CodeList {
  key code : String;
  nombre   : String;
}

entity PasosSiguientes : CodeList {
  key code : String;
  nombre   : String;
}

entity Condicion : CodeList {
  key code : String;
  nombre   : String;
}

entity Fase : CodeList {
  key code : String;
  nombre   : String;
}


// VISTAS

view vista_reporte_semanal as select from ReporteSemanal {
  key ID,
  fecha,
  fechaGoLiveActual,
  salidaProductivo,
  descripcionFase,
  comentariosImplementador,
  resumen,
  estadoTopicosRelevantes,
  gestionRecursos,
  aspectosClaveActivate,
  consideracionesRelevantes,
  incidenciasRelevantes,
  recomendaciones,
  otrosTemasRelacionados,
  createdAt,
  createdBy,
  modifiedAt,
  modifiedBy,

  pilar,
  matrizRiesgos,
  fase,
  estado,
  nombre,
  cliente
}