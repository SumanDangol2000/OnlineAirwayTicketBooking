<%@ Page Title="" Language="C#" MasterPageFile="~/Main/main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="OnlineAirwayTicketBooking.Main.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <section class="vh-100 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <asp:Literal ID="ltlMessage" runat="server" ></asp:Literal>
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

                <div class="row">
                    <!-- First name input -->
                <div class="form-outline col-lg-6 col-md-6 mb-3">
                    <asp:Label ID="lblRegisterFirstName" runat="server" Text="FirstName" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="registerFirstName" runat="server" CssClass="form-control input-lg" ></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your first name." ControlToValidate="registerFirstName" ForeColor="Red" ValidationGroup="registerGroup"></asp:RequiredFieldValidator>
                </div>

                <!-- Last name input -->
                <div class="form-outline col-lg-6 col-md-6 mb-3">
                    <asp:Label ID="Label1" runat="server" Text="LastName" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="registerLastName" runat="server" CssClass="form-control input-lg" ></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your last name." ControlToValidate="registerLastName" ForeColor="Red" ValidationGroup="registerGroup"></asp:RequiredFieldValidator>
                </div>
                

                <!-- Email input -->
                <div class="form-outline  mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="registerEmail" runat="server" CssClass="form-control input-lg" ></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your valid email." ControlToValidate="registerEmail" ForeColor="Red" Display="Dynamic" ValidationGroup="registerGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid email expression!" Display="Dynamic" ControlToValidate="registerEmail" ForeColor="Red" ValidationGroup="registerGroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                <!-- Phone input -->
                <div class="form-outline mb-3">
                    <asp:Label ID="lblRegisterPhone" runat="server" Text="Phone" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="registerPhone" runat="server" TextMode="Phone" CssClass="form-control input-lg" MaxLength="10"></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your valid phone number." ControlToValidate="registerPhone" Display="Dynamic" ForeColor="Red" ValidationGroup="registerGroup" ValidationExpression="\d+"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="registerPhone" ErrorMessage="Please Enter Only Numbers" Display="Dynamic"  ForeColor="Red" ValidationExpression="^[0-9]{10}$" ValidationGroup="registerGroup"> </asp:RegularExpressionValidator>
                </div>

                <!-- Password input -->
                <div class="form-outline col-lg-6 col-md-6 mb-3">
                    <asp:Label ID="Label3" runat="server" Text="Password" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="registerPassword" runat="server" CssClass="form-control input-lg"></asp:TextBox>                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter password." ControlToValidate="registerPassword" ForeColor="Red" ValidationGroup="registerGroup"></asp:RequiredFieldValidator>
                </div>

                <!-- Repeat Password input -->
                <div class="form-outline col-lg-6 col-md-6 mb-3">
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="registerRepeatPassword" runat="server" CssClass="form-control input-lg" ></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Re-enter the password." ControlToValidate="registerRepeatPassword" Display="Dynamic" ForeColor="Red" ValidationGroup="registerGroup"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your password does not match with previous one." ControlToCompare="registerPassword" ControlToValidate="registerRepeatPassword" ValidationGroup="registerGroup" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                </div>
                </div>

                <%-- Submit button --%>
                <div class="d-flex justify-content-center mt-4">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-primary btn-block mb-3 w-50" ValidationGroup="registerGroup" OnClick="btnRegister_Click" />
                </div>

                <p class="text-center text-muted mt-3 mb-0">Have already an account? <a href="login.aspx"
                    class="fw-bold "><u>Login</u></a></p>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


</asp:Content>
