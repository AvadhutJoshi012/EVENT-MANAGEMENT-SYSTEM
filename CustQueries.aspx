<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustQueries.aspx.cs" Inherits="Event_Management_System.CustQueries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <%--CUSTOM CSS--%>
    <%--<link href="CSS/StyleSheet1.css" rel="stylesheet" />--%>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />

    <%--Bootstrap css--%>
    <link href="Bootstrap/CSS/bootstrap.min.css" rel="stylesheet" />

    <%--Font Awsome css --%>
    <link href="FontAwsome/css/all.css" rel="stylesheet" />

    <%--Data Table css--%>
    <link href="DataTables/css/jquery.dataTables.min.css" rel="stylesheet" />

    <%--jquery--%>
    <script src="Bootstrap/JS/jquery-3.2.1.slim.min.js"></script>

    <%--popper--%>
    <script src="Bootstrap/JS/popper.min.js"></script>

    <%--bootstrapjs--%>
    <script src="Bootstrap/JS/bootstrap.min.js"></script>

    <style>

     
        
.sidebar {
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}

    /* Sidebar links */
    .sidebar a {
        display: block;
        color: black;
        padding: 16px;
        text-decoration: none;
    }

        /* Active/current link */
        .sidebar a.active {
            background-color: #f5ce42;
            color: white;
        }

        /* Links on mouse-over */
        .sidebar a:hover:not(.active) {
            background-color: #555;
            color: white;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div>
             <!-- The sidebar -->
            <div class="sidebar">
                <a href="Dashboard.aspx">Dashboard</a>
                <a href="Bookings.aspx">Bookings</a>
                <a href="Employees.aspx">Employees</a>
                <a href="Expenses.aspx">Expenses</a>
                <a class="active" href="CustQueries.aspx">Customer</a>
            </div>

            <!-- content -->

            <div class="container">
                <div class="container-fluid pb-5 pt-5" style="margin-left: 100px">
                    <h3 class="text-center">Customer Queries
                    </h3>
                    <hr />

                    <center>

                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Cust_name" HeaderText="Cust_name" SortExpression="Cust_name" />
                    <asp:BoundField DataField="Cust_EmailID" HeaderText="Cust_EmailID" SortExpression="Cust_EmailID" />
                    <asp:BoundField DataField="Cust_MobileNo" HeaderText="Cust_MobileNo" SortExpression="Cust_MobileNo" />
                    <asp:BoundField DataField="Cust_Message" HeaderText="Cust_Message" SortExpression="Cust_Message" />
                </Columns>
             </asp:GridView>
                        </center>
                </div>
            </div>
           
                
                
            
          
            <div class="container">
                <div class="container-fluid pb-5 pt-5" style="margin-left: 100px">
                    <h3 class="text-center">Customer Feedback
                    </h3>
                    <hr />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Cust_Name" HeaderText="Cust_Name" SortExpression="Cust_Name" />
                            <asp:BoundField DataField="Cust_Email" HeaderText="Cust_Email" SortExpression="Cust_Email" />
                            <asp:BoundField DataField="Cust_Message" HeaderText="Cust_Message" SortExpression="Cust_Message" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                </div>
            </div>

           

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ContactUs]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
