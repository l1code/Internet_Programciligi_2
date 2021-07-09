using eBookSiteWebUI.Entity;
using eBookSiteWebUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace eBookSiteWebUI.Controllers
{
    public class NovelController : Controller
    {

        DataContext _context = new DataContext();


        // GET: Novel
        public ActionResult Index(int? id)
        {
            var novels = _context.Novels
                 .Where(i => i.isHome == true)
                 .Select(i => new NovelsModel()
                 {

                     Id = i.Id,
                     Name = i.Name,
                     Author = i.Author,
                     Status = i.Status,
                     Image = i.Image == null ? "1.jpg" : i.Image,
                     Summary = i.Summary.Length > 50 ? i.Summary.Substring(0, 47) + "..." : i.Summary,
                     GenreId = i.GenreId

                 }).ToList().AsQueryable();

            if (id!=null)
            {
                novels = novels.Where(i => i.GenreId == id);
            }

            return View(novels.ToList());
        }

        public ActionResult Details(int id)
        {
            return View(_context.Novels.Where(i=>i.Id==id).FirstOrDefault());
        }

        public ActionResult Chapter(int id)
        {
            return View(_context.Chapters.Where(i=>i.NovelId==id).FirstOrDefault());
        }

        public PartialViewResult GetGenres()
        {
            return PartialView(_context.Genres.ToList());
        }


    }
}