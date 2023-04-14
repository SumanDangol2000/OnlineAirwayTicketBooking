<%@ Page Title="" Language="C#" MasterPageFile="~/Main/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineAirwayTicketBooking.Main.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<section class=" mt-5 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <asp:Literal ID="ltlMessage" runat="server" ></asp:Literal>
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Login</h2>

                <!-- Email input -->
                <div class="form-outline  mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="loginEmail" runat="server" CssClass="form-control input-lg" ></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your valid email." ControlToValidate="loginEmail" ForeColor="Red" Display="Dynamic" ValidationGroup="loginGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid email expression!" Display="Dynamic" ControlToValidate="loginEmail" ForeColor="Red" ValidationGroup="loginGroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-3">
                    <asp:Label ID="Label3" runat="server" Text="Password" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="loginPassword" runat="server" CssClass="form-control input-lg"></asp:TextBox>                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter password." ControlToValidate="loginPassword" ForeColor="Red" ValidationGroup="loginGroup"></asp:RequiredFieldValidator>
                </div>


                <%-- Submit button --%>
                <div class="d-flex justify-content-center mt-4">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-primary btn-block mb-3 w-50" ValidationGroup="loginGroup" OnClick="btnLogin_Click" />
                </div>

                <p class="text-center text-muted mt-3 mb-0">Don't have an account? <a href="register.aspx"
                    class="fw-bold "><u>Register</u></a></p>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>




</asp:Content>
