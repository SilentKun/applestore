using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AppleStore.Domain.Entities;

namespace AppleStore.WebUI.Models
{
    public class GadgetsListViewModel
    {
        public IEnumerable<Gadget> Gadgets { get; set; }
        public PagingInfo PagingInfo { get; set; }
        public string CurrentCategory { get; set; }
        public string SearchWord { get; set; }
    }
}