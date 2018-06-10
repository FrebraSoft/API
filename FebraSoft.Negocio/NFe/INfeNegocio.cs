using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using System.Data.Entity;

namespace FebraSoft.Negocio.NFes
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public interface INFeNegocio
    {
        IList<NFe> BuscaTodasNFes();

        NFe BuscaNFePorNumero(int numeroNFe);

        IList<NFeItem> BuscaNFeItensPorNumero(int numeroNFe);

        NFeItem BuscaNFeItemPorNumeroItem(int numeroNFe, int numeroItem);
    }
}
