using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Mesajlar
    {
        [Key]
        public int ID { get; set; }
        public  string AdSoyad { get; set; }
        public string Mail { get; set; }
        public string Mesaj { get; set; }
    }
}