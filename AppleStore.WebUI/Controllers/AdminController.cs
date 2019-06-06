namespace AppleStore.WebUI.Controllers
{
    using System.Linq;
    using System.Web.Mvc;
    using AppleStore.Domain.Abstract;
    using AppleStore.Domain.Entities;

    [Authorize(Roles = "Administrator")]
    public class AdminController : Controller
    {
        private readonly IGadgetRepository repository;

        public AdminController(IGadgetRepository repo) => repository = repo;

        public ViewResult Index()
        {
            return View(repository.Gadgets);
        }

        [HttpGet]
        public ViewResult Create()
        {
            SetViewBag();
            return View(new Gadget());
        }
        [HttpGet]
        public ViewResult Edit(int gadgetId)
        {
            var gadget = repository.Gadgets.FirstOrDefault(g => g.GadgetId == gadgetId);
            SetViewBag(gadget);
            return View(gadget);
        }

        [HttpPost]
        public ActionResult Edit(Gadget gadget)
        {
            if (ModelState.IsValid)
            {
                repository.SaveGadget(gadget);
                TempData["message"] = $"Изменения в товаре \"{gadget.Name}\" были сохранены";
                return RedirectToAction("Index");
            }

            SetViewBag(gadget);
            return View(gadget);
        }

        [HttpPost]
        public ActionResult Create(Gadget gadget)
        {
            if (ModelState.IsValid)
            {
                repository.SaveGadget(gadget);
                TempData["message"] = $"Успешно добавлен \"{gadget.Name}\"";
                return RedirectToAction("Index");
            }
            SetViewBag();
            return View(gadget);
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

        public void SetViewBag(Gadget gadget = null)
        {
            ViewBag.Categories = new SelectList(repository.Categories, "Id", "Title", gadget == null ? null : gadget.Category);
            ViewBag.Subcategories = new SelectList(repository.Subcategories, "Id", "Title", gadget == null ? null : gadget.Subcategory);
            ViewBag.OperatingSystems = new SelectList(repository.OperatingSystems, "Id", "Title", gadget == null ? null : gadget.OperatingSystem);
            ViewBag.CPUs = new SelectList(repository.CPUs, "Id", "Title", gadget == null ? null : gadget.CPU);
            ViewBag.Materials = new SelectList(repository.Materials, "Id", "Title", gadget == null ? null : gadget.Casing.Material);
            ViewBag.WaterResistants = new SelectList(repository.WaterResistants, "Id", "Title", gadget == null ? null : gadget.Casing.WaterResistant);
            ViewBag.DisplayTechnologies = new SelectList(repository.DisplayTechnologies, "Id", "Title", gadget == null ? null : gadget.Display.DisplayTechnology);
        }
    }
}