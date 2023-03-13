
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
          <asp:PlaceHolder ID="lgnPlaceholder" runat="server">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
          </asp:PlaceHolder>
          <asp:PlaceHolder ID="logoutPlaceholder1" runat="server" Visible="false">
              <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
              Welcome <%=HttpContext.Current.Session["fname"]%>
          </asp:PlaceHolder>
       </p>
        <div>
            <b>Welcome to login</b><br />
            <asp:PlaceHolder ID="logoutPlaceholder2" runat="server" Visible="false">
                <b>Your Name :</b><%=HttpContext.Current.Session["fname"]%>&nbsp <%=HttpContext.Current.Session["lname"]%><br />
                <b>Your Email :</b><%=HttpContext.Current.Session["email"]%>
            </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
