using OnlineAirwayTicketBooking.Dao;
using OnlineAirwayTicketBooking.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineAirwayTicketBooking.Main
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            UsersDao usersDao = new UsersDao();
            Users users = new Users();
            string fName = registerFirstName.Text;
            string lName = registerLastName.Text;

            users.first_name = char.ToUpper(fName[0]) + fName.Substring(1);
            users.last_name = char.ToUpper(lName[0]) + lName.Substring(1);
            users.phone_number = registerPhone.Text;
            users.email = registerEmail.Text;
            users.password = registerPassword.Text;

            usersDao.RegisterUser(users);

            if (users.status == "success")
            {
                ltlMessage.Text = "<h4 style=\" color:green; text-align:center; \"> Register successfully </h4>";
                
            }
            else
            {
                ltlMessage.Text = "<h4 style=\" color:red; text-align:center; \"> Users already exist.</h4>";

            }

            registerEmail.Text = string.Empty;
            registerPassword.Text = string.Empty;
            registerFirstName.Text = string.Empty;
            registerLastName.Text = string.Empty;
            registerPhone.Text = string.Empty;
            registerRepeatPassword.Text = string.Empty;

        }
    }
}