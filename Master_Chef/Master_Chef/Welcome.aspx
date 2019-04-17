<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Feed.aspx">Feedback</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserRecipeAdd.aspx">Add Recipe</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UserRecipeAll.aspx">View All Recipe</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/experience.aspx"> Share Experience</asp:HyperLink>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="Black" />
        </div>
    </form>
</body>
</html>
