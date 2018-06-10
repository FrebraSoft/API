using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using AutoMapper;
using System.Net.Http;
using System.Web.Http;
using Swashbuckle.Swagger.Annotations;
using FebraSoft.Negocio.Usuarios;
using System.Web.Http.Results;

namespace FebraSoft.WebAPI.Controllers
{
    public class UsuariosController : ApiController
    {
        IUsuarioNegocio usuarioNegocio;

        public UsuariosController(IUsuarioNegocio _usuarioNegocio)
        {
            this.usuarioNegocio = _usuarioNegocio;
        }

        // GET api/values
        [SwaggerOperation("GetAll")]
        public HttpResponseMessage Get()
        {
            try
            {
                var listaUsuarios = usuarioNegocio.BuscaTodosUsuarios();

                return Request.CreateResponse(HttpStatusCode.OK, listaUsuarios);
            }
            catch(Exception e)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, new { erro = "Ocorreu um erro ao efetuar sua solicitação. Ex: "+ e.ToString() });
            }
        }

        // GET api/values/5
        [SwaggerOperation("GetById")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        [SwaggerOperation("Create")]
        [SwaggerResponse(HttpStatusCode.Created)]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        [SwaggerOperation("Update")]
        [SwaggerResponse(HttpStatusCode.OK)]
        [SwaggerResponse(HttpStatusCode.NotFound)]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        [SwaggerOperation("Delete")]
        [SwaggerResponse(HttpStatusCode.OK)]
        [SwaggerResponse(HttpStatusCode.NotFound)]
        public void Delete(int id)
        {
        }
    }
}
