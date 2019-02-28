using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppleStore.Domain.Entities
{
   public class Image
    {
        [Key]
        public int ImageId { get; set; }

        public int GadgetId { get; set; }

        public string Path { get; set; }
    }
}
