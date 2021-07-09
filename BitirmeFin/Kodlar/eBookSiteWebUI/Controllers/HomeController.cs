using eBookSiteWebUI.Entity;
using eBookSiteWebUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace eBookSiteWebUI.Controllers
{
    public class HomeController : Controller
    {

        DataContext _context = new DataContext();

        // GET: Home
        public ActionResult Index()
        {
            var novels = _context.Novels
                .Where(i => i.isHome == true)
                .Select(i => new NovelsModel()
                {

                    Id = i.Id,
                    Name = i.Name,
                    Author=i.Author,
                    Status=i.Status,
                    Image=i.Image,
                    Summary = i.Summary.Length > 50 ? i.Summary.Substring(0, 47) + "...":i.Summary,
                    GenreId=i.GenreId
                    
                   




                }).ToList();           
                

            return View(novels);
        }

        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult Privacy()
        {
            return View();
        }

    }
}