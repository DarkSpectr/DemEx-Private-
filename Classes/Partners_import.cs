//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DemSerDar.Classes
{
    using System;
    using System.Collections.Generic;
    
    public partial class Partners_import
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Partners_import()
        {
            this.Partner_products_import = new HashSet<Partner_products_import>();
        }
    
        public int ID { get; set; }
        public Nullable<int> IDTypePartner { get; set; }
        public string NamePartner { get; set; }
        public string Director { get; set; }
        public string EmailPartner { get; set; }
        public Nullable<long> PhoneNumPartner { get; set; }
        public string AddressPartner { get; set; }
        public Nullable<long> INN { get; set; }
        public Nullable<double> Rate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Partner_products_import> Partner_products_import { get; set; }
        public virtual PartnerTypes PartnerTypes { get; set; }
    }
}
