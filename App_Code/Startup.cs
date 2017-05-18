using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(recw.Startup))]
namespace recw
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
