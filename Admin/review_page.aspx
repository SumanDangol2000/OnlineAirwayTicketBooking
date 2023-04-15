<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="review_page.aspx.cs" Inherits="OnlineAirwayTicketBooking.Admin.review_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="page-content-wrapper" class="h-100 w-100">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4 border-dark border-bottom">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left fs-4 me-3" id="menu-toggle"></i>
                </div>


                <div  id="navbarSupportedContent">
                <h2> <strong>Review</strong> </h2>     
                </div>
            </nav>

          <div class="row my-5 container-fluid">
                    <div class="form-group">
                        <div class="table-responsive">
                            <asp:GridView ID="GridViewReview" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="review_id" OnPageIndexChanging="OnPageIndexChanging_Review"
                                 PageSize="15" CssClass="table table-bordered table-condensed table-hover" AllowPaging="True" >
                             <Columns>
                                <asp:BoundField DataField="review_id" HeaderText="Review id" ReadOnly="True" InsertVisible="False" SortExpression="review_id"></asp:BoundField>
                                <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name"></asp:BoundField>
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
             </div>



         </div>
</asp:Content>
