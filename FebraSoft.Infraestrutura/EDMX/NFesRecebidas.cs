//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FebraSoft.Infraestrutura.EDMX
{
    using System;
    using System.Collections.Generic;
    
    public partial class NFesRecebidas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NFesRecebidas()
        {
            this.NFeRecebidaItens = new HashSet<NFeRecebidaItem>();
        }
    
        public int numeroNfeRecebida { get; set; }
        public Nullable<System.DateTime> dataEmissao { get; set; }
        public string chaveAcesso { get; set; }
        public string xml { get; set; }
        public Nullable<decimal> valorTotalProdutos { get; set; }
        public Nullable<decimal> valorTotalNFe { get; set; }
        public Nullable<decimal> valorTotalICMS { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NFeRecebidaItem> NFeRecebidaItens { get; set; }
    }
}
