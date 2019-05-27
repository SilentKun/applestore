using System.Linq;
using System.Web.Mvc;
using AppleStore.Domain.Entities;
using AppleStore.Domain.Abstract;
using AppleStore.WebUI.Models;
using Microsoft.AspNet.Identity;

namespace AppleStore.WebUI.Controllers
{
    public class CartController : Controller
    {
        private readonly IGadgetRepository repository;
        private IOrderProcessor orderProcessor;

        public CartController(IGadgetRepository repo, IOrderProcessor processor)
        {
            repository = repo;
            orderProcessor = processor;
        }
        public RedirectToRouteResult RemoveOne(Cart cart, int gadgetId, string returnUrl)
        {
            var art = repository.Gadgets.FirstOrDefault(g => g.GadgetId == gadgetId);

            if (art != null)
            {
                cart.RemoveOne(art);
            }

            return RedirectToAction("Index", new { returnUrl });
        }
        public ActionResult HaveGadgetInCart(Cart cart, int gadgetId)
        {
            string viewname = cart.HaveInCart(gadgetId) ? "HaveInCart" : "NotInCart";
            return PartialView(viewname);
        }
        public ViewResult Checkout()
        {
            return View(new ShippingDetails());
        }

        [HttpPost]
        public ViewResult Checkout(Cart cart, ShippingDetails shippingDetails)
        {
            if (cart.Lines.Count() == 0)
            {
                ModelState.AddModelError("", "Извините, ваша корзина пуста!");
            }
            if (ModelState.IsValid)
            {

                foreach (var item in cart.Lines)
                {
                    repository.SaveOrder(new Order { UserID = User.Identity.GetUserId(), GadgetID = item.Gadget.GadgetId });
                }

            orderProcessor.ProcessOrder(cart, shippingDetails);
                cart.Clear();
                return View("Completed");
            }
            else
            {
                return View(shippingDetails);
            }
        }

        public ViewResult Index(Cart cart, string returnUrl)
        {
            return View(new CartIndexViewModel
            {
                Cart = cart,
                ReturnUrl = returnUrl
            });
        }

        public PartialViewResult Summary(Cart cart)
        {
            return PartialView(cart);
        }

        public RedirectToRouteResult AddToCart(Cart cart, int gadgetId, string returnUrl)
        {
            Gadget gadget = repository.Gadgets
                .FirstOrDefault(g => g.GadgetId == gadgetId);

            if (gadget != null)
            {
                cart.AddItem(gadget, 1);
            }
            return RedirectToAction("Index", new { returnUrl });
        }

        public RedirectToRouteResult RemoveFromCart(Cart cart, int gadgetId, string returnUrl)
        {
            Gadget gadget = repository.Gadgets
                .FirstOrDefault(g => g.GadgetId == gadgetId);

            if (gadget != null)
            {
                cart.RemoveLine(gadget);
            }
            return RedirectToAction("Index", new { returnUrl });
        }
    }
}