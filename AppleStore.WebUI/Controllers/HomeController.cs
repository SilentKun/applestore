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
            foreach (var item228 in res)
            {
                var итем = repository.Gadgets.First(g => g.GadgetId == item228.GadgetID);
                list.Add(итем);
            }

            return View(list);
        }


    }
}