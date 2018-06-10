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
    public class NFeRecebidaDados : INFeRecebidaDados
    {
        #region ATRIBUTOS E CONSTRUTOR
        private FebraSoftDBEntities db = null;

        /// <summary>
        /// Metodo contrutor
        /// </summary>
        /// <param name="db"></param>
        public NFeRecebidaDados(FebraSoftDBEntities db)
        {
            this.db = db;
        }

        #endregion

        #region NFE

        public IList<NFeRecebida> BuscaTodasNFesRecebidas()
        {
            return db.NfesRecebidas.ToList();
        }

        public NFeRecebida BuscaNFeRecebidaPorNumero(int numeroNFeRecebida)
        {
            return db.NfesRecebidas.FirstOrDefault(x => x.numeroNfeRecebida == numeroNFeRecebida);
        }

        public IList<NFeRecebidaItem> BuscaNFeRecebidaItensPorNumero(int numeroNFeRecebida)
        {
            return db.NFesRecebidasItens.Where(x => x.numeroNfeRecebida == numeroNFeRecebida).ToList();
        }

        public NFeRecebidaItem BuscaNFeItemPorNumeroItem(int numeroNFeRecebida, int numeroItem)
        {
            return db.NFesRecebidasItens.FirstOrDefault(x => x.numeroNfeRecebida == numeroNFeRecebida && x.numeroItem == numeroItem);
        }

        #endregion

    }
}
