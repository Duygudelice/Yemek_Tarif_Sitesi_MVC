using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        Context c = new Context();
        public ActionResult Index()
        {
            var deger = c.Yemeklers.OrderByDescending(x => x.ID).ToList();
            return View(deger);
        }
        public PartialViewResult Partial1()
        {
            var deger = c.Yemeklers.Take(4).OrderByDescending(x => x.ID).ToList();
            return PartialView(deger);
        }
        public PartialViewResult Partial2()
        {
            var deger = c.Yemeklers.Take(1).ToList();
            return PartialView(deger);
        }
        public PartialViewResult Partial3()
        {
            var deger = c.Yemeklers.Take(3).OrderByDescending(x => x.ID).ToList();
            return PartialView(deger);

        }
        public PartialViewResult Partial4()
        {
            var deger = c.Yemeklers.Take(4).ToList();
            return PartialView(deger);

        }
        public PartialViewResult Partial5()
        {
            var deger = c.Yemeklers.Take(4).ToList();
            return PartialView(deger);

        }
    }
}