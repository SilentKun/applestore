namespace AppleStore.Domain.Concrete
{
    using System.Collections.Generic;
    using AppleStore.Domain.Entities;
    using AppleStore.Domain.Abstract;
    using System.Data.Entity;

    public class EFGadgetRepository : IGadgetRepository
    {
        public EFDbContext context = new EFDbContext();

        public IEnumerable<Gadget> Gadgets
        {
            get
            {
                return context.Gadgets
                    .Include(g => g.CPU)
                    .Include(g => g.Camera)
                    .Include(g => g.Display)
                    .Include(g => g.OperatingSystem)
                    .Include(g => g.Company)
                    .Include(g => g.Casing)
                    .Include(g => g.Casing.WaterResistant)
                    .Include(g => g.Casing.Material)
                    .Include(g => g.Display.DisplayTechnology)
                    .Include(g => g.Category)
                    .Include(g => g.Subcategory);
            }
        }

        public IEnumerable<Order> Orders => context.Orders;
        public IEnumerable<Camera> Cameras => context.Cameras;
        public IEnumerable<Casing> Casings => context.Casings;
        public IEnumerable<Display> Displays => context.Displays;
        public IEnumerable<CPU> CPUs => context.CPUs;
        public IEnumerable<OperatingSystem> OperatingSystems => context.OperatingSystems;
        public IEnumerable<Company> Companies => context.Companies;
        public IEnumerable<WaterResistant> WaterResistants => context.WaterResistants;
        public IEnumerable<Material> Materials => context.Materials;
        public IEnumerable<DisplayTechnology> DisplayTechnologies => context.DisplayTechnologies;
        public IEnumerable<Category> Categories
        {
            get
            {
                return context.Categories
                    .Include(c => c.Company);
            }
        }

        public IEnumerable<Subcategory> Subcategories
        {
            get
            {
                return context.Subcategories
                    .Include(s => s.Category)
                    .Include(s => s.Category.Company);
            }
        }

        public void SaveOrder(Order order)
        {
            context.Orders.Add(order);
            context.SaveChanges();
        }
    }
}
