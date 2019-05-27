namespace AppleStore.Domain.Entities
{
    public class Category
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int CompanyId { get; set; }

        public Company Company { get; set; }
    }
}
