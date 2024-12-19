<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Login Form</title>
    <link href="CSS/StyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
        <form id="loginForm" runat="server">
            <h2>Login</h2>
            <div class="input-field">
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="input" placeholder="Enter your email" required="true"></asp:TextBox>
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="EmailTextBox" Text="Enter your email" CssClass="input-label"></asp:Label>
            </div>
            <div class="input-field">
                <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="input" TextMode="Password" placeholder="Enter your password" required="true"></asp:TextBox>
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="PasswordTextBox" Text="Enter your password" CssClass="input-label"></asp:Label>
            </div>
            <div class="forget">
                <label for="remember">
                    <asp:CheckBox ID="RememberMeCheckBox" runat="server" />
                    <p>Remember me</p>
                </label>
                <a href="#">Forgot password?</a>
            </div>
            <asp:Button  ID="LoginButton"  runat="server" Text="Log In" OnClick="LoginButton_Click" CssClass="login-button" Height="46px" Width="357px" BorderColor="Black" BorderStyle="Solid" />
            <div class="register">
                <p>Don't have an account? </p>
                <asp:Button runat="server" Text="register" ID="register" OnClick="register_Click" />

                
            </div>
            <asp:Label ID="LoginError" runat="server" ForeColor="#CC3300"></asp:Label>
        </form>
    </div>
</body>

</html>
