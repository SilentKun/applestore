using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;
namespace AppleStore.WebUI.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Name { get; set; }
        public ApplicationUser()
        {
        }
    }
}