namespace AppleStore.Domain.Entities
{
    public class Subcategory
    {
        public int Id { get; set; }
        public int CategoryId { get; set; }
        public string Title { get; set; }

        public Category Category { get; set; }
    }
}
