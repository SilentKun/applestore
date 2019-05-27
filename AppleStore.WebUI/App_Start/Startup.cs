[assembly: Microsoft.Owin.OwinStartup(typeof(AppleStore.WebUI.App_Start.Startup))]
namespace AppleStore.WebUI.App_Start
{
    using Microsoft.Owin;
    using Owin;
    using AppleStore.WebUI.Models;
    using Microsoft.Owin.Security.Cookies;
    using Microsoft.AspNet.Identity;
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // настраиваем контекст и менеджер
            app.CreatePerOwinContext(ApplicationContext.Create);
            app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Account/Login"),
            });
        }
    }
}