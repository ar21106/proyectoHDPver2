using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;

using System.Web.Mvc;

using ProyectoMVC;
using Rotativa.MVC;

namespace ProyectoMVC.Controllers
{
    public class DescuentosController : Controller
    {
        private PlanillaEntities db = new PlanillaEntities();


        // GET: Descuentos
        public ActionResult Index()
        {
            var descuentos = db.Descuentos.Include(d => d.Empleados);
            return View(descuentos.ToList());
        }

        // GET: Descuentos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Descuentos descuentos = db.Descuentos.Find(id);
            if (descuentos == null)
            {
                return HttpNotFound();
            }
            return View(descuentos);
        }

        

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }


       
        public ActionResult GeneratePDF()
        {
            // Lógica adicional para preparar datos, si es necesario

            return new ViewAsPdf("Details")
            {
                FileName = "carta.pdf" // Establece el nombre del archivo PDF
             };
        }
    }
}
