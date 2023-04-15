<%@ Page Title="" Language="C#" MasterPageFile="~/Main/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineAirwayTicketBooking.Main.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%-- Landing page --%>
    <p class="text-center"> <asp:Literal ID="ltlReviewMessage" runat="server"></asp:Literal> </p>

    <div id="myCarousel" class="carousel slide container mt-3" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item">
        <img src="../Image/plane.png" class="bd-placeholder-img" style="height:500px;"/>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Miracle Airway.</h1>
            <p>Some representative placeholder content for the first slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="register.aspx">Sign up today</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item active carousel-item-start">
        <img src="../Image/plane.png" class="bd-placeholder-img" style="height:500px;"/>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>One click ticket booking.</h1>
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="register.aspx">Sign up today</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item carousel-item-next carousel-item-start">
        <img src="../Image/plane.png" class="bd-placeholder-img" style="height:500px;"/>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Quick services.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="register.aspx">Sign up today</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

    <%-- Section Most visited place --%>
    <div class="album py-5 ">
    <div class="container">
    
    <h1 class="text-center my-5">Services</h1>

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <img src="../Image/logo.png" style="height:225px; width:100%;" />
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="../Image/logo.png" style="height:225px; width:100%;" />
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="../Image/logo.png" style="height:225px; width:100%;" />
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
            <img src="../Image/logo.png" style="height:225px; width:100%;" />
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="../Image/logo.png" style="height:225px; width:100%;" />
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="../Image/logo.png" style="height:225px; width:100%;" />
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


    <footer class="bg-light text-center" id="contact">

        <h1 class="text-center my-5">Contact</h1>

        <div class=" ">
                <h4>Miracle Airway</h4>
                <p>+977-9807654321, +977-9807654321</p>
                <p>miracleairway@gamil.com</p>
                <p>www.miracleairway.com</p>
            </div>
        

      <div class="container p-4 pb-0 d-flex justify-content-center">
            <div class="d-flex  flex-column w-50">

              <div class=" ">
                <p class="pt-2">
                  <strong>Review</strong>
                </p>
              </div>
              <div class="">
                <!-- Email input -->
                <div class="form-outline mb-4">
                    <asp:Label ID="lblEmailReview" runat="server" Text="Email" CssClass="form-label" ></asp:Label>
                    <asp:TextBox ID="txtEmailReview" runat="server" CssClass="form-control input-lg" ></asp:TextBox>                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your valid email." ControlToValidate="txtEmailReview" ForeColor="Red" Display="Dynamic" ValidationGroup="reviewGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid email expression!" Display="Dynamic" ControlToValidate="txtEmailReview" ForeColor="Red" ValidationGroup="reviewGroup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                </div>
                  <div class="form-outline mb-4">
                    <asp:Label ID="lblMessageReview" runat="server" Text="Message" CssClass="form-label" ></asp:Label>
                      <asp:TextBox ID="txtMessageReview" TextMode="MultiLine" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter some message." ControlToValidate="txtMessageReview" ForeColor="Red" Display="Dynamic" ValidationGroup="reviewGroup"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="col-auto">
                <!-- Submit button -->
                <div class="d-flex justify-content-center mt-4">
                    <asp:Button ID="btnSend" runat="server" Text="Send" class="btn btn-primary btn-block mb-3 w-10" ValidationGroup="reviewGroup" OnClick="btnSend_Click" />
                </div>
              </div>
            </div>

      </div>

      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        2023©Copyright:Miracle Airway
      </div>
  </footer>


</asp:Content>
