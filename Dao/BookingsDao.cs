﻿using OnlineAirwayTicketBooking.Model;
using OnlineAirwayTicketBooking.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineAirwayTicketBooking.Dao
{
    public class BookingsDao
    {
        public void saveBooking(Bookings booking)
        {
            Myconnection dbConnect = new Myconnection();
            string cmdText = "INSERT INTO bookings (user_id, flight_id, booking_date, number_of_booking, total_cost ) VALUES" +
                " (@user_id, @flight_id, @booking_date, @number_of_booking, @total_cost)";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            cmd.Parameters.AddWithValue("@user_id", booking.user_id);
            cmd.Parameters.AddWithValue("@flight_id", booking.flight_id);
            cmd.Parameters.AddWithValue("@booking_date", booking.booking_date);
            cmd.Parameters.AddWithValue("@number_of_booking", booking.no_of_booking);
            cmd.Parameters.AddWithValue("@total_cost", booking.total_cost);
            cmd.ExecuteNonQuery();
            dbConnect.connect.Close();


        }
    }
}