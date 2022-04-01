using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Yorumlar
    {
        [Key]
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public string Mail { get; set; }
        public string Yorum { get; set; }
        public string Tarih { get; set; }
        public Boolean YorumOnay { get; set; }
        public int Yemekid { get;  set; }
        public virtual Yemekler Yemek { get; set; }
    }
}