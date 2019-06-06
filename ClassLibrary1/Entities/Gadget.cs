namespace AppleStore.Domain.Entities
{
    using System.ComponentModel.DataAnnotations;
    public class Gadget
    {
        [ScaffoldColumn(false)]
        public int GadgetId { get; set; }

        [Required]
        [StringLength(200, MinimumLength=3)]
        public string Name { get; set; }
        [Required]
        public int CategoryId { get; set; }
        [Required]
        public int SubcategoryId { get; set; }
        [Required]
        [DataType(DataType.Currency)]
        public decimal Price { get; set; }

        public int OperatingSystemId { get; set; }
        public int? DisplayId { get; set; }
        public int? CPUId { get; set; }
        public int? CameraId { get; set; }
        public int CasingId { get; set; }

        [StringLength(50, MinimumLength = 3)]
        public string SIMType { get; set; }
        [StringLength(50, MinimumLength = 3)]
        public string MiniJack { get; set; }
        [StringLength(50, MinimumLength = 3)]
        public string BatteryCapacity { get; set; }
        [StringLength(50, MinimumLength = 3)]
        public string Sensors { get; set; }
        [StringLength(50, MinimumLength = 3)]
        public string Equipment { get; set; }
        public int RAM { get; set; }
        public int ROM { get; set; }

        public OperatingSystem OperatingSystem { get; set; }
        public Display Display { get; set; }
        public CPU CPU { get; set; }
        public Camera Camera { get; set; }
        public Casing Casing { get; set; }
        public Category Category { get; set; }
        public Subcategory Subcategory { get; set; }
    }
}
