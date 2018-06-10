using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using System.Data.Entity;

namespace FebraSoft.Dados.NFeRecebidas
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public interface INFeRecebidaDados
    {
        IList<NFeRecebida> BuscaTodasNFesRecebidas();

        NFeRecebida BuscaNFeRecebidaPorNumero(int numeroNFeRecebida);

        IList<NFeRecebidaItem> BuscaNFeRecebidaItensPorNumero(int numeroNFeRecebida);

        NFeRecebidaItem BuscaNFeItemPorNumeroItem(int numeroNFeRecebida, int numeroItem);
    }
}
