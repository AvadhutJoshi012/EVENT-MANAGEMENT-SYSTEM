<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Event_Management_System.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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

    <title></title>
</head>
<body>

    <div>
        <center>
            <div class="card" style="width: 25rem; margin-top: 200px;">
                <div class="card-body">
                    <h5 class="card-title">Admin Login</h5>
                    <hr />
                    <p class="card-text">

                        <form id="form1" runat="server">
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                              <%--  <input type="email" id="form2Example1" class="form-control" placeholder="Username" />--%>

                                <asp:TextBox ID="username" runat="server" class="form-control" placeholder="Username" ></asp:TextBox>

                                <%--<label class="form-label" for="form2Example1">Email address</label>--%>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                               <%-- <input type="password" id="form2Example2" class="form-control" placeholder="Password" />--%>

                                <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                <%--<label class="form-label" for="form2Example2">Password</label>--%>
                            </div>

                            <!-- 2 column grid layout for inline styling -->
                            <div class="row mb-4">
                                <div class="col d-flex justify-content-center">
                                    <!-- Checkbox -->
                                    <%--<div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
        <label class="form-check-label" for="form2Example31"> Remember me </label>
      </div>--%>
                                </div>

                                <%--<div class="col">
      <!-- Simple link -->
      <a href="#!">Forgot password?</a>
    </div>--%>
                            </div>

                            <!-- Submit button -->

                            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-success btn-block mb-4" OnClick="Button1_Click" />



                        </form>
                    </p>
                </div>
            </div>
            <br />

        </center>
    </div>

</body>
</html>
