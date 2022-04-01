using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class DayFoodController : Controller
    {
        // GET: DayFood
        Context c = new Context();
        public ActionResult Index()
        {
            var deger = c.Yemeklers.Take(1).OrderByDescending(x=>x.YemekOnay).ToList();
            return View(deger);
        }
    }
}