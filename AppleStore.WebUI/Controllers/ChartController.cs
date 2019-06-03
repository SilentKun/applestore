using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Concrete;
using AppleStore.Domain.Entities;
using SimpleChart = System.Web.Helpers;
namespace AppleStore.WebUI.Controllers
{
    public class ChartController : Controller
    {
        private IGadgetRepository repository;

        public ChartController(IGadgetRepository repo)
        {
            repository = repo;
        }
        // GET: Chart
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public JsonResult NewChart()
        {
            var objs = repository.Gadgets.Take(10).ToList();

            DataTable dt = new DataTable();
            dt.Columns.Add("Name", System.Type.GetType("System.String"));
            dt.Columns.Add("RAM", System.Type.GetType("System.Int32"));

            foreach (var obj in objs)
            {
                DataRow dr = dt.NewRow();
                dr["Name"] = obj.Name.Substring(0,12);
                dr["RAM"] = obj.RAM;
                dt.Rows.Add(dr);
                
            }
            var iData = new List<object>();
            foreach (DataColumn dc in dt.Columns)
            {
                var x = (from DataRow drr in dt.Rows select drr[dc.ColumnName]).ToList();
                iData.Add(x);
            }
            return Json(iData, JsonRequestBehavior.AllowGet);
        }
    }
}