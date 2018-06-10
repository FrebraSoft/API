using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using FebraSoft.Dados.NFeRecebidas;
using System.Data.Entity;

namespace FebraSoft.Negocio.NFesRecebidas
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public class NFeRecebidaNegocio : INFeRecebidaNegocio
    {
        #region ATRIBUTOS E CONSTRUTOR
        private INFeRecebidaDados NFeRecebidaDAO = null;

        /// <summary>
        /// Metodo contrutor
        /// </summary>
        /// <param name="db"></param>
        public NFeRecebidaNegocio(INFeRecebidaDados NFeRecebidaDAO)
        {
            this.NFeRecebidaDAO = NFeRecebidaDAO;
        }

        #endregion

        #region NFE

        public IList<NFeRecebida> BuscaTodasNFesRecebidas()
        {
            return NFeRecebidaDAO.BuscaTodasNFesRecebidas();
        }

        public NFeRecebida BuscaNFeRecebidaPorNumero(int numeroNFeRecebida)
        {
            return NFeRecebidaDAO.BuscaNFeRecebidaPorNumero(numeroNFeRecebida);
        }

        public IList<NFeRecebidaItem> BuscaNFeRecebidaItensPorNumero(int numeroNFeRecebida)
        {
            return NFeRecebidaDAO.BuscaNFeRecebidaItensPorNumero(numeroNFeRecebida);
        }

        public NFeRecebidaItem BuscaNFeRecebidaItemPorNumeroItem(int numeroNFeRecebida, int numeroItem)
        {
            return NFeRecebidaDAO.BuscaNFeItemPorNumeroItem(numeroNFeRecebida, numeroItem);
        }

        #endregion

    }
}
