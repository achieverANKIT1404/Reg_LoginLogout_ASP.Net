<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Register Form</h1>
        <div>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label><br/>
            <asp:textbox ID="fname" runat="server" placeholder="Enter First Name"></asp:textbox><br/>
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br/>
            <asp:textbox ID="lname" runat="server" placeholder="Enter Last Name"></asp:textbox><br/>
            <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label><br/>
            <asp:textbox ID="email" runat="server" placeholder="Enter Email"></asp:textbox><br/>
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br/>
            <asp:textbox ID="password" runat="server" placeholder="Enter Password" TextMode="Password"></asp:textbox><br/>
            <br /><br />

            <asp:Button ID="reg" runat="server" Text="Register" OnClick="reg_Click" />
        </div>
    </form>
</body>
</html>
