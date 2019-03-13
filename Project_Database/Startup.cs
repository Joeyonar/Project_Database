using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Project_Database.Startup))]
namespace Project_Database
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
