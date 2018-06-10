using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using System.Data.Entity;

namespace FebraSoft.Dados.NFes
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public class NFeDados : INFeDados
    {
        #region ATRIBUTOS E CONSTRUTOR
        private FebraSoftDBEntities db = null;

        /// <summary>
        /// Metodo contrutor
        /// </summary>
        /// <param name="db"></param>
        public NFeDados(FebraSoftDBEntities db)
        {
            this.db = db;
        }

        #endregion

        #region NFE

        public IList<NFe> BuscaTodasNFes()
        {
            return db.NFes.ToList();
        }

        public NFe BuscaNFePorNumero(int numeroNFe)
        {
            return db.NFes.FirstOrDefault(x => x.numeroNfe == numeroNFe);
        }

        public IList<NFeItem> BuscaNFeItensPorNumero(int numeroNFe)
        {
            return db.NFeItens.Where(x => x.numeroNfe == numeroNFe).ToList();
        }

        public NFeItem BuscaNFeItemPorNumeroItem(int numeroNFe, int numeroItem)
        {
            return db.NFeItens.FirstOrDefault(x => x.numeroNfe == numeroNFe && x.numeroItem == numeroItem);
        }

        #endregion

    }
}
