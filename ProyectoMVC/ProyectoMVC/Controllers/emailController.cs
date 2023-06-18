using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProyectoMVC;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace ProyectoMVC.Controllers
{
    public class emailController : Controller
    {
        // GET: email
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Email(ProyectoMVC.emailSetup model)
        {
            MailMessage mail = new MailMessage("email que envia", model.to);
            mail.Subject = model.subjet;
            mail.Body = model.body;
            mail.IsBodyHtml = false;

            SmtpClient smpt = new SmtpClient();
            smpt.Host = "smpt.gmail.com";
            smpt.Port = 587;
            smpt.EnableSsl = true;

            NetworkCredential nc = new NetworkCredential("email que envia", "clave email");
            smpt.UseDefaultCredentials = true;
            smpt.Credentials = nc;
            smpt.Send(mail);
            ViewBag.Message = "El correo ha sido enviado";


            return View();
        }
    }
}