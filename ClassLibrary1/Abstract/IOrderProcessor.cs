namespace AppleStore.Domain.Abstract
{
    using AppleStore.Domain.Entities;
    public interface IOrderProcessor
    {
        void ProcessOrder(Cart cart, ShippingDetails shippingDetails);
    }
}