<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expenses.aspx.cs" Inherits="Event_Management_System.Expenses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <%--CUSTOM CSS--%>
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
                <a class="active" href="Expenses.aspx">Expenses</a>
                <a  href="CustQueries.aspx">Customer</a>
            </div>


            <!-- content -->

            <div class="container">
                <div class="container-fluid pb-5 pt-5" style="margin-left: 100px">
                    <h3 class="text-center">Expenses
                    </h3>
                    <hr />
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <center>
                            <h4>Heading</h4>
                            <br />
                            <div class="form-group col-md-6">
                                <asp:TextBox ID="Type" runat="server" CssClass="form-control" placeholder="Expense Type"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group col-md-6">
                                <asp:TextBox ID="Amt" runat="server" CssClass="form-control" placeholder="Amount"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group col-md-6">
                                <asp:TextBox ID="Date" runat="server" CssClass="form-control" placeholder="Date"></asp:TextBox>
                                <br />
                            </div>
                            <div>
                                <div class="form-group col-md-6">
                                    <asp:TextBox ID="expensesid" runat="server" CssClass="form-control" placeholder="Enter ID"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <asp:Button ID="Add" runat="server" Text="Add" CssClass="btn btn-success col-2" OnClick="Add_Click" /> 
                            <asp:Button ID="Update" runat="server" Text="Update" CssClass="btn btn-primary col-2" OnClick="GridView1_SelectedIndexChanged" />
                            <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn btn-danger col-2" OnClick="Delete_Click" />
                        </center>

                    </div>
                    <div class="col-md-6">
                        <center>
                            <h4>Grid View here...</h4>
                            <p>&nbsp;</p>
                        </center>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Expenses]" DeleteCommand="DELETE FROM [Expenses] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Expenses] ([Type], [Amount], [Date]) VALUES (@Type, @Amount, @Date)" UpdateCommand="UPDATE [Expenses] SET [Type] = @Type, [Amount] = @Amount, [Date] = @Date WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Type" Type="String" />
                                <asp:Parameter Name="Amount" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="Date" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Type" Type="String" />
                                <asp:Parameter Name="Amount" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
