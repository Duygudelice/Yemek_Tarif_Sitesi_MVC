using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class YorumlarController : Controller
    {
        // GET: Yorumlar
        Context c = new Context();
        public ActionResult Index()
        {
            var degerler = c.Yorumlars.OrderByDescending(x => x.ID).ToList();
            return View(degerler);
        }
        public ActionResult YorumSil(int id)
        {
            var b = c.Yorumlars.Find(id);
            c.Yorumlars.Remove(b);
            c.SaveChanges();
            return RedirectToAction("Index");
        }


        public ActionResult  YorumGetir(int id)
        {
            var b = c.Yorumlars.Find(id);
            return View(b);
        }

        public ActionResult YorumGüncelle(Yorumlar a)
        {
            var b = c.Yorumlars.Find(a.ID);
           
            b.AdSoyad = a.AdSoyad;
            b.Mail = a.Mail;
            b.Yorum = a.Yorum;
        
            c.SaveChanges();
                

          return RedirectToAction("Index");
        }
        public ActionResult YorumOnayla(int id)
        {
            var b = c.Yorumlars.Find(id);

            b.YorumOnay =true;

            c.SaveChanges();


            return RedirectToAction("Index");
        }


    }
}