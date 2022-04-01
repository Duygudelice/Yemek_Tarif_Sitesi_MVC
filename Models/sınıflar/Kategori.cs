using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Kategori
    {
        [Key]
        public int ID { get; set; }
        public string KategoriAd { get; set; }
        public int Adet { get; set; }
         public ICollection<Yemekler> Yemeklers { get; set; }
    }
}