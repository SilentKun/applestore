using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using AppleStore.WebUI.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;

namespace AppleStore.WebUI.Controllers
{
    public class AccountController : Controller
    {
        private ApplicationUserManager UserManager => HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
        private IAuthenticationManager AuthenticationManager => HttpContext.GetOwinContext().Authentication;

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Register(RegisterModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var user = new ApplicationUser { UserName = model.Email, Email = model.Email, Name = model.Name };

            // добавляем роли в бд
            var result = await UserManager.CreateAsync(user, model.Password);

            if (result.Succeeded)
            {
                return RedirectToAction("Login", "Account");
            }

            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
            return View(model);
        }

        public ActionResult Login(string returnUrl)
        {
            ViewBag.returnUrl = returnUrl;
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
               
                ApplicationUser user = await UserManager.FindAsync(model.Email, model.Password);
                if (user == null)
                {
                    ModelState.AddModelError("", "Неверный логин или пароль.");
                }
                else
                {
                   
                    var claim = await UserManager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
                    
                    AuthenticationManager.SignOut();
                    AuthenticationManager.SignIn(new AuthenticationProperties
                    {
                        IsPersistent = true
                    }, claim);
                    if (string.IsNullOrEmpty(returnUrl))
                        return RedirectToAction("Index", "Home");
                    return Redirect(returnUrl);
                }
            }
            ViewBag.returnUrl = returnUrl;
            return View(model);
        }
        public ActionResult Logout()
        {
            AuthenticationManager.SignOut();
            return RedirectToAction("Login");
        }
    }
}