<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BreakfastCenter.aspx.cs" Inherits="Event_Management_System.BreakfastCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
      <style>
        .navbar {
            background-color: #f5ce42;
        }
    </style>

     <br />
    <br />
    <br />

    <center>

        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Images/img.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/img.jpg" class="d-block w-75" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/img.jpg" class="d-block w-75" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

    </center>


    <%-- Details about the lawn --%>


    <div class="container-fluid">
        <br />
        <br />
        <div class="container">
            <h3 class="text-center">Annapurna Breakfast Center
            </h3>
            <hr />
            <p class="text-center">
                Details about Annapurna Breakfast center
            </p>

        </div>
    </div>

    <br />

    <%-- Availaable Services --%>

    <div class="container-fluid">
        <br />
        <br />
        <div class="container">
            <h3 class="text-center">Available Menu
            </h3>
            <hr />
            <p class="text-center">
            </p>

        </div>
    </div>


            
    <%-- Location --%>
    <div class="cointainer-fluid pb-5 pt-5" style="background-color: #e0dede;">
        <center>
            <div class="container">
                <h2>Our Location </h2>
                <hr />

                <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d477.3003727285081!2d74.27523065795094!3d16.855948458985228!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1677674907923!5m2!1sen!2sin" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </center>
    </div>



</asp:Content>
