using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';

namespace sap.capire.sico;

/**
 * Entidades principales
 */
entity Producto : cuid, managed {
  nombreProducto : String;
}

entity Localizacion : cuid, managed {
  region     : String;
  ciudad     : String;
  pais       : String;
  direccion  : String;
}

entity Contacto : cuid, managed {
  nombre    : String;
  email     : String;
  compania  : String;
  rol       : String;
  relacion  : String;
  cliente   : Association to Cliente;
  SAP       : Association to SAP;
}

entity Cliente : cuid, managed {
  localizacion : Association to Localizacion;
  calificacion : String;
  contactos    : Composition of many Contacto on contactos.cliente = $self;
}

entity SAP : cuid, managed {
  localizacion : Association to Localizacion;
  contactos    : Composition of many Contacto on contactos.SAP = $self;
}

entity Partner : cuid, managed {
  nombrePartner : String;
  localizacion  : Association to Localizacion;
  escalacionAnterior : Boolean;
}

entity PilarCO : cuid, managed {
  tipoIntervencion : Association to TipoIntervencion;
  nombre           : String;
  cliente          : Association to Cliente;
  implementadorTercero : Association to Partner;
  implementadorSAP     : Association to SAP;
  producto         : Association to Producto;
  tipoPilar        : Association to TipoPilar;
  fechaInicio      : Date;
  fechaFin         : Date;
  fechaGoLivePlaneada : Date;
  fechaGoLiveReal     : Date;
  estado           : String;
  qGate            : Boolean;
  antecedente      : Association to Antecedente;
  serviciosEscenciales : Association to Servicio;
  matrizRiesgos    : Association to MatrizRiesgos;
  equipoGeneral    : Composition of many Contacto;
  equipoCliente    : Composition of many Contacto;
  equipoPartner    : Composition of many Contacto;
  equipoSAP        : Composition of many Contacto;
  equipoSoporte    : Composition of many Contacto;
}

entity Servicio : cuid, managed {
  pilar   : Association to PilarCO;
  nombre  : String;
}

entity Antecedente : cuid, managed {
  actividad    : Association to Actividad;
  contactos    : Composition of many Contacto;
  descripcion  : String;
  duracion     : Date;
  estado       : String;
  observaciones: String;
}

entity MatrizRiesgos : cuid, managed {
  tipoRiesgo                : String;
  descripcion              : String;
  probabilidad             : String;
  frecuencia               : String;
  impactoCualitativo       : String;
  impactoCuantitativoDolares : Decimal(18,2);
  impactoCuantitativoDias  : Integer;
  impactoCuantitativoEsfuerzo : String;
  estadoRiesgo             : String;
  fechaInicio              : Date;
  fechaFin                 : Date;
  dueDate                  : Date;
  issue                    : Boolean;
  dueno                    : Composition of many Contacto;
}

entity Actividad : cuid, managed {
  nombre        : String;
  flag          : Association to Flag;
  tipoActividad : Association to TipoActividad;
  fechaInicio   : Date;
  fechaFin      : Date;
  dueDate       : Date;
  descripcion   : String;
  acciones      : Composition of many Accion on acciones.actividad = $self;
}

entity Accion : cuid, managed {
  actividad     : Association to Actividad;
  dueno         : Association to Contacto;
  descripcion   : String;
  duracion      : Date;
  estado        : String;
  observaciones : String;
}

entity TipoActividad : cuid, managed {
  nombre : String;
}

entity Escalacion : cuid, managed {
  incidente    : Association to Incidente;
  fecha        : Date;
  escaladoPor  : Association to Contacto;
  escaladoPara : Association to Contacto;
  estado       : String;
  comentarios  : String;
  responsables : Composition of many Contacto;
}

entity Incidente : cuid, managed {
  estado        : String;
  evento        : String;
  descripcion   : String;
  fechaInicio   : Date;
  fechaFin      : Date;
  fechaCorte    : Date;
  prioridad     : String;
  responsables  : Composition of many Contacto;
}

entity Plan : cuid, managed {
  tipoPlan        : Association to TipoPlan;
  pilar           : Association to PilarCO;
  riesgo          : Association to MatrizRiesgos;
  listaActividades: Composition of many Actividad;
}

entity Acta : cuid, managed {
  participantes : Composition of many Contacto;
  resumen       : String;
  link          : String;
}

entity CartaPCCP : cuid, managed {
  pilar        : Association to PilarCO;
  fecha        : Date;
  link         : String;
  cliente      : Association to Cliente;
  partner      : Association to Partner;
  representanteLegal : Association to Contacto;
  representanteSAP   : Association to Contacto;
  pais         : String;
  firmaDigital : String;
}

entity Estado : cuid, managed {
  nombre : String;
}

entity Ticket : cuid, managed {
  responsable : String;
  estado      : String;
  dueDate     : Date;
}

entity PasosSiguientes : cuid, managed {
  Contenido : String;
}

entity Condicion : cuid, managed {
  nombre : String;
}

entity PilarFase : cuid, managed {
  pilar           : Association to PilarCO;
  fase            : Association to Fase;
  nombre             : String;
}

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
  soporteOfrecidoPor : Composition of many Contacto;
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

entity Milestones : cuid, managed {
  kickOff               : Date;
  incioPlaneamiento     : Date;
  inicioDiseño          : Date;
  inicioRealizacion     : Date;
  inicioCutOver         : Date;
  inicioTestIntegrados  : Date;
  inicioEntrenamiento   : Date;
  goLive                : Date;
  infoDetallada         : Date;
}

entity SolicitudPCCP : cuid, managed {
  link                         : String;
  partner                      : Association to Partner;
  pilar                        : Association to PilarCO;
  cliente                      : Association to Cliente;
  informacionBasica            : Association to InformacionBasica;
  informacionMinimaObligatoria: Association to InformacionMinimaObligatoria;
  informacionAdicional         : Association to InformacionAdicional;
  solucionesSAPenScope         : Association to Producto;
  milestones                   : Association to Milestones;
}

entity Evaluacion : cuid, managed {
  evaluador        : String;
  solicitante      : String;
  aprobadoMD       : Boolean;
  segundoAprobador : Boolean;
}

entity Relacion : cuid, managed {
  nombre     : String;
}

entity EstadoAccion : cuid, managed {
  nombre : String;
}

entity Prioridad : cuid, managed {
  nombre : String;
}

entity TipoRiesgo : CodeList {
  key code : String;
  nombre   : String;
}

entity Flag : cuid, managed {
  nombre : String;
}

entity TipoIntervencion : CodeList {
  key code : String;
  nombre: String; 
}

entity TipoPilar : CodeList {
  key code : String;
  nombre: String; 
}

entity Fase : CodeList {
  key code : String;
  nombre: String; 
}

entity TipoPlan : CodeList {
  key code : String;
  nombre: String; 
}

entity ReporteSemanal : cuid, managed {
  pilar                    : Association to PilarCO;
  matrizRiesgos           : Association to MatrizRiesgos;
  fecha                   : Date;
  estadoTopicosRelevantes: String;
  gestionRecursos         : String;
  aspectosClaveActivate   : String;
  consideracionesRelevantes : String;
  incidenciasRelevantes   : String;
  recomendaciones         : String;
  otrosTemasRelacionados  : String;
}