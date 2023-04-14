using OnlineAirwayTicketBooking.Model;
using OnlineAirwayTicketBooking.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineAirwayTicketBooking.Dao
{
    public class PaymentsDao
    {
        public void savePaymnet(Payments payment)
        {
            Myconnection dbConnect = new Myconnection();
            string cmdText = "INSERT INTO payments (booking_id, payment_amount, payment_date) VALUES (@booking_id, @payment_amount, @payment_date)";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            cmd.Parameters.AddWithValue("@booking_id", payment.booking_id);
            cmd.Parameters.AddWithValue("@payment_amount", payment.amount);
            cmd.Parameters.AddWithValue("@payment_date", payment.date);
            cmd.ExecuteNonQuery();
            dbConnect.connect.Close();

        }
    }
}