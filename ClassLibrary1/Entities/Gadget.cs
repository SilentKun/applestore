namespace AppleStore.Domain.Entities
{
    public class Gadget
    {
        public int GadgetId { get; set; }
        public string Name { get; set; }
        public int CategoryId { get; set; }
        public int SubcategoryId { get; set; }
        public int CompanyId { get; set; }
        public decimal Price { get; set; }
        public int OperatingSystemId { get; set; }
        public int? DisplayId { get; set; }
        public int? CPUId { get; set; }
        public int? CameraId { get; set; }
        public int CasingId { get; set; }
        public string SIMType { get; set; }
        public string MiniJack { get; set; }
        public string BatteryCapacity { get; set; }
        public string Sensors { get; set; }
        public string Equipment { get; set; }
        public int RAM { get; set; }
        public int ROM { get; set; }

        public Company Company { get; set; }
        public OperatingSystem OperatingSystem { get; set; }
        public Display Display { get; set; }
        public CPU CPU { get; set; }
        public Camera Camera { get; set; }
        public Casing Casing { get; set; }
        public Category Category { get; set; }
        public Subcategory Subcategory { get; set; }
    }
}
