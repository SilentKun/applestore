using System.Net;
using System.Net.Mail;
using System.Text;
using AppleStore.Domain.Abstract;
using AppleStore.Domain.Entities;

namespace AppleStore.Domain.Concrete
{
    public class EmailSettings
    {
        public string MailToAddress = "ordersapplestore@yandex.ru";
        public string MailFromAddress = "applestorenew@yandex.ru";
        public bool UseSsl = true;
        public string Username = "applestorenew";
        public string Password = "1237654cxz";
        public string ServerName = "smtp.yandex.ru";
        public int ServerPort = 25;
        public bool WriteAsFile = false;
        public string FileLocation = @"c:\apple_store_emails";
    }

    public class EmailOrderProcessor : IOrderProcessor
    {
        private EmailSettings emailSettings;

        public EmailOrderProcessor(EmailSettings settings)
        {
            emailSettings = settings;
        }

        public void ProcessOrder(Cart cart, ShippingDetails shippingInfo)
        {
            using (var smtpClient = new SmtpClient())
            {
                smtpClient.EnableSsl = emailSettings.UseSsl;
                smtpClient.Host = emailSettings.ServerName;
                smtpClient.Port = emailSettings.ServerPort;
                smtpClient.UseDefaultCredentials = false;

                smtpClient.Credentials
                    = new NetworkCredential(emailSettings.Username, emailSettings.Password);

                if (emailSettings.WriteAsFile)
                {
                    smtpClient.DeliveryMethod
                        = SmtpDeliveryMethod.SpecifiedPickupDirectory;
                    smtpClient.PickupDirectoryLocation = emailSettings.FileLocation;
                    smtpClient.EnableSsl = false;
                }

                StringBuilder body = new StringBuilder()
                    .AppendLine("Новый заказ обработан")
                    .AppendLine("---")
                    .AppendLine("Товары:");

                foreach (var line in cart.Lines)
                {
                    var subtotal = line.Gadget.Price * line.Quantity;
                    body.AppendFormat("{0} x {1} (Всего: {2:n}₽)\r\n", line.Quantity, line.Gadget.Name, subtotal);
                }

                body.AppendFormat("Общая стоимость: {0:n}₽", cart.ComputeTotalValue())
                    .AppendLine()
                    .AppendLine("Заказчик:")
                    .AppendLine(shippingInfo.Name)
                    .AppendLine(shippingInfo.DeliveryAddress)
                    .AppendLine(shippingInfo.Email)
                    .AppendLine(shippingInfo.Phone)
                    .AppendLine()
                    .AppendFormat("Подарочная упаковка: {0}",
                        shippingInfo.GiftWrap ? "Да" : "Нет");

                MailMessage mailMessage = new MailMessage(
                                       emailSettings.MailFromAddress,
                                       emailSettings.MailToAddress,
                                       "Новый заказ",
                                       body.ToString());

                if (emailSettings.WriteAsFile)
                {
                    mailMessage.BodyEncoding = Encoding.UTF8;
                    mailMessage.HeadersEncoding = Encoding.UTF8;
                }

                smtpClient.Send(mailMessage);
            }
        }
    }
}
