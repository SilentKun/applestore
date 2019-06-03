namespace AppleStore.Domain.Abstract
{
    using System.Collections.Generic;
    using AppleStore.Domain.Entities;
    public interface IGadgetRepository
    {
        IEnumerable<Gadget> Gadgets { get; }
        IEnumerable<Order> Orders { get; }
        IEnumerable<Category> Categories { get; }
        IEnumerable<Subcategory> Subcategories { get; }

        IEnumerable<Company> Companies { get; }
        void SaveOrder(Order order);
        void SaveGadget(Gadget gadget);
        Gadget DeleteGadget(int gadgetId);
    }
}