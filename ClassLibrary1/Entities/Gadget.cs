using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace AppleStore.Domain.Entities
{
    public class Gadget
    {
        public int GadgetId { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }
        public decimal Price { get; set; }
        public string OperatingSystem { get; set; }
        public string Resolution { get; set; }
        public string Diagonal { get; set; }
        public string AspectRatio { get; set; }
        public string DisplayTechnology { get; set; }
        public string CPU { get; set; }
        public string RAM { get; set; }
        public string ROM { get; set; }
        public string CameraResolution { get; set; }
        public string Measurements { get; set; }
        public string PixelsPerInch { get; set; }
        public string Weight { get; set; }
        public string Material { get; set; }
        public string SIMType { get; set; }
        public string WaterResistant { get; set; }
        public string MaxVideoResolution { get; set; }
        public string MaxFPSVideo { get; set; }
        public string MiniJack { get; set; }
        public string BatteryCapacity { get; set; }
        public string Sensors { get; set; }
        public string Equipment { get; set; }
        
    }
}
