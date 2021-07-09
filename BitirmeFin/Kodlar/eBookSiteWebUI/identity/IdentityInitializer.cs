using eBookSiteWebUI.Entity;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace eBookSiteWebUI.identity
{
    public class IdentityInitializer: CreateDatabaseIfNotExists<IdentityDataContext>
    {
        protected override void Seed(IdentityDataContext context)
        {
            //Rolleri
            if (!context.Roles.Any(i=>i.Name=="admin"))
            {
                var store = new RoleStore<ApplicationRole>(context);
                var manager =new  RoleManager<ApplicationRole>(store);
                var role = new ApplicationRole() { Name="admin",Description="yönetici rolü"};
                manager.Create(role);
            }

            if (!context.Roles.Any(i => i.Name == "user"))
            {
                var store = new RoleStore<ApplicationRole>(context);
                var manager = new RoleManager<ApplicationRole>(store);
                var role = new ApplicationRole() { Name = "user", Description = "user rolü" };
                manager.Create(role);
            }

            if (!context.Users.Any(i => i.Name == "alibaran"))
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                var user = new ApplicationUser() { Name="Ali",SurName="Baran",UserName="alibaran",Email="alibaran@gmail.com"};
                manager.Create(user,"1234567");
                manager.AddToRole(user.Id, "admin");
                manager.AddToRole(user.Id, "user");
            }

            if (!context.Users.Any(i => i.Name == "burakcelik"))
            {
                var store = new UserStore<ApplicationUser>(context);
                var manager = new UserManager<ApplicationUser>(store);
                var user = new ApplicationUser() { Name = "Burak", SurName = "Çelik", UserName = "burakcelik", Email = "burakcelik@gmail.com" };
                manager.Create(user, "123456789");

                manager.AddToRole(user.Id, "user");
            }


            base.Seed(context);
        }



    }
}