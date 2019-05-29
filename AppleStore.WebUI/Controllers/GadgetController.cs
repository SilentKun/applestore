using System.Linq;
using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;
using AppleStore.WebUI.Models;

namespace AppleStore.WebUI.Controllers
{
    public class GadgetController : Controller
    {
        private readonly IGadgetRepository repository;
        public int pageSize = 6;

        public GadgetController(IGadgetRepository repo)
        {
            repository = repo;
        }

        public ViewResult List(int categoryid = 0, int page = 1, bool canshowpageselector = true)
        {
            ViewBag.Gadgets = (from p in repository.Gadgets
                               where categoryid == 0 || p.SubcategoryId == categoryid
                               orderby p.GadgetId
                               select p).Reverse()
                              .Skip((page - 1) * pageSize)
                              .Take(pageSize);

            ViewBag.PagingInfo = new PagingInfo
            {
                CurrentPage = page,
                ItemsPerPage = pageSize,
                TotalItems = categoryid == 0 ?
                    repository.Gadgets.Count() :
                    repository.Gadgets.Count(gadget => gadget.SubcategoryId == categoryid)
            };

            ViewBag.CanShowPageSelector = canshowpageselector;
            return View();
        }
        public ViewResult Details(int gadgetId)
        {
            Gadget gadget = repository.Gadgets.Single(p => p.GadgetId == gadgetId);
            return View(gadget);
        }

        public ActionResult Search(string target, int page = 1)
        {
            ViewBag.Gadgets = (from g in repository.Gadgets
                               where g.Name.Contains(target)
                               select g)
                              .Skip((page - 1) * pageSize)
                              .Take(pageSize).Reverse();

            ViewBag.PagingInfo = new PagingInfo
            {
                CurrentPage = page,
                ItemsPerPage = pageSize,
                TotalItems = repository.Gadgets.Where(g => g.Name.Contains(target)).Count()
            };

            ViewBag.SearchValue = target;

            return View();
        }
        [OutputCache(Duration = 2000, Location = System.Web.UI.OutputCacheLocation.Downstream)]
        public FileResult GetImage(int gadgetId = 0)
        {
            return File(Server.MapPath($"~/Pictures/{gadgetId}.jpg"), "image/jpeg");
        }

    }
}