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
    
    public partial class LocalizareVenit
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LocalizareVenit()
        {
            this.CategVenits = new HashSet<CategVenit>();
            this.Platis = new HashSet<Plati>();
        }
    
        public int IdLocalizareVenit { get; set; }
        public string Descriere { get; set; }
        public string TipBani { get; set; }
        public int CategVenitIdCategVenit { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CategVenit> CategVenits { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Plati> Platis { get; set; }
    }
}