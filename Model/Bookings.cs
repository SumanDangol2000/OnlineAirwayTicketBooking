using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineAirwayTicketBooking.Model
{
    public class Bookings
    {
        public int user_id { get; set; }
        public int flight_id { get; set; }
        public int no_of_booking { get; set; }
        public string booking_date { get; set; }
        public double total_cost { get; set; }

    }
}