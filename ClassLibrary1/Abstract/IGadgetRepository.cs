using System.Collections.Generic;
using AppleStore.Domain.Entities;

namespace AppleStore.Domain.Abstract
{
    public interface IGadgetRepository
    {
        IEnumerable<Gadget> Gadgets { get; }
        IEnumerable<Image> Images { get; }
        IEnumerable<Order> Orders { get; }
        void SaveOrder(Order order);
    }
}