namespace AppleStore.Domain.Entities
{
    public class Casing
    {
        public int Id { get; set; }
        public int GadgetId { get; set; }
        public int Weight { get; set; }
        public int? MaterialId { get; set; }
        public int? WaterResistantId { get; set; }
        public decimal Width { get; set; }
        public decimal Height { get; set; }
        public decimal Thickness { get; set; }

        public Material Material { get; set; }
        public WaterResistant WaterResistant { get; set; }
    }
}
