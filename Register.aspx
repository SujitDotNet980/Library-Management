<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Library_Management.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up / Registration Form</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="CSS/Registerstyle.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
        <div class="center">
            <h1>Register</h1>
            
                <div class="txt_field">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                    <span></span>
                    <label for="txtName">Name</label>
                </div>
                <div class="txt_field">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required="required"></asp:TextBox>
                    <span></span>
                    <label for="txtEmail">Email</label>
                </div>
                <div class="txt_field">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                    <span></span>
                    <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    <label for="txtPassword">Password</label>
                </div>
                <div class="txt_field">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox>
                    <span></span>
                    <asp:CompareValidator ID="CompareValidator2" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    <label for="txtConfirmPassword">Confirm Password</label>
                </div>
                <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" CssClass="submit-btn" OnClick="btnSubmit_Click" />
                <div class="signup_link">
                    Have an Account? <a href="#">Login Here</a>
                </div>
            </form>
    <div />
    <div />
    <div />

    </form>
</body>
</html>
