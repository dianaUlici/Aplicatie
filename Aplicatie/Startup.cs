using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Aplicatie.Startup))]
namespace Aplicatie
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
