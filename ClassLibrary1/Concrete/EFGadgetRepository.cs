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
                    .Include(g => g.Casing)
                    .Include(g => g.Casing.WaterResistant)
                    .Include(g => g.Casing.Material)
                    .Include(g => g.Display.DisplayTechnology)
                    .Include(g => g.Category)
                    .Include(g => g.Category.Company)
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

        public void SaveGadget(Gadget gadget)
        {
            var dbEntry = context.Gadgets.Find(gadget.GadgetId);
            if (dbEntry != null)
            {
                dbEntry.Name = gadget.Name;
                dbEntry.Price = gadget.Price;
                dbEntry.CategoryId = gadget.CategoryId;
                dbEntry.SubcategoryId = gadget.SubcategoryId;
                dbEntry.BatteryCapacity = gadget.BatteryCapacity;
                dbEntry.CPUId = gadget.CPUId;
                dbEntry.RAM = gadget.RAM;
                dbEntry.Equipment = gadget.Equipment;
                dbEntry.ROM = gadget.ROM;
                dbEntry.MiniJack = gadget.MiniJack;
                dbEntry.SIMType = gadget.SIMType;
                dbEntry.Sensors = gadget.Sensors;
                dbEntry.Display = gadget.Display;
                if (dbEntry.CameraId.HasValue)
                {
                    var dbcamera = context.Cameras.Find(dbEntry.CameraId);
                    dbcamera.CameraResolution = gadget.Camera.CameraResolution;
                    dbcamera.VidResolutionH = gadget.Camera.VidResolutionH;
                    dbcamera.VidResolutionW = gadget.Camera.VidResolutionW;
                }
                else
                {
                    dbEntry.Camera = gadget.Camera;
                }
                dbEntry.Casing = gadget.Casing;
                dbEntry.Casing.WaterResistantId = gadget.Casing.WaterResistantId;

                dbEntry.Casing.MaterialId = gadget.Casing.MaterialId;

                if (gadget.Display != null)
                    dbEntry.Display.DisplayTechnologyId = gadget.Display.DisplayTechnologyId;

                dbEntry.OperatingSystemId = gadget.OperatingSystemId;
            }
            else
            {
                context.Gadgets.Add(gadget);
            }
            context.SaveChanges();
        }
        public Gadget DeleteGadget(int gadgetId)
        {
            Gadget dbEntry = context.Gadgets.Find(gadgetId);
            if (dbEntry != null)
            {
                var dbcamera = context.Cameras.Find(dbEntry.CameraId);
                if (dbcamera != null)
                    context.Cameras.Remove(dbcamera);

                var dbcasing = context.Casings.Find(dbEntry.CasingId);
                if (dbcasing != null)
                    context.Casings.Remove(dbcasing);

                var dbdisplay = context.Displays.Find(dbEntry.DisplayId);
                if (dbdisplay != null)
                    context.Displays.Remove(dbdisplay);

                context.Gadgets.Remove(dbEntry);
                context.SaveChanges();
            }
            return dbEntry;
        }
    }
}
