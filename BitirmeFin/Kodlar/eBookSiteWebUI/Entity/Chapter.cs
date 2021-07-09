using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Entity
{
    public class Chapter
    {
        public int Id { get; set; }
        [DisplayName("Bölüm İsmi")]
        public string Name { get; set; }
        [DisplayName("Bölüm İçerik")]
        public string Content { get; set; }
        [DisplayName("Bölüm Tarihi")]
        public DateTime Date { get; set; }
        [DisplayName("Bölüm Sayısı")]
        public int ChapterCount { get; set; }
        [DisplayName("Kitap Seç")]
        public int NovelId { get; set; }
        public Novel Novel { get; set; }
       
    }
}