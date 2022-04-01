using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace YemekTarif.Models.sınıflar
{
    public class Context:DbContext
    {
        public DbSet<Hakkımızda>Hakkımızdas { get; set; }
        public DbSet<Kategori> Kategoris { get; set; }
        public DbSet<Mesajlar> Mesajlars { get; set; }
        public DbSet<Tarifler> Tariflers { get; set; }
        public DbSet<Üyeler> Üyelers { get; set; }
        public DbSet<Yemekler> Yemeklers { get; set; }
        public DbSet<Yorumlar> Yorumlars { get; set; }
        public DbSet<Yönetici> Yöneticis { get; set; }
      
    }
}