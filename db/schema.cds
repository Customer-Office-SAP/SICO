using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';

namespace sap.capire.proyecto;

/**
 * Tabla Producto
 */
entity Producto : cuid, managed {
  nombreProducto : String;
}

/**
 * Tabla Prioridad como CodeList ENUM
 */
entity Prioridad : CodeList {
  key code : String enum {
    MuyAlto = 'MuyAlto';
    Alto = 'Alto';
    Medio = 'Medio';
    Bajo = 'Bajo';
  };
}

/**
 * Tabla EstadoAccion como CodeList ENUM
 */
entity EstadoAccion : CodeList {
  key code : String enum {
    SinIniciar = 'SinIniciar';
    EnProceso = 'EnProceso';
    Cubierto = 'Cubierto';
    Anulado = 'Anulado';
  };
}

/**
 * Tabla Flag como CodeList ENUM
 */
entity Flag : CodeList {
  key code : String enum {
    Verde = 'Verde';
    Amarillo = 'Amarillo';
    Rojo = 'Rojo';
  };
}

/**
 * Tipo de Pilar como CodeList ENUM
 */
entity TipoPilar : CodeList {
  key code : String enum {
    PCCP = 'PCCP';
    PS = 'PS';
    ProactiveCHURN = 'Proactive CHURN';
    RecoverCHURN = 'Recover CHURN';
  };
}

/**
 * Tabla Localización
 */
entity Localizacion : cuid, managed {
  region     : String;
  ciudad     : String;
  pais       : String;
  direccion  : String;
}

/**
 * Tabla Partner
 */
entity Partner : cuid, managed {
  nombrePartner : String;
  localizacion  : Association to Localizacion;
}

/**
 * Tabla Cliente
 */
entity Cliente : cuid, managed {
  localizacion : Association to Localizacion;
  contactos    : Composition of many Contacto on contactos.cliente = $self;
}

/**
 * Tabla Contacto
 */
entity Contacto : cuid, managed {
  nombre    : String;
  email     : String;
  compania  : String;
  rol       : String;
  relacion  : String;
  cliente   : Association to Cliente;
}

/**
 * Tabla PilarCO
 */
entity PilarCO : cuid, managed {
  tipoIntervencion : String;
  nombre           : String;
  cliente          : Association to Cliente;
  implementadorTercero : Association to Partner;
  implementadorSAP     : Association to SAP;
  producto         : Association to Producto;
  tipoPilar        : Association to TipoPilar;
  fechaInicio      : Date;
  fechaFin         : Date;
  estado           : String;
  matrizRiesgos    : Association to MatrizRiesgos;
  equipoGeneral    : Composition of many Contacto;
  equipoCliente    : Composition of many Contacto;
  equipoPartner    : Composition of many Contacto;
  equipoSAP        : Composition of many Contacto;
  equipoSoporte    : Composition of many Contacto;
}

/**
 * Tabla SAP
 */
entity SAP : cuid, managed {
  localizacion : Association to Localizacion;
  contactos    : Composition of many Contacto;
}

/**
 * Tabla MatrizRiesgos
 */
entity MatrizRiesgos : cuid, managed {
  tipoRiesgo               : String;
  descripcion              : String;
  probabilidad             : String;
  frecuencia               : String;
  impactoCualitativo       : String;
  impactoCuantitativoDolares : Decimal(18,2);
  impactoCuantitativoDias    : Integer;
  impactoCuantitativoEsfuerzo: String;
  estadoRiesgo             : String;
  fechaInicio              : Date;
  fechaFin                 : Date;
  dueDate                 : Date;
  issue                    : Boolean;
  dueno                    : Composition of many Contacto;
}

/**
 * Tabla TipoActividad
 */
entity TipoActividad : cuid, managed {
  nombre : String;
}

/**
 * Tabla Actividad
 */
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

/**
 * Tabla Acción
 */
entity Accion : cuid, managed {
  actividad   : Association to Actividad;
  dueno       : String;
  descripcion : String;
  duracion    : Date;
  estado      : Association to EstadoAccion;
  observaciones : String;
}

/**
 * Tabla Incidente
 */
entity Incidente : cuid, managed {
  estado      : String;
  evento      : String;
  descripcion : String;
  fechaInicio : Date;
  fechaFin    : Date;
  fechaCorte  : Date;
  prioridad   : Association to Prioridad;
  responsables: Composition of many Contacto;
}

/**
 * Tabla Escalación
 */
entity Escalacion : cuid, managed {
  incidente    : Association to Incidente;
  fecha        : Date;
  escaladoPor  : Association to Contacto;
  escaladoPara : Association to Contacto;
  estado       : Association to EstadoAccion;
  comentarios  : String;
  responsables : Composition of many Contacto;
}

/**
 * Tabla Plan
 */
entity Plan : cuid, managed {
  tipo          : String;
  pilar         : Association to PilarCO;
  riesgo        : Association to MatrizRiesgos;
  actividades   : Composition of many Actividad;
}

/**
 * Tabla Estado
 */
entity Estado : CodeList {
  key code : String;
  nombre   : String;
}

/**
 * Tabla TipoRiesgo
 */
entity TipoRiesgo : CodeList {
  key code : String;
  nombre   : String;
}

/**
 * Tabla Acta
 */
entity Acta : cuid, managed {
  participantes : Composition of many Contacto;
  resumen       : String;
  link          : String;
}

/**
 * Tabla Evaluacion
 */
entity Evaluacion : cuid, managed {
  evaluador         : String;
  solicitante       : String;
  aprobadoMD        : Boolean;
  segundoAprobador  : Boolean;
}

/**
 * Tabla CartaPCCP
 */
entity CartaPCCP : cuid, managed {
  link        : String;
  cliente     : Association to Cliente;
  partner     : Association to Partner;
  proyecto    : String;
  pais        : String;
  firmaDigital: String;
}

/**
 * Tabla Ticket
 */
entity Ticket : cuid, managed {
  responsable : String;
  estado      : String;
  dueDate     : Date;
}

/**
 * Tabla SolicitudPCCP
 */
entity SolicitudPCCP : cuid, managed {
  link     : String;
  partner  : Association to Partner;
  evento   : String;
}

/**
 * Tabla Antecedente
 */
entity Antecedente : cuid, managed {
  actividad     : Association to Actividad;
  dueno         : String;
  descripcion   : String;
  duracion      : Date;
  estado        : Association to EstadoAccion;
  observaciones : String;
}

/**
 * Tabla PilarFase
 */
entity PilarFase : cuid, managed {
  pilar      : Association to PilarCO;
  fase       : String;
  BTP        : String;
  SuccessFactors : String;
  Ariba      : String;
  Concur     : String;
  Fieldglass : String;
  Otros      : String;
}

/**
 * Tabla PasosSiguientes
 */
entity PasosSiguientes : cuid, managed {
  Contenido : String;
}

/**
 * Tabla TipoIntervencion
 */
entity TipoIntervencion : CodeList {
  key code : String;
  descripcion : String;
}

/**
 * Tabla TipoPlan
 */
entity TipoPlan : CodeList {
  key code : String;
  descripcion : String;
}

/**
 * Tabla Fase
 */
entity Fase : CodeList {
  key code : String;
  descripcion : String;
}