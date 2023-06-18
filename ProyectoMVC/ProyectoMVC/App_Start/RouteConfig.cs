using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ProyectoMVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Empleados", action = "Index", id = UrlParameter.Optional }

            );

            routes.MapRoute(
                name: "GeneratePDF",
                url: "Details/GeneratePDF",
                defaults: new { controller = "Descuentos", action = "GeneratePDF" }
);

            routes.MapRoute(
               name: "Email",
               url: "{controller}/{action}/{id}",
                defaults: new { controller = "email", action = "Email", id = UrlParameter.Optional }
);
        }
    }
}
