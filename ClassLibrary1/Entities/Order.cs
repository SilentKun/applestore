namespace AppleStore.Domain.Entities
{
    public class Order
    {
        public int OrderID { get; set; }
        public string UserID { get; set; }
        public int GadgetID { get; set; }
        public  int Count { get; set; }
        
    }
}
