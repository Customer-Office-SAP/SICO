using { sap.capire.sico as my } from '../db/schema';

/**
 * Servicio para gestión operativa del sistema SICO.
 */
service SICOService {
  entity Producto           as projection on my.Producto;
  entity PilarCO            as projection on my.PilarCO;
  entity Cliente            as projection on my.Cliente;
  entity Partner            as projection on my.Partner;
  entity SAP                as projection on my.SAP;
  entity Incidente          as projection on my.Incidente;
  entity Escalacion         as projection on my.Escalacion;
  entity Actividad          as projection on my.Actividad;
  entity Accion             as projection on my.Accion;
  entity Plan               as projection on my.Plan;
  entity CartaPCCP          as projection on my.CartaPCCP;
  entity Acta               as projection on my.Acta;
  entity Ticket             as projection on my.Ticket;
  entity Evaluacion         as projection on my.Evaluacion;
  entity SolicitudPCCP      as projection on my.SolicitudPCCP;
  entity Servicios          as projection on my.Servicio;
  entity Antecedente        as projection on my.Antecedente;
  entity MatrizRiesgos      as projection on my.MatrizRiesgos;
  entity Contacto           as projection on my.Contacto;
  entity PilarFase          as projection on my.PilarFase;
  entity InformacionBasica  as projection on my.InformacionBasica;
  entity InformacionMinimaObligatoria as projection on my.InformacionMinimaObligatoria;
  entity InformacionAdicional         as projection on my.InformacionAdicional;
  entity Milestones         as projection on my.Milestones;
  entity PasosSiguientes    as projection on my.PasosSiguientes;
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