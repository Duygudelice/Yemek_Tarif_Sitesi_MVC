using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class TariflerController : Controller
    {
        // GET: Tarifler
        Context c = new Context();

        public ActionResult Index()
        {
            var deger = c.Yemeklers.OrderByDescending(x => x.ID).ToList();
            return View(deger);
        }
        //[HttpGet]
        //public ActionResult TarifDetayekle(Yemekler a)
        //{

        //    var deger = c.Yemeklers.Find(a.ID);
        //    deger.Tıklanma = a.Tıklanma + 1;
        //    c.SaveChanges();

        //    return View(deger);
        //}
        public ActionResult TarifDetay(int id)
        {

            var deger = c.Yemeklers.Where(x => x.ID == id).ToList();
            var deger2 = c.Yemeklers.Find(id);
            deger2.Tıklanma++;
            c.SaveChanges();
            return View(deger);
        }

      
        public PartialViewResult Puanlama()
        {
           
         
            
            return PartialView();
        }
        public PartialViewResult Puanlama2(int? id)
        {

            var b = c.Yemeklers.Find(id);
            if (b != null)
                b.Puan++;


            c.SaveChanges();

            return PartialView();
        }
        public PartialViewResult Puanlama3(int? id)
        {

            var b = c.Yemeklers.Find(id);
            if (b != null)
                b.Puan--;


            c.SaveChanges();

            return PartialView();
        }
        public PartialViewResult Partial1(int id)
        {
            var deger = c.Yorumlars.Where(x=>x.Yemekid==id).OrderByDescending(x => x.ID).ToList();
            return PartialView(deger);
        }
        [HttpGet]
        public PartialViewResult Yorumekle(int id)
        {
            ViewBag.deger = id;
            return PartialView();
        }

        [HttpPost]
        
        public PartialViewResult Yorumekle(Yorumlar a)
        {
            c.Yorumlars.Add(a);
            c.SaveChanges();
            return PartialView();
        }



        public PartialViewResult Partial2()
        {
            var deger = c.Yemeklers.Take(3).OrderByDescending(x => x.ID).ToList();
            return PartialView(deger);
        }
        public PartialViewResult Partial3()
        {
            var deger = c.Yorumlars.Take(3).OrderByDescending(x => x.ID).ToList();
            return PartialView(deger);
        }
    }
}