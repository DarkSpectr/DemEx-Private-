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
    
    public partial class Products_import
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Products_import()
        {
            this.Partner_products_import = new HashSet<Partner_products_import>();
        }
    
        public int ID { get; set; }
        public Nullable<int> IDTypeProduct { get; set; }
        public string NameProduct { get; set; }
        public Nullable<int> Articul { get; set; }
        public Nullable<double> MinCostPartner { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Partner_products_import> Partner_products_import { get; set; }
        public virtual Product_type_import Product_type_import { get; set; }
    }
}