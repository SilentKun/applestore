using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;
using AppleStore.WebUI.Models;
using System.Linq;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;

namespace AppleStore.WebUI.Controllers
{
    public class HomeController : Controller
    {
        private IGadgetRepository repository;

        public HomeController(IGadgetRepository repo)
        {
            repository = repo;
        }
        public ViewResult Index()
        {
            var list = new List<Gadget>();
            var res = repository.Orders
                .Where(g => g.UserID == User.Identity.GetUserId());
            foreach (var itemz in res)
            {
                var item = repository.Gadgets.First(g => g.GadgetId == itemz.GadgetID);
                list.Add(item);
            }

            return View(list);
        }


    }
}