using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Ninject;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Concrete;
using AppleStore.Domain.Entities;
using AppleStore.WebUI.Infrastructure.Abstract;
using AppleStore.WebUI.Infrastructure.Concrete;
namespace AppleStore.WebUI.Infrastructure
{
    public class NinjectDependencyResolver : IDependencyResolver
    {
        private IKernel kernel;

        public NinjectDependencyResolver(IKernel kernelParam)
        {
            kernel = kernelParam;
            AddBindings();
        }

        public object GetService(Type serviceType)
        {
            return kernel.TryGet(serviceType);
        }

        public IEnumerable<object> GetServices(Type serviceType)
        {
            return kernel.GetAll(serviceType);
        }

        private void AddBindings()
        {
            kernel.Bind<IGadgetRepository>().To<EFGadgetRepository>();
            kernel.Bind<IOrderProcessor>().To<EmailOrderProcessor>();
        }
    }
}