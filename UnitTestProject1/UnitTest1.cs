using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;
using AppleStore.WebUI.Controllers;
using AppleStore.WebUI.HtmlHelpers;
using AppleStore.WebUI.Models;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void Can_Paginate()
        {
            // Организация (arrange)
            Mock<IGadgetRepository> mock = new Mock<IGadgetRepository>();
            mock.Setup(m => m.Gadgets).Returns(new List<Gadget>
            {
                new Gadget { GadgetId = 1, Name = "Гаджет1", Price = 10050, CategoryId = 3, SubcategoryId = 5},
                new Gadget { GadgetId = 2, Name = "Гаджет2", Price = 4050, CategoryId = 3, SubcategoryId = 5},
                new Gadget { GadgetId = 3, Name = "Гаджет3", Price = 20050, CategoryId = 3, SubcategoryId = 5},
                new Gadget { GadgetId = 4, Name = "Гаджет4", Price = 15050, CategoryId = 3, SubcategoryId = 5},
                new Gadget { GadgetId = 5, Name = "Гаджет5", Price = 16650, CategoryId = 3, SubcategoryId = 5}
            });
            GadgetController controller = new GadgetController(mock.Object);
            controller.pageSize = 3;

            // Действие (act)
            var result = (IEnumerable<Gadget>)controller.List(3, 2).Model;

            // Утверждение
            List<Gadget> gadgets = result.ToList();
            Assert.IsTrue(gadgets.Count == 2);
            Assert.AreEqual(gadgets[0].Name, "Гаджет4");
            Assert.AreEqual(gadgets[1].Name, "Гаджет5");
        }
        [TestMethod]
        public void Can_Generate_Page_Links()
        {

            // Организация - определение вспомогательного метода HTML - это необходимо
            // для применения расширяющего метода
            HtmlHelper myHelper = null;

            // Организация - создание объекта PagingInfo
            PagingInfo pagingInfo = new PagingInfo
            {
                CurrentPage = 2,
                TotalItems = 28,
                ItemsPerPage = 10
            };

            // Организация - настройка делегата с помощью лямбда-выражения
            Func<int, string> pageUrlDelegate = i => "Page" + i;

            // Действие
            MvcHtmlString result = myHelper.PageLinks(pagingInfo, pageUrlDelegate);

            // Утверждение
            Assert.AreEqual(@"<a class=""btn btn-default"" href=""Page1"">1</a>"
                            + @"<a class=""btn btn-default btn-primary selected"" href=""Page2"">2</a>"
                            + @"<a class=""btn btn-default"" href=""Page3"">3</a>",
                result.ToString());
        }
        [TestMethod]
        public void Can_Send_Pagination_View_Model()
        {
            //// Организация (arrange)
            //Mock<IGadgetRepository> mock = new Mock<IGadgetRepository>();
            //mock.Setup(m => m.Gadgets).Returns(new List<Gadget>
            //{
            //    new Gadget { GadgetId = 1, Name = "Гаджет1", Price = 10050, CategoryId = 3, SubcategoryId = 5},
            //    new Gadget { GadgetId = 2, Name = "Гаджет2", Price = 4050, CategoryId = 3, SubcategoryId = 5},
            //    new Gadget { GadgetId = 3, Name = "Гаджет3", Price = 20050, CategoryId = 3, SubcategoryId = 5},
            //    new Gadget { GadgetId = 4, Name = "Гаджет4", Price = 15050, CategoryId = 3, SubcategoryId = 5},
            //    new Gadget { GadgetId = 5, Name = "Гаджет5", Price = 16650, CategoryId = 3, SubcategoryId = 5}
            //});
            //GadgetController controller = new GadgetController(mock.Object);
            //controller.pageSize = 3;

            //// Act
            //var result
            //    = (IEnumerable<Gadget>)controller.List(3, 2).Model;
      
            //// Assert
            //PagingInfo pageInfo = result.;
            //Assert.AreEqual(pageInfo.CurrentPage, 2);
            //Assert.AreEqual(pageInfo.ItemsPerPage, 3);
            //Assert.AreEqual(pageInfo.TotalItems, 5);
        }
        [TestMethod]
        public void Can_Filter_Gadgets()
        {
            // Организация (arrange)
            Mock<IGadgetRepository> mock = new Mock<IGadgetRepository>();
            mock.Setup(m => m.Gadgets).Returns(new List<Gadget>
            {
                new Gadget { GadgetId = 1, Name = "Гаджет1", Price = 10050, CategoryId = 3, SubcategoryId = 5},
                new Gadget { GadgetId = 2, Name = "Гаджет2", Price = 4050, CategoryId = 2, SubcategoryId = 5},
                new Gadget { GadgetId = 3, Name = "Гаджет3", Price = 20050, CategoryId = 3, SubcategoryId = 5},
                new Gadget { GadgetId = 4, Name = "Гаджет4", Price = 15050, CategoryId = 2, SubcategoryId = 5},
                new Gadget { GadgetId = 5, Name = "Гаджет5", Price = 16650, CategoryId = 1, SubcategoryId = 5}
            });

            GadgetController controller = new GadgetController(mock.Object);
            controller.pageSize = 3;

            // Action
            List<Gadget> result = ((IEnumerable<Gadget>)controller.List(2).Model).ToList();

            // Assert
            Assert.AreEqual(result.Count(), 2);
            Assert.IsTrue(result[0].Name == "Гаджет2" && result[0].CategoryId == 2);
            Assert.IsTrue(result[1].Name == "Гаджет4" && result[1].CategoryId == 2);
        }
        [TestMethod]
        public void Can_Create_Categories()
        {
            // Организация - создание имитированного хранилища
            Mock<IGadgetRepository> mock = new Mock<IGadgetRepository>();
            mock.Setup(m => m.Gadgets).Returns(new List<Gadget> {
                new Gadget { GadgetId = 1, Name = "Гаджет1", Category="iPhone"},
                new Gadget { GadgetId = 2, Name = "Гаджет2", Category="iPhone"},
                new Gadget { GadgetId = 3, Name = "Гаджет3", Category="iPad"},
                new Gadget { GadgetId = 4, Name = "Гаджет4", Category="MacBook"},
            });

            // Организация - создание контроллера
            NavController target = new NavController(mock.Object);

            // Действие - получение набора категорий
            List<string> results = ((IEnumerable<string>)target.Menu().Model).ToList();

            // Утверждение
            Assert.AreEqual(results.Count(), 3);
            Assert.AreEqual(results[0], "iPhone");
            Assert.AreEqual(results[1], "iPad");
            Assert.AreEqual(results[2], "MacBook");
        }
        [TestMethod]
        public void Indicates_Selected_Category()
        {
            // Организация - создание имитированного хранилища
            Mock<IGadgetRepository> mock = new Mock<IGadgetRepository>();
            mock.Setup(m => m.Gadgets).Returns(new Gadget[] {
                new Gadget { GadgetId = 1, Name = "Гаджет1", Category="iPad"},
                new Gadget { GadgetId = 2, Name = "Гаджет2", Category="iPhone"}
            });

            // Организация - создание контроллера
            NavController target = new NavController(mock.Object);

            // Организация - определение выбранной категории
            string categoryToSelect = "iPhone";

            // Действие
            string result = target.Menu(categoryToSelect).ViewBag.SelectedCategory;

            // Утверждение
            Assert.AreEqual(categoryToSelect, result);
        }
        [TestMethod]
        public void Generate_Category_Specific_Gadget_Count()
        {
            /// Организация (arrange)
            Mock<IGadgetRepository> mock = new Mock<IGadgetRepository>();
            mock.Setup(m => m.Gadgets).Returns(new List<Gadget>
            {
                new Gadget { GadgetId = 1, Name = "Гаджет1", Category="Cat1"},
                new Gadget { GadgetId = 2, Name = "Гаджет2", Category="Cat2"},
                new Gadget { GadgetId = 3, Name = "Гаджет3", Category="Cat1"},
                new Gadget { GadgetId = 4, Name = "Гаджет4", Category="Cat2"},
                new Gadget { GadgetId = 5, Name = "Гаджет5", Category="Cat3"}
            });
            GadgetController controller = new GadgetController(mock.Object);
            controller.pageSize = 3;

            // Действие - тестирование счетчиков товаров для различных категорий
            int res1 = ((GadgetsListViewModel)controller.List("Cat1").Model).PagingInfo.TotalItems;
            int res2 = ((GadgetsListViewModel)controller.List("Cat2").Model).PagingInfo.TotalItems;
            int res3 = ((GadgetsListViewModel)controller.List("Cat3").Model).PagingInfo.TotalItems;
            int resAll = ((GadgetsListViewModel)controller.List(null).Model).PagingInfo.TotalItems;

            // Утверждение
            Assert.AreEqual(res1, 2);
            Assert.AreEqual(res2, 2);
            Assert.AreEqual(res3, 1);
            Assert.AreEqual(resAll, 5);
        }
    }
}
