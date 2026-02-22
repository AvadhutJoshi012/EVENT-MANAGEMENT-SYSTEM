<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="Event_Management_System.ContactUS" %>

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

    <div class="container-fluid">
        <div class="container">
            <center>
                <h3 style="color: #560405;">Contact Us
                </h3>
                <hr />
            </center>
        </div>


        <%-- Form --%>



        <section class="form-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <%--<input type="text" class="form-control" placeholder="Full name *">--%><br />
                                    <asp:TextBox ID="FullName" runat="server" CssClass="form-control" placeholder="Full name"></asp:TextBox>

                                </div>
                                <div class="form-group col-md-12">
                                    <%--<input type="email" class="form-control" placeholder="Email Address *">--%><br />
                                    <asp:TextBox ID="Address" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <%--<input type="number" class="form-control" placeholder="Contact Number *">--%><br />
                                    <asp:TextBox ID="Number" runat="server" CssClass="form-control" placeholder="Contact Number"></asp:TextBox><br />
                                </div>

                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <%--<textarea class="form-control" rows="3" placeholder="Write here"></textarea>--%>
                                    <asp:TextBox ID="Message1" runat="server" CssClass="form-control" placeholder="Write here..." Height="100px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12 text-center">
                                    <br />
                                    <%-- <button type="submit" class="btn btn-success" >Submit</button>--%>

                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success btn-block mb-4" OnClick="Button1_Click" />

                                </div>
                            </div>

                        </form>

                    </div>



                    <div class="col-md-6 address">
                        <h5>Call Us / WhatsApp</h5>
                        <p>
                            <a href="tel:"><i class="fas fa-phone"></i>Number here </a>
                            <br>
                        </p>
                        <h5>Email </h5>
                        <p>
                            <a href="mailto:"><i class="fas fa-envelope"></i>email Id here</a>
                            <br>
                        </p>
                        <h5>Timings</h5>
                        <p>
                            Description
                        </p>
                        <h5>Address</h5>
                        <p>
                            Description
                        </p>
                    </div>
                </div>

                <%-- Feedback Form --%>
                <div class="row">
                    <center>
                        <h3 class="text-center">Feedback Form</h3>
                        <br />
                        <hr />
                        <br />
                        <div class="form-group col-md-12">
                            <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox><br />
                        </div>
                        <div class="form-group col-md-12">
                            <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="E-mail Id"></asp:TextBox><br />
                        </div>
                        <div class="form-group col-md-12">
                            <asp:TextBox ID="message" runat="server" CssClass="form-control" placeholder="Write here..." TextMode="MultiLine" Height="100px"></asp:TextBox><br />
                        </div>
                        <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-success btn-block col-1" OnClick="Button1_Click" />
                    </center>
                </div>
        </section>


        <br />
        <%-- Location --%>
        <div class="cointainer-fluid pb-5 pt-5" style="background-color: #e0dede;">
            <center>
                <div class="container-fluid">
                    <h2>Our Location </h2>
                    <hr />

                    <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d477.3003727285081!2d74.27523065795094!3d16.855948458985228!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1677674907923!5m2!1sen!2sin" width="100%" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </center>
        </div>
</asp:Content>
