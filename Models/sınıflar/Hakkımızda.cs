using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace YemekTarif.Models.sınıflar
{
    public class Hakkımızda
    {
        [Key]
        public int ID { get; set; }
        public string yazi { get; set; }
    }
}