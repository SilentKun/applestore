using System.Data.Entity;
using System.Web.Mvc;
using System.Web.Routing;
using AppleStore.Domain.Concrete;
using AppleStore.Domain.Entities;
using AppleStore.WebUI.Infrastructure.Binders;

namespace AppleStore.WebUI
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            ModelBinders.Binders.Add(typeof(Cart), new CartModelBinder());
            Database.SetInitializer<EFDbContext>(null);
        }
    }
}