using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        Context c = new Context();
        public ActionResult Index()
        {
            return View();

        }
        public ActionResult MesajGonder(Mesajlar a)
        {

            c.Mesajlars.Add(a);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}