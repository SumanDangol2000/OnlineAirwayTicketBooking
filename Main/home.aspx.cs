using OnlineAirwayTicketBooking.Model;
using OnlineAirwayTicketBooking.Utils;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAirwayTicketBooking.Main
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Myconnection db = new Myconnection();
            string cmdText = "SELECT * FROM users WHERE email=@email";
            SqlCommand cmd = new SqlCommand(cmdText, db.connect);
            cmd.Parameters.AddWithValue("@email", txtEmailReview.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);    
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow dr = dt.Rows[0];
            db.connect.Close();

            int id = Convert.ToInt32(dr["user_id"]);

            if (id > 0)
            {
                Myconnection db1 = new Myconnection();
                cmdText = "INSERT INTO reviews (user_id, email, message) VALUES (@user_id, @email, @message )";
                cmd = new SqlCommand(cmdText, db1.connect);
                cmd.Parameters.AddWithValue("@user_id", id);
                cmd.Parameters.AddWithValue("@email", txtEmailReview.Text);
                cmd.Parameters.AddWithValue("@message", txtMessageReview.Text);
                cmd.ExecuteNonQuery();
                db.connect.Close();
                ltlReviewMessage.Text = "<h4 style=\" color:green; text-align:center; \"> Thank you for your review. </h4>";
               

            }
            else
            {
                db.connect.Close();

            }
        }
    }
}