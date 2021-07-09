using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Models
{
    public class ChapterModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Content { get; set; }
        public DateTime Date { get; set; }
        public int ChapterCount { get; set; }
        public int NovelId { get; set; }
        public string NovelName { get; set; }

    }
}