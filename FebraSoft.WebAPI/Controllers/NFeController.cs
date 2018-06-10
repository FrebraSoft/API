using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using AutoMapper;
using System.Net.Http;
using System.Web.Http;
using Swashbuckle.Swagger.Annotations;
using FebraSoft.Negocio.NFes;
using System.Web.Http.Results;
using FebraSoft.Infraestrutura.EDMX;

namespace FebraSoft.WebAPI.Controllers
{
    public class NFesController : ApiController
    {
        INFeNegocio nfeNegocio;

        public NFesController(INFeNegocio nfeNegocio)
        {
            this.nfeNegocio = nfeNegocio;
        }

        [HttpGet]
        [ActionName("buscaNFes")]
        public HttpResponseMessage GetTodasNFes()
        {
            try
            {
                var listaNFe = nfeNegocio.BuscaTodasNFes();

                return Request.CreateResponse(HttpStatusCode.OK, listaNFe);
            }
            catch (Exception e)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, new { erro = "Ocorreu um erro ao efetuar sua solicitação. Ex: " + e.ToString() });
            }
        }


        [HttpGet]
        [ActionName("getNFe")]
        public HttpResponseMessage GetNFe(int numeroNFe)
        {
            try
            {
                NFe nf = nfeNegocio.BuscaNFePorNumero(numeroNFe);

                return Request.CreateResponse(HttpStatusCode.OK, nf);
            }
            catch (Exception e)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, new { erro = "Ocorreu um erro ao efetuar sua solicitação. Ex: " + e.ToString() });
            }
        }
    }
}
