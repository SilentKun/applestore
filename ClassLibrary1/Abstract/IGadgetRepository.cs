using System.Collections;

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
        IEnumerable<OperatingSystem> OperatingSystems { get; }
        IEnumerable<CPU> CPUs { get; }
        IEnumerable<Material> Materials { get; }
        IEnumerable<WaterResistant> WaterResistants { get; }
        IEnumerable<DisplayTechnology> DisplayTechnologies { get; }

        void SaveOrder(Order order);
        void SaveGadget(Gadget gadget);
        Gadget DeleteGadget(int gadgetId);
    }
}