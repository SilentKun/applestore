using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace AppleStore.Domain.Entities
{
    public class ShippingDetails
    {
        [Required(ErrorMessage = "Укажите ваше ФИО")]
        public string Name { get; set; }

        [Required]
        public string DeliveryAddress { get; set; }
        [Required]
        [DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        public bool GiftWrap { get; set; }
    }
}