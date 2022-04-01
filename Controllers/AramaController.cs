using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class AramaController : Controller
    {
        // GET: Arama
        Context c = new Context();

       
    
        public ActionResult Ara(String k)
        {
        

            var deger = c.Yemeklers.ToList();

            if (!string.IsNullOrEmpty(k))
            {
                  deger = deger.Where(a => a.Ad.Contains(k)).ToList();
            }

           
            return View(deger);
          
        }
       
    }
}