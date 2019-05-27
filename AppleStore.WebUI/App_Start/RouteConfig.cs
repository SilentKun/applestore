namespace AppleStore.WebUI
{
    using System.Web.Mvc;
    using System.Web.Routing;
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: null,
                url: "",
                defaults: new { controller = "Gadget", action = "List", category = 0, page = 1, canshowpageselector = false}
            );

            routes.MapRoute(
                name: null,
                url: "{category}/{page}",
                defaults: new { controller = "Gadget", action = "List" },
                constraints: new { page = @"\d+" }
            );

            routes.MapRoute(
                name: null,
                url: "{page}",
                defaults: new { controller = "Gadget", action = "List", category = 0 },
                constraints: new { page = @"\d+" }
            );

            routes.MapRoute(
                name: null,
                url: "{category}",
                defaults: new { controller = "Gadget", action = "List", page = 1 }
            );

            routes.MapRoute(null, "{controller}/{action}");
        }
    }
}