<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BookOnline.aspx.cs" Inherits="Event_Management_System.BookOnline" %>

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

    <div class="container">
        <center>

            <h3 style="color: #560405;">Booking Form</h3>
            <hr />

            <div class="col-md-6">
                <asp:TextBox ID="fullname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
            </div>
            <br />

            <div class="col-md-6">
                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Email Address" AutoCompleteType="Email"> </asp:TextBox>
            </div>
            <br />

            <div class="col-md-6">
                <asp:TextBox ID="city" runat="server" CssClass="form-control" placeholder="city"></asp:TextBox>
            </div>
            <br />

            <div class="col-md-6">
                <asp:TextBox ID="mobile" runat="server" CssClass="form-control" placeholder="Mobile Number"> </asp:TextBox>
            </div>
            <br />

            <div class="col-md-6">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                    <asp:ListItem Text="---Select Event Type---" Value="1" />
                    <asp:ListItem Text="Birthday Celebration" Value="2" />
                    <asp:ListItem Text="Anniversay Celebration" Value="3" />
                    <asp:ListItem Text="Naming Ceremony" Value="4" />
                    <asp:ListItem Text="Engagement" Value="4" />
                    <asp:ListItem Text="Open Mic" Value="5" />
                    <asp:ListItem Text="Other" Value="6" />
                </asp:DropDownList>

            </div>
            <br />

            <div class="col-md-6">
                <asp:TextBox ID="date" runat="server" CssClass="form-control" placeholder="Date"></asp:TextBox>
            </div>
            <br />

            <div class="col-md-6">
                <asp:TextBox ID="nopeople" runat="server" CssClass="form-control" placeholder="Number of People"> </asp:TextBox>
            </div>
            <br />

            <div class="col-md-6">
                <asp:TextBox ID="eventdesc" runat="server" CssClass="form-control" placeholder="Event Description" TextMode="MultiLine" Height="100px"> </asp:TextBox>
            </div>
            <br />

            <div class="row">
                <div class="col-md-12">
                    <asp:Button ID="clear" runat="server" Text="Clear" CssClass="form-contrl btn btn-warning m-4" />

                    <asp:Button ID="submit" runat="server" Text="Submit" CssClass="form-contrl btn btn-success m-4" />
                </div>
            </div>
        </center>
    </div>

</asp:Content>
