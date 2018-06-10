using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using FebraSoft.Infraestrutura.EDMX;
using FebraSoft.Dados.Usuarios;

namespace FebraSoft.Negocio.Usuarios
{
    public class UsuarioNegocio : IUsuarioNegocio
    {
        #region ATRIBUTOS E CONSTRUTOR

        private IUsuarioDados usuarioDAO = null;

        /// <summary>
        /// Metodo construtor
        /// </summary>
        /// <param name="usuarioDAO"></param>
        public UsuarioNegocio(IUsuarioDados usuarioDAO)
        {
            this.usuarioDAO = usuarioDAO;
        }

        #endregion

        #region USUARIO

        /// <summary>
        /// Metodo responsavel por alterar o usuario
        /// </summary>
        /// <param name="usuario"></param>
        public Usuario AlteraUsuario(Usuario usuario)
        {
            return usuarioDAO.AlteraUsuario(usuario);
        }

        /// <summary>
        /// Metodo responsavel por selecionar o Usuário
        /// </summary>
        /// <param name="Usuario"></param>
        /// <returns></returns>
        public Usuario SelecionaUsuarioPorLogin(String Login)
        {
            return usuarioDAO.SelecionaUsuarioPorLogin(Login);
        }
        #endregion

    }
}