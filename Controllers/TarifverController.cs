using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class TarifverController : Controller
    {
        // GET: Tarifver
        Context c = new Context();


        public ActionResult Index()
        {
            
            return View();
        }
        [HttpGet]
        public ActionResult TarifEkle()
        {

            return View();
        }
        [HttpPost]
        public ActionResult TarifEkle(Yemekler a) {
          
           
            c.Yemeklers.Add(a);
            c.SaveChanges();
            return RedirectToAction("Index");
            }


        public PartialViewResult Kategori()
        {
            var deger = c.Kategoris.ToList();
            return PartialView(deger);
        }
    }
}