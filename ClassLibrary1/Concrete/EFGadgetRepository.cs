using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppleStore.Domain.Entities;
using AppleStore.Domain.Abstract;

namespace AppleStore.Domain.Concrete
{
    public class EFGadgetRepository : IGadgetRepository
    {
        EFDbContext context = new EFDbContext();
        public IEnumerable<Gadget> Gadgets
        {
            get { return context.Gadgets; }
        }
        public IEnumerable<Image> Images
        {
            get { return context.Images; }
        }
        public IEnumerable<Order> Orders
        {
            get { return context.Orders; }
        }

        public void SaveOrder(Order order)
        {
            context.Orders.Add(order);
            context.SaveChanges();
        }
    }
}
