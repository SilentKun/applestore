﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppleStore.Domain.Entities
{
    public class Cart
    {
        private List<CartLine> lineCollection = new List<CartLine>();

        public void AddItem(Gadget gadget, int quantity)
        {
            CartLine line = lineCollection
                .Where(g => g.Gadget.GadgetId == gadget.GadgetId)
                .FirstOrDefault();

            if (line == null)
            {
                lineCollection.Add(new CartLine
                {
                    Gadget = gadget,
                    Quantity = quantity
                });
            }
            else
            {
                line.Quantity += quantity;
            }
        }
        public int ItemsCount()
        {
            return lineCollection.Sum(e => e.Quantity);
        }

        public void RemoveOne(Gadget gadget)
        {
            var cartline = lineCollection.FirstOrDefault(l => l.Gadget.GadgetId == gadget.GadgetId);
            --cartline.Quantity;
            if (cartline.Quantity == 0)
                lineCollection.Remove(cartline);
        }
        public void RemoveLine(Gadget gadget)
        {
            lineCollection.RemoveAll(l => l.Gadget.GadgetId == gadget.GadgetId);
        }

        public decimal ComputeTotalValue()
        {
            return lineCollection.Sum(e => e.Gadget.Price * e.Quantity);

        }
        public void Clear()
        {
            lineCollection.Clear();
        }
        public bool HaveInCart(int gadgetId)
        {
            var cartline = lineCollection.Find(l => l.Gadget.GadgetId == gadgetId);
            return cartline != null;
        }
        public IEnumerable<CartLine> Lines
        {
            get { return lineCollection; }
        }
    }

    public class CartLine
    {
        public Gadget Gadget { get; set; }
        public int Quantity { get; set; }
    }
}
