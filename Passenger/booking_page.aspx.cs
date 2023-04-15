using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineAirwayTicketBooking.Utils;

namespace OnlineAirwayTicketBooking.Passenger
{
    public partial class booking_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadFlightData();
            }
        }

        public void loadFlightData()
        {
            Myconnection dbConnect = new Myconnection();
            string cmdText = "SELECT f.flight_id, f.flight_number, f.departure_airport, f.arrival_airport , f.departure_time , f.arrival_time , f.duration, f.price, a.airline_name FROM flights f " +
                "INNER JOIN airlines a on a.airline_id = f.airline_id";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewFlight.DataSource = dt;
            GridViewFlight.DataBind();
            dbConnect.connect.Close();

        }


        protected void OnPageIndexChanging_Flight(object sender, GridViewPageEventArgs e)
        {

            GridViewFlight.PageIndex = e.NewPageIndex;
            loadFlightData();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Myconnection dbConnect = new Myconnection();
            string cmdText = "SELECT f.flight_id, f.flight_number, f.departure_airport, f.arrival_airport , f.departure_time , f.arrival_time , f.duration, a.airline_name FROM flights f " +
                "INNER JOIN airlines a on a.airline_id = f.airline_id WHERE f.departure_airport=@from AND f.arrival_airport=@to AND f.departure_time LIKE '" + txtdate.Text + "%'";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("from", txtFrom.Text);
            cmd.Parameters.AddWithValue("to", txtTo.Text);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridViewFlight.DataSource = dt;
            GridViewFlight.DataBind();
            dbConnect.connect.Close();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtdate.Text = string.Empty;
            txtFrom.Text = string.Empty;
            txtTo.Text = string.Empty;

            loadFlightData();
        }

        public void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridViewFlight.SelectedRow;
            Response.Redirect("payment_page.aspx?flight_id=" + row.Cells[0].Text + "&departure=" + row.Cells[3].Text + "&arrival=" + row.Cells[4].Text + "&date=" + row.Cells[5].Text + "&price=" + row.Cells[8].Text);
        }


    }
}