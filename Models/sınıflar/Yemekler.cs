using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Yemekler
    {
        [Key]
        public int ID { get; set; }
        public string Ad { get; set; }
        public string YemekMalzeme { get; set; }
        public string Tarif { get; set; }
        public string YemekResim { get; set; }
        public string Tarih { get; set; }
        public float Puan { get; set; }
        public  Boolean YemekOnay {get; set;}

        public int Tıklanma { get; set; }
        public int Kategoriid { get; set; }
        public ICollection<Yorumlar> Yorumlars { get; set; }
        public virtual Kategori kategori { get; set; }

    }
}