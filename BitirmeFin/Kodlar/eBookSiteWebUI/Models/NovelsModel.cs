using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Models
{
    public class NovelsModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public string Author { get; set; }
        public string Status { get; set; }
        public string Summary { get; set; }
        

        public int GenreId { get; set; }


      
    }
}