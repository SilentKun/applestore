using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppleStore.Domain.Entities
{
    public class Order
    {
        public int OrderID { get; set; }
        public string UserID { get; set; }
        public int GadgetID { get; set; }
        
    }
}
