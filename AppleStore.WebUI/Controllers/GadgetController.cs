using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;
using AppleStore.WebUI.Models;

namespace AppleStore.WebUI.Controllers
{
    public class GadgetController : Controller
    {
        // GET: Gadget
        private IGadgetRepository repository;
        public int pageSize = 6;

        public GadgetController(IGadgetRepository repo)
        {
            repository = repo;
        }

        public ViewResult List(string category, int page = 1)
        {
            GadgetsListViewModel model = new GadgetsListViewModel
            {
                Gadgets = repository.Gadgets
                    .Where(p => category == null || p.Category == category)
                    .OrderBy(gadget => gadget.GadgetId)
                    .Skip((page - 1) * pageSize)
                    .Take(pageSize),
                PagingInfo = new PagingInfo
                {
                    CurrentPage = page,
                    ItemsPerPage = pageSize,
                    TotalItems = category == null ?
                        repository.Gadgets.Count() :
                        repository.Gadgets.Where(gadget => gadget.Category == category).Count()
                },
                CurrentCategory = category
            };
            return View(model);
        }
        public ViewResult Details(int gadgetId)
        {
            Gadget gadget = repository.Gadgets.Single(p => p.GadgetId == gadgetId);
            return View(gadget);
        }
        public ActionResult Search(string target = "", int page = 1)
        {
            var model = new GadgetsListViewModel()
            {
                Gadgets = repository.Gadgets
                    .Where(p => p.Name.Contains(target))
                    .Skip((page - 1) * pageSize)
                    .Take(pageSize).Reverse(),
                SearchWord = target
            };

            @ViewData["target"] = target;

            if (Request.IsAjaxRequest() && !string.IsNullOrEmpty(target))
            {
                return PartialView("DisplayGadgets", model);
            }
            return View(model);
        }
        [OutputCache(Duration = 1600, Location = System.Web.UI.OutputCacheLocation.Downstream)]
        public FileResult GetImage(int gadgetId)
        {
            var photo = repository.Images.FirstOrDefault(x => x.GadgetId == gadgetId);
            return File(Server.MapPath(photo?.Path), "image/jpeg");
        }

    }
}