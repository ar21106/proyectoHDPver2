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


        public ActionResult Email()
        {
            MailMessage mail = new MailMessage("proyectohdp730@gmail.com", "ar21106@ues.edu.sv");
            mail.Subject = "CARTA DE RENTA";
            mail.Body = "ESTA ES SU CARTA DE RENTA";
            mail.IsBodyHtml = false;

            SmtpClient smpt = new SmtpClient();
            smpt.Host = "smpt.gmail.com";
            smpt.Port = 587;
            smpt.EnableSsl = true;

            NetworkCredential nc = new NetworkCredential("proyectohdp730@gmail.com", "proyectoHDP123");
            smpt.UseDefaultCredentials = true;
            smpt.Credentials = nc;
            smpt.Send(mail);
            ViewBag.Message = "El correo ha sido enviado";


            return View();
        }
    }
}