//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProyectoMVC
{
    using System;
    using System.Collections.Generic;
    
    public partial class Descuentos
    {
        public int idRetenciones { get; set; }
        public Nullable<int> idEmpleado { get; set; }
        public Nullable<decimal> renta { get; set; }
        public Nullable<decimal> isss { get; set; }
        public Nullable<decimal> afp { get; set; }
        public Nullable<decimal> otros { get; set; }
        public Nullable<System.DateTime> Periodo { get; set; }
    
        public virtual Empleados Empleados { get; set; }
    }
}
