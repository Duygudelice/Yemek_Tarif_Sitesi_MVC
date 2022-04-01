using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Tarifler
    {
        [Key]
        public int ID { get; set; }
        public string Adı { get; set; }
        public string TarifMalzeme { get; set; }
        public string Tarifi { get; set; }
        public string TarifResim { get; set; }
        public string Tarih { get; set; }
       
        public string Tarifveren { get; set; }
        public string Mail { get; set; }
        public Boolean TarifOnay { get; set; }
    }
}