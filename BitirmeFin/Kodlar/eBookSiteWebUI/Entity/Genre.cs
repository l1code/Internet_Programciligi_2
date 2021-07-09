using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Entity
{
    public class Genre
    {
        public int Id { get; set; }


        [DisplayName("Tür Adı")]
        [StringLength(maximumLength:20,ErrorMessage ="En fazla 20 karakter girebilirsiniz.")]
        public string Name { get; set; }
        public List<Novel> Novels { get; set; }
    }
}