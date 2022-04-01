using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class GirişController : Controller
    {

        // GET: Giriş

        Context c = new Context();

        [HttpGet]
        public ActionResult Index2()
        {

            return View();
        }

        [HttpPost]

        public ActionResult Index2(Üyeler a)
        {
            var deger = c.Üyelers.FirstOrDefault(x => x.Mail == a.Mail && x.Sifre == a.Sifre);
            if (deger != null)
            {

                System.Web.Security.FormsAuthentication.SetAuthCookie(deger.Mail, false);
                Session["Kullanici"] = deger.Mail;
                return RedirectToAction("Index", "Default");
              

            }
            else
            {
                
                return RedirectToAction("Index", "Tarifler");
                
            }

        }
        public ActionResult Cikis()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index2", "Giriş");
        }



      

        [HttpGet]

     
        public ActionResult AdminGiriş()
        {

            return View();
        }

        
        [HttpPost]

        public ActionResult AdminGiriş(Yönetici a)
        {
            var deger = c.Yöneticis.FirstOrDefault(x => x.KullanıcıAd == a.KullanıcıAd && x.Sifre == a.Sifre);
            if (deger != null)
            {

                System.Web.Security.FormsAuthentication.SetAuthCookie(deger.KullanıcıAd, false);
                Session["Kullanicii"] = deger.KullanıcıAd;
                return RedirectToAction("Index", "Admin");


            }
            else
            {

                return RedirectToAction("AdminGiriş", "Giriş");

            }

        }

        [HttpGet]
        public ActionResult KayıtOl()
        {
            return View();
        }

        [HttpPost]
        public ActionResult KayıtOl(Üyeler a)
        {
            c.Üyelers.Add(a);
            c.SaveChanges();
            return RedirectToAction("/Index2");
        }

        public ActionResult Adminçık()
        {
            FormsAuthentication.SignOut();
           
            return RedirectToAction("AdminGiriş", "Giriş");
        }
    }
}