<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login Form</h1>
        <asp:Label ID="errorMsg" runat="server"></asp:Label>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Email ID"></asp:Label><br/>
            <asp:textbox ID="email" runat="server" placeholder="Enter Email"></asp:textbox><br/>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br/>
            <asp:textbox ID="password" runat="server" placeholder="Enter Password" TextMode="Password"></asp:textbox><br/>
            <br /><br />

            <asp:Button ID="lgn" runat="server" Text="Login" OnClick="lgn_Click" />
        </div>
    </form>
</body>
</html>
