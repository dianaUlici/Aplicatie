//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Aplicatie
{
    using System;
    using System.Collections.Generic;
    
    public partial class Incasari
    {
        public int IdIncasare { get; set; }
        public string Data { get; set; }
        public string Suma { get; set; }
        public int CategVenitIdCategVenit { get; set; }
    
        public virtual CategVenit CategVenit { get; set; }
    }
}