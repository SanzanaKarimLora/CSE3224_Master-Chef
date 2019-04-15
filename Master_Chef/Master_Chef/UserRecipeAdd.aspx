<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRecipeAdd.aspx.cs" Inherits="UserRecipeAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 67%;
            height: 341px;
        }
        .auto-style2 {
            width: 270px;
        }
        .auto-style3 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="User Recipe Upload"></asp:Label>
            <br />
            <br />
            Upload New Recipe!!!<br />
            <br />
            <table border="1" class="auto-style1" style="font-family: 'Comic Sans MS'; font-size: medium; font-weight: normal; font-style: normal">
                <tr>
                    <td class="auto-style2">Recipe Title</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Height="25px" Width="371px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Category</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Height="25px" Width="371px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Preparation Time in minutes</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Height="25px" Width="371px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Description</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" Height="79px" Width="371px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Recipe Image</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="374px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Label2" runat="server" ForeColor="#006600"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserRecipeAll.aspx">View all</asp:HyperLink>
    </form>
</body>
</html>
