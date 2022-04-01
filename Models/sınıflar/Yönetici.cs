using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Yönetici
    {
        [Key]
        public int ID { get; set; }
        public string KullanıcıAd { get; set; }
        public string Sifre { get; set; }
    }
}