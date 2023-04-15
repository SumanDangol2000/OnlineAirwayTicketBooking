using OnlineAirwayTicketBooking.Dao;
using OnlineAirwayTicketBooking.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using OnlineAirwayTicketBooking.Utils;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace OnlineAirwayTicketBooking.Passenger
{
    public partial class payment_page : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblFlightNumbers.Text = Request.QueryString["flight_id"].ToString();
            lblDepartureCity.Text = Request.QueryString["departure"].ToString();
            lblArrivalCity.Text = Request.QueryString["arrival"].ToString();
            lbldate.Text = Request["date"].ToString();
            lblPrice.Text = Request["price"].ToString();
            txtTicketNum.Text = "1";
            txtUserName.Text = Session["name"].ToString();
            txtPhone.Text = Session["phone"].ToString();
            txtEmail.Text = Session["email"].ToString();
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            setBooking();

            setPayment();

            clearFields();

            printTicket();


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearFields();
        }

        public void clearFields()
        {
            lblFlightNumbers.Text = string.Empty;
            lblDepartureCity.Text = string.Empty;
            lblArrivalCity.Text = string.Empty;
            lbldate.Text = string.Empty;

            txtUserName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtEmail.Text = string.Empty;

            txtCardType.Text = string.Empty;
            txtCardNumber.Text = string.Empty;
            txtCardPin.Text = string.Empty;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("booking_page.aspx");
        }

        public void setPayment()
        {

            Payments payment = new Payments();
            PaymentsDao paymentDao = new PaymentsDao();
            payment.booking_id = getBookingId();
            payment.amount = Convert.ToInt32(txtTicketNum.Text) * Convert.ToDouble(Request["price"].ToString());
            payment.date = Convert.ToString(DateTime.Now);
            paymentDao.savePaymnet(payment);
        }

        public void setBooking()
        {
            Bookings booking = new Bookings();
            BookingsDao bookingDao = new BookingsDao();
            booking.flight_id = Convert.ToInt32(Request.QueryString["flight_id"].ToString());
            booking.user_id = Convert.ToInt32(Session["id"].ToString());
            booking.booking_date = Convert.ToString(DateTime.Now);
            booking.no_of_booking = Convert.ToInt32(txtTicketNum.Text);
            booking.total_cost = Convert.ToInt32(txtTicketNum.Text) * Convert.ToDouble(Request["price"].ToString());

            bookingDao.saveBooking(booking);
        }

        public int getBookingId()
        {

            Myconnection dbConnect = new Myconnection();
            string cmdText = "SELECT TOP 1 * FROM bookings order by booking_id DESC";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow dr = dt.Rows[0];
            dbConnect.connect.Close();

            return Convert.ToInt32(dr["booking_id"].ToString());
        }


        public void printTicket()
        {
            Random rnd = new Random();
            int ticketNumber = rnd.Next();

            // Create a new PDF document
            Document document = new Document();
            MemoryStream memoryStream = new MemoryStream();
            PdfWriter.GetInstance(document, memoryStream);

            document.Open();

            Paragraph eventInfo = new Paragraph("Ticket detials");
            eventInfo.Alignment = Element.ALIGN_CENTER;
            document.Add(eventInfo);

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            Paragraph userName = new Paragraph("Passenger name : " + Session["name"].ToString());
            Paragraph userEmail = new Paragraph("Passenger email : "+ Session["email"].ToString());
            Paragraph userPhone = new Paragraph("Passenger phone : " + Session["phone"].ToString());
            Paragraph purchaseDate = new Paragraph("Purchase date : " + DateTime.Now);
            document.Add(userName);
            document.Add(userPhone);
            document.Add(userEmail);
            document.Add(purchaseDate);

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            PdfPTable table = new PdfPTable(2);
            table.WidthPercentage = 50;
            table.HorizontalAlignment = Element.ALIGN_LEFT;

            // Add the ticket holder name and ticket number to the table
            PdfPCell cell11 = new PdfPCell(new Phrase("Ticket Number"));
            PdfPCell cell12 = new PdfPCell(new Phrase(ticketNumber));
            PdfPCell cell21 = new PdfPCell(new Phrase("Flight ID"));
            PdfPCell cell22 = new PdfPCell(new Phrase(Request.QueryString["flight_id"].ToString()));
            PdfPCell cell31 = new PdfPCell(new Phrase("Departure location"));
            PdfPCell cell32 = new PdfPCell(new Phrase(Request.QueryString["departure"].ToString()));
            PdfPCell cell41 = new PdfPCell(new Phrase("Arrival location: " + Session["phone"].ToString()));
            PdfPCell cell42 = new PdfPCell(new Phrase(Request.QueryString["arrival"].ToString()));
            PdfPCell cell51 = new PdfPCell(new Phrase("Date/time: " + Request.QueryString["date"].ToString()));
            PdfPCell cell52 = new PdfPCell(new Phrase(Request.QueryString["date"].ToString()));

            table.AddCell(cell11);
            table.AddCell(cell12);
            table.AddCell(cell21);
            table.AddCell(cell22);
            table.AddCell(cell31);
            table.AddCell(cell32);
            table.AddCell(cell41);
            table.AddCell(cell42);
            table.AddCell(cell51);
            table.AddCell(cell52);
            document.Add(table);

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            Paragraph copyRights = new Paragraph("Miracle Airway 2023@Copyrights.");
            eventInfo.Alignment = Element.ALIGN_CENTER;
            document.Add(copyRights);


            document.Close();

            HttpContext.Current.Response.ContentType = "application/pdf";
            HttpContext.Current.Response.AppendHeader("Content-Disposition", "attachment;filename=ticket.pdf");
            HttpContext.Current.Response.BinaryWrite(memoryStream.ToArray());
            HttpContext.Current.Response.End();


        }
    }
}