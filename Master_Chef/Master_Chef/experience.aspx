<%@ Page Language="C#" AutoEventWireup="true" CodeFile="experience.aspx.cs" Inherits="experience" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 81%;
        }
        .auto-style2 {
            width: 296px;
        }
        .auto-style3 {
            width: 484px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Your Thoughts"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Add Photo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="362px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="273px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post" />
                    </td>
                </tr>
            </table>

        </div>
        <asp:Label ID="Label3" runat="server" ForeColor="#33CC33"></asp:Label>
    </form>
</body>
</html>
