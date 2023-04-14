using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineAirwayTicketBooking.Model
{
    public class Payments
    {
        public int booking_id { get; set; }
        public double amount { get; set; }
        public string date { get; set; }
    }
}