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
    
    public partial class Produto
    {
        public int codProduto { get; set; }
        public int codEmpresa { get; set; }
        public string nome { get; set; }
        public bool ativo { get; set; }
    
        public virtual Empresa Empresa { get; set; }
    }
}
