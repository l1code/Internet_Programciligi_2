using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Entity
{
    public class Novel
    {
        public int Id { get; set; }
        [DisplayName("Kitap Adı")]
        public string Name { get; set; }
        [DisplayName("Kitap Resmi")]
        public string Image { get; set; }
        [DisplayName("Kitap Yazarı")]
        public string Author { get; set; }
        [DisplayName("Kitap Durum")]
        public string Status { get; set; }
        [DisplayName("Kitap Özet")]
        public string Summary { get; set; }
        [DisplayName("Kitap GösterilsinMi")]
        public bool isHome { get; set; }
        [DisplayName("Kitap Türü")]
        public int GenreId { get; set; }

        public Genre Genre { get; set; }


        public List<Chapter> Chapters{ get; set; }


    }
}