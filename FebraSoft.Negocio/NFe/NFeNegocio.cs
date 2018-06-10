using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using FebraSoft.Dados.NFes;
using System.Data.Entity;

namespace FebraSoft.Negocio.NFes
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public class NFeNegocio : INFeNegocio
    {
        #region ATRIBUTOS E CONSTRUTOR
        private INFeDados NFeDAO = null;

        /// <summary>
        /// Metodo contrutor
        /// </summary>
        /// <param name="db"></param>
        public NFeNegocio(INFeDados NFeDAO)
        {
            this.NFeDAO = NFeDAO;
        }

        #endregion

        #region NFE

        public IList<NFe> BuscaTodasNFes()
        {
            return NFeDAO.BuscaTodasNFes();
        }

        public NFe BuscaNFePorNumero(int numeroNFe)
        {
            return NFeDAO.BuscaNFePorNumero(numeroNFe);
        }

        public IList<NFeItem> BuscaNFeItensPorNumero(int numeroNFe)
        {
            return NFeDAO.BuscaNFeItensPorNumero(numeroNFe);
        }

        public NFeItem BuscaNFeItemPorNumeroItem(int numeroNFe, int numeroItem)
        {
            return NFeDAO.BuscaNFeItemPorNumeroItem(numeroNFe, numeroItem);
        }

        #endregion

    }
}
