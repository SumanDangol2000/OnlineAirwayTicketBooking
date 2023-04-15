<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard_page.aspx.cs" Inherits="OnlineAirwayTicketBooking.Admin.dashboard_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="page-content-wrapper ">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4 border-dark border-bottom">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left fs-4 me-3" id="menu-toggle"></i>
                </div>


                <div  id="navbarSupportedContent">
                <h2> <strong>DASHBOARD</strong> </h2>     
                </div>
            </nav>
         <div class="container-fluid px-4 my-5">
                <div class="row g-3 my-2">
                    <div class="col-md-6 col-lg-6 ">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">720</h3>
                                <p class="fs-5">Airlines</p>
                            </div>
                            <i class="fas fa-plane fs-1 border rounded-full  p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">492</h3>
                                <p class="fs-5"> Ticket Sales</p>
                            </div>
                            <i
                                class="fas fa-hand-holding-usd fs-1  border rounded-full  p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">389</h3>
                                <p class="fs-5">Recent booking</p>
                            </div>
                            <i class="fas fa-book fs-1  border rounded-full  p-3"></i>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">%25</h3>
                                <p class="fs-5">Sales Increase</p>
                            </div>
                            <i class="fas fa-chart-line fs-1  border rounded-full  p-3"></i>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">500</h3>
                                <p class="fs-5">User</p>
                            </div>
                            <i class="fas fa-user fs-1 border rounded-full  p-3"></i>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">569</h3>
                                <p class="fs-5">Review</p>
                            </div>
                            <i class="fas fa-eye fs-1  border rounded-full  p-3"></i>
                        </div>
                    </div>
                </div> 
        </div>
    </div>



</asp:Content>
