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
    
    public partial class Cliente
    {
        public int codCliente { get; set; }
        public Nullable<int> codEmpresa { get; set; }
        public string razaoSocial { get; set; }
        public string nomeFantasia { get; set; }
        public string cpfcnpj { get; set; }
        public string logradouro { get; set; }
        public string numero { get; set; }
        public string complemento { get; set; }
        public string bairro { get; set; }
        public string cidade { get; set; }
        public string uf { get; set; }
        public Nullable<int> provavel { get; set; }
    
        public virtual Empresa Empresa { get; set; }
    }
}