using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.Entity
{
    public class DataContext : DbContext
    {
        public DataContext():base("dataConnection")
        {
            Database.SetInitializer( new DataInitializer());
        }
        public DbSet<Novel> Novels { get; set; }
        public DbSet<Genre> Genres { get; set; }

        public DbSet<Chapter> Chapters { get; set; }
        

    }
}