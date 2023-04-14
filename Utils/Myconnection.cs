using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineAirwayTicketBooking.Utils
{
    public class Myconnection
    {
        public SqlConnection connect;
        public Myconnection()
        {
            string sqlcon = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
            connect = new SqlConnection(sqlcon);
            connect.Open();
        }
    }
}