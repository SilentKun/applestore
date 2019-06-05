using System.Linq;
using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;

namespace AppleStore.WebUI.Controllers
{
    [Authorize(Roles = "Administrator")]
    public class AdminController : Controller
    {
        private readonly IGadgetRepository repository;

        public AdminController(IGadgetRepository repo) => repository = repo;

        public ViewResult Index()
        {
            return View(repository.Gadgets);
        }


        public ViewResult Edit(int gadgetId)
        {
            var gadget = repository.Gadgets
                .FirstOrDefault(g => g.GadgetId == gadgetId);
            return View(gadget);
        }

        [HttpPost]
        public ActionResult Edit(Gadget gadget)
        {
            if (ModelState.IsValid)
            {
                repository.SaveGadget(gadget);
                TempData["message"] = string.Format("Изменения в товаре \"{0}\" были сохранены", gadget.Name);
                return RedirectToAction("Index");
            }

            // Что-то не так со значениями данных
            return View(gadget);
        }


        [HttpPost]
        public ActionResult Create(Gadget gadget)
        {
            if (ModelState.IsValid)
            {
                repository.SaveGadget(gadget);
                TempData["message"] = string.Format("Изменения в товаре \"{0}\" были сохранены", gadget.Name);
                return RedirectToAction("Index");
            }

            // Что-то не так со значениями данных
            return View(gadget);
        }

        public ViewResult Create()
        {
            ViewBag.mmm = new SelectList(repository.Categories, "Id", "Title");
            ViewBag.mmm1 = new SelectList(repository.Companies, "Id", "Title");
            ViewBag.mmm2 = new SelectList(repository.OperatingSystems, "Id", "Title");
            ViewBag.mmm3 = new SelectList(repository.Subcategories, "Id", "Title");
            ViewBag.mmm4 = new SelectList(repository.CPUs, "Id", "Title");
            ViewBag.mmm5 = new SelectList(repository.Materials, "Id", "Title");
            ViewBag.mmm6 = new SelectList(repository.WaterResistants, "Id", "Title");
            ViewBag.mmm7 = new SelectList(repository.DisplayTechnologies, "Id", "Title");

            return View(new Gadget());
        }

        [HttpPost]
        public ActionResult Delete(int gadgetId)
        {
            var deletedGame = repository.DeleteGadget(gadgetId);
            if (deletedGame != null)
            {
                TempData["message"] = $"Товар \"{deletedGame.Name}\" был удален";
            }
            return RedirectToAction("Index");
        }
    }
}