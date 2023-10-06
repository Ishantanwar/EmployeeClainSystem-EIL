using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RK_Project1.Startup))]
namespace RK_Project1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
