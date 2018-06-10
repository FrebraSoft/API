using AutoMapper;
using AutoMapper.Configuration;
using FebraSoft.Infraestrutura.EDMX;
using FebraSoft.ViewModel.DTO;

namespace FebraSoft.WebAPI.DTO
{
    public class DomainToViewModelMappingProfile : Profile
    {
        public DomainToViewModelMappingProfile()
        {
            CreateMap<Usuario, UsuarioDTO>();
        }

        public override string ProfileName
        {
            get { return "DomainToViewModelMappings"; }
        }
    }
}
