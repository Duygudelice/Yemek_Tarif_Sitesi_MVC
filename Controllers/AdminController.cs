using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using YemekTarif.Models.sınıflar;
namespace YemekTarif.Controllers
{
    public class AdminController : Controller
    {
        
        // GET: Admin
        Context c = new Context();

        [Authorize]
        public ActionResult Index()
        {
            var deger = c.Yemeklers.ToList();
            return View(deger);
        }
        public ActionResult YemekSil(int id)
        {
            var deger = c.Yemeklers.Find(id);
            c.Yemeklers.Remove(deger);
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        [Authorize]
        public ActionResult YemekGetir(int id)
        {
            var deger = c.Yemeklers.Find(id);
            return View(deger);
        }

        public ActionResult YemekGuncelle(Yemekler a)
        {
            var b = c.Yemeklers.Find(a.ID);
            b.ID = a.ID;
            b.Ad = a.Ad;
            b.YemekMalzeme = a.YemekMalzeme;
            b.Tarif = a.Tarif;
            b.Kategoriid = a.Kategoriid;
            c.SaveChanges();
            return RedirectToAction("Index");

        }
        [Authorize]
        [HttpPost]
        public ActionResult YeniTarif(Yemekler a)
        {
            c.Yemeklers.Add(a);
            c.SaveChanges();
            return RedirectToAction("Index");

            
        }
        [Authorize]
        [HttpGet]
        public ActionResult YeniTarif()
        {
            return View();
        }
        [Authorize]
        public ActionResult Hakkımızda()
        {
            var deger = c.Hakkımızdas.ToList();
            return View(deger);

        }
        [Authorize]
        public ActionResult HakkımızdaGetir(int id)
        {
            var deger = c.Hakkımızdas.Find(id);
            return View(deger);
        }
        [Authorize]
        public ActionResult HakkımızdaGüncelle(Hakkımızda a)
        {
            var b = c.Hakkımızdas.Find(a.ID);
       
            b.yazi = a.yazi;
            c.SaveChanges();
            return RedirectToAction("Hakkımızda");
        }
        [Authorize]
        public ActionResult Mesajlar()
        {
            var deger = c.Mesajlars.OrderByDescending(x => x.ID).ToList();
            return View(deger);
        }
        [Authorize]
        public ActionResult MesajDetay(int id)
        {
            var deger = c.Mesajlars.Find(id);
            return View(deger);
        }
        [Authorize]
        public ActionResult MesajSil(int id)

        {
            var deger = c.Mesajlars.Find(id);
            c.Mesajlars.Remove(deger);
            c.SaveChanges();
            return RedirectToAction("Mesajlar");
        }
        [Authorize]
        public ActionResult Üyeler()
        {
            var deger = c.Üyelers.OrderByDescending(x => x.ID).ToList();
            return View(deger);
        }
        [Authorize]
        public ActionResult Kategoriler()
        {
            var deger = c.Kategoris.OrderByDescending(x => x.ID).ToList();
            return View(deger);
        }
        [Authorize]
        public ActionResult KategoriSil(int id)
        {
            var deger = c.Kategoris.Find(id);
            c.Kategoris.Remove(deger);
            c.SaveChanges();
            return RedirectToAction("Kategoriler");
        }
        [Authorize]
        public ActionResult KategoriGetir(int id)
        {
            var deger = c.Kategoris.Find(id);
            return View(deger);
        }
        [Authorize]
        public ActionResult KategoriGüncelle(Kategori a)
        {
            var b = c.Kategoris.Find(a.ID);
            b.ID = a.ID;
            b.KategoriAd = a.KategoriAd;
            b.Adet = a.Adet;
            c.SaveChanges();
            return RedirectToAction("Kategoriler");
        }
        [Authorize]
        [HttpGet]
        public ActionResult YeniKategori()
        {
            return View();
        }
        [Authorize]
        [HttpPost]
        public ActionResult YeniKategori(Kategori a)
        {
            c.Kategoris.Add(a);
            c.SaveChanges();
            return RedirectToAction("Kategoriler");
        }

        //public ActionResult GelenTarif()
        //{
        //    var deger = c.Tariflers.ToList();
        //    return View(deger);
        //}



        //public ActionResult GelenTarifSil(int id)
        //{
        //    var deger = c.Tariflers.Find(id);
        //    c.Tariflers.Remove(deger);
        //    c.SaveChanges();
        //    return RedirectToAction("GelenTarif");
        //}

        //public ActionResult GelenTarifOnayla(int id)
        //{
        //    var deger = c.Tariflers.Find(id);
        //    deger.TarifOnay = true;
        //    c.SaveChanges();
        //    return RedirectToAction("GelenTarif");
        //}

        //public ActionResult GelenTarifGetir(int id)
        //{
        //    var deger = c.Tariflers.Find(id);
        //    return View(deger);
        //}

        //public ActionResult GelenTarifGüncelle(Tarifler a)
        //{
        //    var b = c.Tariflers.Find(a.ID);
        //    b.ID = a.ID;
        //    b.Adı = a.Adı;
        //    b.Mail = a.Mail;
        //    b.Tarifi = a.Tarifi;
        //    b.TarifMalzeme = a.TarifMalzeme;
        //    b.TarifOnay = a.TarifOnay;
        //    b.TarifResim = a.TarifResim;
        //    b.Tarifveren = a.Tarifveren;
        //    b.Tarih = a.Tarih;
        //    c.SaveChanges();
        //    return RedirectToAction("GelenTarifGetir");
           
        
















    }
}