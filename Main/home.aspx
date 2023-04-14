<%@ Page Title="" Language="C#" MasterPageFile="~/Main/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineAirwayTicketBooking.Main.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%-- Landing page --%>
    
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

        <div class="mb-3">
            <h4>Miracle Airway</h4>
            <p>+977-9807654321, +977-9807654321</p>
            <p>miracleairway@gamil.com</p>
            <p>www.miracleairway.com</p>
        </div>

      <div class="container p-4 pb-0">
            <div class="row d-flex justify-content-center">
              <div class="col-auto">
                <p class="pt-2">
                  <strong>Sign up for our newsletter</strong>
                </p>
              </div>
              <div class="col-md-5 col-12">
                <!-- Email input -->
                <div class="form-outline mb-4">
                  <input type="email" id="form5Example27" class="form-control" />
                  <label class="form-label" for="form5Example27">Email address</label>
                </div>
              </div>
              <div class="col-auto">
                <!-- Submit button -->
                <button type="submit" class="btn btn-primary mb-4">
                  Subscribe
                </button>
              </div>
            </div>

      </div>

      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        2023©Copyright:Miracle Airway
      </div>
  </footer>


</asp:Content>
