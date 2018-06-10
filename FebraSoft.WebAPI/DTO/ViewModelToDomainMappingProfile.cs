using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using FebraSoft.Infraestrutura.EDMX;
using FebraSoft.ViewModel.DTO;

namespace FebraSoft.WebAPI.DTO
{
    public class ViewModelToDomainMappingProfile : Profile
    {
        public ViewModelToDomainMappingProfile()
        {
            CreateMap<UsuarioDTO, Usuario>();
        }

        public override string ProfileName
        {
            get { return "ViewModelToDomainMappings"; }
        }
    }
}