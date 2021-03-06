﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using System.Data.Entity;

namespace FebraSoft.Dados.Usuarios
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public class UsuarioDados : IUsuarioDados
    {
        #region ATRIBUTOS E CONSTRUTOR
        private FebraSoftDBEntities db = null;

        /// <summary>
        /// Metodo contrutor
        /// </summary>
        /// <param name="db"></param>
        public UsuarioDados(FebraSoftDBEntities db)
        {
            this.db = db;
        }

        #endregion

        #region USUARIO

        /// <summary>
        /// Metodo responsavel por buscar todos usuarios
        /// </summary>
        /// <returns></returns>
        public IList<Usuario> BuscaTodosUsuario()
        {
            return db.Usuarios.ToList();
        }

        /// <summary>
        /// Metodo responsavel por salvar o usuario
        /// </summary>
        /// <param name="Usuario"></param>
        /// <returns></returns>
        public Usuario SalvaUsuario(Usuario usuario)
        {
            db.Usuarios.Add(usuario);
            db.SaveChanges();

            return usuario;
        }

        /// <summary>
        /// Metodo responsavel por alterar o usuario 
        /// </summary>
        /// <param name="usuario"></param>
        public Usuario AlteraUsuario(Usuario usuario)
        {
            db.Entry<Usuario>(usuario).State = EntityState.Modified;
            db.SaveChanges();
            return usuario;
        }


        /// <summary>
        /// Metodo responsavel por selecionar o Usuário
        /// </summary>
        /// <param name="Usuario"></param>
        /// <returns></returns>
        public Usuario SelecionaUsuarioPorLogin(String usuario)
        {
            return db.Usuarios.SingleOrDefault(x => x.usuario.Equals(usuario));
        }

        public bool SelecionaUsuarioLoginSenha(string login, string senha)
        {
            return db.Usuarios.Any(x => x.usuario.Equals(login) && x.senha.Equals(senha));
        }
        #endregion

    }
}
