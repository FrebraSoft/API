using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using System.Data.Entity;

namespace FebraSoft.Negocio.NFesRecebidas
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public interface INFeRecebidaNegocio
    {
        IList<NFeRecebida> BuscaTodasNFesRecebidas();

        NFeRecebida BuscaNFeRecebidaPorNumero(int numeroNFe);

        IList<NFeRecebidaItem> BuscaNFeRecebidaItensPorNumero(int numeroNFe);

        NFeRecebidaItem BuscaNFeRecebidaItemPorNumeroItem(int numeroNFe, int numeroItem);
    }
}
