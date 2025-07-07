using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';

namespace sap.capire.proyecto;

// [ENTIDADES OMITIDAS POR BREVEDAD - YA DEFINIDAS ANTERIORMENTE]

/**
 * Servicios disponibles
 */
using { sap.capire.proyecto as my } from '../db/schema';

/**
 * Servicio para gestión operativa de proyectos, incidentes y planificación.
 */
service ProjectService {
  entity Producto           as projection on my.Producto;
  entity PilarCO            as projection on my.PilarCO;
  entity Actividad          as projection on my.Actividad;
  entity Accion             as projection on my.Accion;
  entity Incidente          as projection on my.Incidente;
  entity Escalacion         as projection on my.Escalacion;
  entity Plan               as projection on my.Plan;
  entity MatrizRiesgos      as projection on my.MatrizRiesgos;
  entity CartaPCCP          as projection on my.CartaPCCP;
}

/**
 * Servicio de administración: permite acceso completo a todos los recursos.
 */
service AdminService {
  entity Cliente            as projection on my.Cliente;
  entity Partner            as projection on my.Partner;
  entity SAP                as projection on my.SAP;
  entity Localizacion       as projection on my.Localizacion;
  entity Contacto           as projection on my.Contacto;
  entity Evaluacion         as projection on my.Evaluacion;
  entity SolicitudPCCP      as projection on my.SolicitudPCCP;
  entity Estado             as projection on my.Estado;
  entity TipoRiesgo         as projection on my.TipoRiesgo;
  entity TipoActividad      as projection on my.TipoActividad;
  entity TipoPilar          as projection on my.TipoPilar;
  entity TipoPlan           as projection on my.TipoPlan;
  entity Flag               as projection on my.Flag;
  entity EstadoAccion       as projection on my.EstadoAccion;
  entity Prioridad          as projection on my.Prioridad;
  entity TipoIntervencion   as projection on my.TipoIntervencion;
  entity Fase               as projection on my.Fase;
  entity PilarFase          as projection on my.PilarFase;
  entity Acta               as projection on my.Acta;
  entity PasosSiguientes    as projection on my.PasosSiguientes;
  entity Antecedente        as projection on my.Antecedente;
  entity Ticket             as projection on my.Ticket;
}

/**
 * Servicio de sólo lectura para consulta de clientes, productos y estados.
 */
service ReadOnlyService {
  @readonly
  entity Cliente            as projection on my.Cliente;
  @readonly
  entity Producto           as projection on my.Producto;
  @readonly
  entity Estado             as projection on my.Estado;
  @readonly
  entity TipoRiesgo         as projection on my.TipoRiesgo;
  @readonly
  entity TipoPilar          as projection on my.TipoPilar;
  @readonly
  entity Flag               as projection on my.Flag;
  @readonly
  entity EstadoAccion       as projection on my.EstadoAccion;
  @readonly
  entity Prioridad          as projection on my.Prioridad;
}