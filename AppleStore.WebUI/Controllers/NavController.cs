namespace AppleStore.WebUI.Controllers
{
    using System.Linq;
    using System.Web.Mvc;
    using AppleStore.Domain.Abstract;

    public class NavController : Controller
    {
        private readonly IGadgetRepository repository;

        public NavController(IGadgetRepository repo)
        {
            repository = repo;
        }

        public PartialViewResult Menu()
        {
            ViewBag.Companies = repository.Companies.Where(c => !c.Title.Contains("Apple"));
            ViewBag.Categories = repository.Categories;
            ViewBag.Subcategories = repository.Subcategories;

            return PartialView();
        }
    }
}