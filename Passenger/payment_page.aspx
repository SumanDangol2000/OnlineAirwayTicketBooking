<%@ Page Title="" Language="C#" MasterPageFile="~/Passenger/passenger.Master" AutoEventWireup="true" CodeBehind="payment_page.aspx.cs" Inherits="OnlineAirwayTicketBooking.Passenger.payment_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container px-4">
        <div class="mt-5 "> 
            <asp:Button ID="btnBack" runat="server" Text="< Back" CssClass="btn btn-secondary btn-block mb-3" Width="150" OnClick="btnBack_Click"/>
        </div>
        <h1 class="text-center">Payment</h1>

        <p class="fw-bold">Ticket details</p>
        
        <table>
            <tr>
                 <td> <asp:Label ID="ticketNo" runat="server" Text="Ticket no."></asp:Label> </td>
                 <td> <asp:Label ID="lblFlightNumbers" runat="server" Text=""></asp:Label> </td>
            </tr>
            <tr>
                <td><asp:Label ID="Departure" runat="server" Text="Departure"></asp:Label> </td>
               <td> <asp:Label ID="lblDepartureCity" runat="server" Text=""></asp:Label> </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Arrival"></asp:Label> </td>
               <td> <asp:Label ID="lblArrivalCity" runat="server" Text=""></asp:Label> </td> 
            </tr>
            <tr>
                <td> <asp:Label ID="DepartureDate" runat="server" Text="Departure date"></asp:Label> </td>
                <td> <asp:Label ID="lbldate" runat="server" Text=""></asp:Label> </td>  
            </tr>
            <tr>
               <td> <asp:Label ID="Price" runat="server" Text="Price"></asp:Label> </td>
               <td> <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label> </td> 
            </tr>
            <tr>
               <td> <asp:Label ID="noOfticket" runat="server" Text="Number of ticket"></asp:Label> </td>            
                <td> <asp:TextBox ID="txtTicketNum" runat="server" TextMode="Number" CssClass="form-control input-lg" min="1" max="10" ></asp:TextBox> </td>
             
            </tr>
        </table>
           
        


        <h3 class="mt-5">User details</h3>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="User name" CssClass="form-label" ></asp:Label>
                    </div>

                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Phone number" CssClass="form-label" ></asp:Label>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control input-lg" ReadOnly="True"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                     </div>
            </div>
        </div>


        <h3 class="mt-5">Card details</h3>
        <div class="row g-3 my-2">
                 <div class="row">
                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtCardType" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="Card Type" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter card type." ControlToValidate="txtCardType" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                  
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="Card number" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter card number." ControlToValidate="txtCardNumber" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtCardPin" runat="server"  CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="Pin number" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter card pin." ControlToValidate="txtCardPin" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="pt-1 mb-4 "> 
                        <asp:Button ID="btnPay" runat="server" Text="Pay" CssClass="btn btn-success  btn-block  " Width="150" OnClick="btnPay_Click" />
                         <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary  btn-block " Width="150" OnClick="btnClear_Click" />
                    </div>
                     
            </div>
        </div>
    </div>


</asp:Content>
