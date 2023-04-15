using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineAirwayTicketBooking.Utils;

namespace OnlineAirwayTicketBooking.Admin
{
    public partial class flight_page : System.Web.UI.Page
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


        protected void btnSave_Click(object sender, EventArgs e)
        {
            Myconnection dbConnect = new Myconnection();
            string cmdText = "INSERT INTO flights (flight_number, departure_airport, arrival_airport , departure_time , arrival_time , duration, airline_id) VALUES" +
                " (@flight_number, @departure_airport, @arrival_airport , @departure_time , @arrival_time , @duration, @airline_id, @price)";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            cmd.Parameters.AddWithValue("@flight_number", txtFlightNumber.Text);
            cmd.Parameters.AddWithValue("@departure_airport", txtDepartureAirport.Text);
            cmd.Parameters.AddWithValue("@arrival_airport", txtArrivalAirport.Text);
            cmd.Parameters.AddWithValue("@departure_time", txtDepartureTime.Text);
            cmd.Parameters.AddWithValue("@arrival_time", txtArrivalTime.Text);
            cmd.Parameters.AddWithValue("@duration", Convert.ToInt32(txtDuration.Text));
            cmd.Parameters.AddWithValue("@airline_id", Convert.ToInt32(txtAirlineId.Text));
            cmd.Parameters.AddWithValue("@price", Convert.ToDouble(txtPrice.Text));
            cmd.ExecuteNonQuery();
            dbConnect.connect.Close();

            loadFlightData();

            clearFiledds();

        }

        protected void GridViewFlight_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewFlight.EditIndex = e.NewEditIndex;
            loadFlightData();
        }
        protected void GridViewFlight_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int id = Convert.ToInt32(GridViewFlight.DataKeys[e.RowIndex].Value);
            string flight_number = e.NewValues["flight_number"].ToString();
            string departure_airport = e.NewValues["departure_airport"].ToString();
            string arrival_airport = e.NewValues["arrival_airport"].ToString();
            string departure_time = e.NewValues["departure_time"].ToString();
            string arrival_time = e.NewValues["arrival_time"].ToString();
            string duration = e.NewValues["duration"].ToString();
            string price = e.NewValues["price"].ToString();

            Myconnection dbConnect = new Myconnection();
            string cmdText = "UPDATE flights SET flight_number=@flight_number, departure_airport=@departure_airport, arrival_airport=@arrival_airport , departure_time=@departure_time ," +
                " arrival_time=@arrival_time , duration=@duration, price=@price WHERE flight_id=@id";
            SqlCommand cmd = new SqlCommand(cmdText, dbConnect.connect);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@flight_number", flight_number);
            cmd.Parameters.AddWithValue("@departure_airport", departure_airport);
            cmd.Parameters.AddWithValue("@arrival_airport", arrival_airport);
            cmd.Parameters.AddWithValue("@departure_time", departure_time);
            cmd.Parameters.AddWithValue("@arrival_time", arrival_time);
            cmd.Parameters.AddWithValue("@duration", duration);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.ExecuteNonQuery();
            dbConnect.connect.Close();
            GridViewFlight.EditIndex = -1;

            loadFlightData();
        }
        protected void GridViewFlight_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridViewFlight.EditIndex = -1;
            loadFlightData();
        }


        protected void OnPageIndexChanging_Flight(object sender, GridViewPageEventArgs e)
        {

            GridViewFlight.PageIndex = e.NewPageIndex;
            loadFlightData();

        }

        private void clearFiledds()
        {
            txtAirlineId.Text = string.Empty;
            txtArrivalAirport.Text = string.Empty;
            txtDepartureAirport.Text = string.Empty;
            txtArrivalTime.Text = string.Empty;
            txtDepartureTime.Text = string.Empty;
            txtDuration.Text = string.Empty;
            txtFlightNumber.Text = string.Empty;
            txtPrice.Text = string.Empty;


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearFiledds();

        }
    }

}