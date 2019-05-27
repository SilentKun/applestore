namespace AppleStore.Domain.Concrete
{
    using AppleStore.Domain.Entities;
    using System.Data.Entity;
    public class EFDbContext : DbContext
    {
        public DbSet<Gadget> Gadgets { get; set; }
        public DbSet<CPU> CPUs { get; set; }
        public DbSet<Camera> Cameras { get; set; }
        public DbSet<Casing> Casings { get; set; }
        public DbSet<Display> Displays { get; set; }
        public DbSet<OperatingSystem> OperatingSystems { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<WaterResistant> WaterResistants { get; set; }
        public DbSet<Material> Materials { get; set; }
        public DbSet<DisplayTechnology> DisplayTechnologies { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Subcategory> Subcategories { get; set; }

    }
}
