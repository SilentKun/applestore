namespace AppleStore.Domain.Entities
{
    public class Display
    {
        public int Id { get; set; }
        public int? ResolutionW { get; set; }
        public int? ResolutionH { get; set; }
        public decimal? Diagonal { get; set; }
        public decimal? AspectRatioW { get; set; }
        public int? AspectRatioH { get; set; }
        public int? DisplayTechnologyId { get; set; }
        public int? PPI { get; set; }

        public DisplayTechnology DisplayTechnology { get; set; }
    }
}
