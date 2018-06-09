using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using FebraSoft.Infraestrutura.EDMX;
using System.Data.Entity;

namespace Dados.Usuarios
{
    /// <summary>
    /// Classe de Dados para Usuários
    /// </summary>
    public interface IUsuarioDados
    {
        IList<Usuario> BuscaTodosUsuario();
        Usuario SalvaUsuario(Usuario usuario);
        Usuario AlteraUsuario(Usuario usuario);
        Usuario SelecionaUsuarioPorLogin(String usuario);
    }
}
