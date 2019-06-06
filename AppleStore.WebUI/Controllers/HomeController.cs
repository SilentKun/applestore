using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;
using System.Linq;
using Microsoft.AspNet.Identity;
using System.Collections.Generic;

namespace AppleStore.WebUI.Controllers
{
    public struct OrderStr
    {
        public Gadget Gadget;
        public int Count;
    }
    public class HomeController : Controller
    {
        private IGadgetRepository repository;

        public HomeController(IGadgetRepository repo)
        {
            repository = repo;
        }
        public ViewResult Index()
        {
            var res = repository.Orders
                .Where(g => g.UserID == User.Identity.GetUserId());
            var list2 = new List<OrderStr>();

            foreach (var itemz in res)
            {
                var item = repository.Gadgets.First(g => g.GadgetId == itemz.GadgetID);
                list2.Add(new OrderStr {Gadget = item, Count = itemz.Count});
            }

            ViewBag.List = list2;
            return View();
        }


    }
}