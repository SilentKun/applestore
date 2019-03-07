using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AppleStore.Domain.Abstract;

namespace AppleStore.WebUI.Controllers
{
    public class NavController : Controller
    {
        // GET: Nav
        private IGadgetRepository repository;

        public NavController(IGadgetRepository repo)
        {
            repository = repo;
        }

        public PartialViewResult Menu(string category = null)
        {
            ViewBag.SelectedCategory = category;

            IEnumerable<string> categories = repository.Gadgets
                .Select(art => art.Category)
                .Distinct()
                .OrderBy(x => x);
            return PartialView(categories);
        }
    }
}