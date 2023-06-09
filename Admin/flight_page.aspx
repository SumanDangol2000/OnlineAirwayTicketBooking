﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="flight_page.aspx.cs" Inherits="OnlineAirwayTicketBooking.Admin.flight_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="page-content-wrapper ">
    <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4 border-dark border-bottom">
        <div class="d-flex align-items-center">
            <i class="fas fa-align-left  fs-4 me-3" id="menu-toggle"></i>
        </div>

        <div  id="navbarSupportedContent">
            <h2> <strong>FLIGHT</strong> </h2>     
        </div>
    </nav> 
    
    <div class="container-fluid px-4 my-5" >

        <div class="row g-3 my-2">
                 <div class="row">
                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtFlightNumber" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="lblFlightNumber" runat="server" Text="Flight number" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter flight number." ControlToValidate="txtFlightNumber" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                  
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtDepartureAirport" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="Departure location" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter department airport." ControlToValidate="txtDepartureAirport" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtArrivalAirport" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Arrival location" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter arrival airport." ControlToValidate="txtArrivalAirport" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                   
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtDepartureTime" runat="server" TextMode="DateTimeLocal" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Text="Departure time" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter departure time." ControlToValidate="txtDepartureTime" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtArrivalTime" runat="server" TextMode="DateTimeLocal" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text="Arrival time" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter arrival time." ControlToValidate="txtArrivalTime" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                 
                    <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Duration" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter duration time." ControlToValidate="txtDuration" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtAirlineId" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="Airline ID" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter airline id." ControlToValidate="txtAirlineId" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                      <div class="form-outline mb-3 col-lg-4 col-md-6">
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control input-lg" ></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="Price" CssClass="form-label" ></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter amount." ControlToValidate="txtPrice" ForeColor="Red" ValidationGroup="paymentGroup"></asp:RequiredFieldValidator>
                    </div>

                     <div class="pt-1 mb-4 ">
                        
                         <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success btn-lg btn-block mb-3" Width="150" ValidationGroup="paymentGroup" OnClick="btnSave_Click" />
                         <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary btn-lg btn-block mb-3" Width="150" OnClick="btnClear_Click" />
                    
                     </div>
            </div>

            <div class="row my-5">
            <div class="form-group">
                <div class="table-responsive">
                    <asp:GridView ID="GridViewFlight" runat="server" AutoGenerateColumns="False" DataKeyNames="flight_id" Width="100%" AllowPaging="True" PageSize="15" 
                        OnPageIndexChanging="OnPageIndexChanging_Flight" CssClass="table table-bordered table-condensed table-hover" OnRowCancelingEdit="GridViewFlight_RowCancelingEdit"
                        OnRowEditing="GridViewFlight_RowEditing" OnRowUpdating="GridViewFlight_RowUpdating" >
                        <Columns>
                            <asp:BoundField DataField="flight_id" HeaderText="Flight id" ReadOnly="True" InsertVisible="False" SortExpression="flight_id"></asp:BoundField>
                            <asp:BoundField DataField="airline_name" HeaderText="Airline name" SortExpression="airline_name"></asp:BoundField>
                            <asp:BoundField DataField="flight_number" HeaderText="Fligh number" SortExpression="flight_number"></asp:BoundField>
                            <asp:BoundField DataField="departure_airport" HeaderText="Departure " SortExpression="departure_airport"></asp:BoundField>
                            <asp:BoundField DataField="arrival_airport" HeaderText="Arrival " SortExpression="arrival_airport"></asp:BoundField>
                            <asp:BoundField DataField="departure_time" HeaderText="Departure time" SortExpression="departure_time"></asp:BoundField>
                            <asp:BoundField DataField="arrival_time" HeaderText="Arrival time" SortExpression="arrival_time"></asp:BoundField>
                            <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration"></asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"></asp:BoundField>
                            <asp:CommandField ShowEditButton="True" ButtonType="Button"></asp:CommandField>
                        </Columns>
                    </asp:GridView>
                 </div>   
                </div>
             </div>
            </div>
        </div>
    </div>
</asp:Content>
