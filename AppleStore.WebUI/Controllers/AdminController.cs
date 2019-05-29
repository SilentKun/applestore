using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;

namespace AppleStore.WebUI.Controllers
{
    public class AdminController : Controller
    {
        IGadgetRepository repository;

        public AdminController(IGadgetRepository repo)
        {
            repository = repo;
        }
        //[Authorize(Roles = "Administrator")]
        public ViewResult Index()
        {
            return View(repository.Gadgets);
        }
        public ViewResult Edit(int gadgetId)
        {
            Gadget gadget = repository.Gadgets
                .FirstOrDefault(g => g.GadgetId == gadgetId);
            return View(gadget);
        }
        [HttpPost]
        public ActionResult Edit(Gadget gadget)
        {
            if (ModelState.IsValid)
            {
                repository.SaveGadget(gadget);
                TempData["message"] = string.Format("Изменения в игре \"{0}\" были сохранены", gadget.Name);
                return RedirectToAction("Index");
            }
            else
            {
                // Что-то не так со значениями данных
                return View(gadget);
            }
        }
    }
}