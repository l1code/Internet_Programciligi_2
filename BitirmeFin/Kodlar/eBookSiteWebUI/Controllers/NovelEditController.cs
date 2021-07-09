using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using eBookSiteWebUI.Entity;

namespace eBookSiteWebUI.Controllers
{
    public class NovelEditController : Controller
    {
        private DataContext db = new DataContext();

        // GET: NovelEdit
        public ActionResult Index()
        {
            var novels = db.Novels.Include(n => n.Genre);
            return View(novels.ToList());
        }

        // GET: NovelEdit/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Novel novel = db.Novels.Find(id);
            if (novel == null)
            {
                return HttpNotFound();
            }
            return View(novel);
        }

        // GET: NovelEdit/Create
        public ActionResult Create()
        {
            ViewBag.GenreId = new SelectList(db.Genres, "Id", "Name");
            return View();
        }

        // POST: NovelEdit/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Image,Author,Status,Summary,isHome,GenreId")] Novel novel)
        {
            if (ModelState.IsValid)
            {
                db.Novels.Add(novel);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.GenreId = new SelectList(db.Genres, "Id", "Name", novel.GenreId);
            return View(novel);
        }

        // GET: NovelEdit/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Novel novel = db.Novels.Find(id);
            if (novel == null)
            {
                return HttpNotFound();
            }
            ViewBag.GenreId = new SelectList(db.Genres, "Id", "Name", novel.GenreId);
            return View(novel);
        }

        // POST: NovelEdit/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Image,Author,Status,Summary,isHome,GenreId")] Novel novel)
        {
            if (ModelState.IsValid)
            {
                db.Entry(novel).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.GenreId = new SelectList(db.Genres, "Id", "Name", novel.GenreId);
            return View(novel);
        }

        // GET: NovelEdit/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Novel novel = db.Novels.Find(id);
            if (novel == null)
            {
                return HttpNotFound();
            }
            return View(novel);
        }

        // POST: NovelEdit/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Novel novel = db.Novels.Find(id);
            db.Novels.Remove(novel);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
