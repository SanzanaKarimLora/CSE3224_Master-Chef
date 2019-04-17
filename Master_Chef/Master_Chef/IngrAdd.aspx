<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IngrAdd.aspx.cs" Inherits="IngrAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family:'Comic Sans MS';
            font-size:20pt;
        }

        input[type=text]
        {
            margin-bottom:10pt;
        }

        .butn {
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.butn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Enter ingredients of your recipe"></asp:Label>
        <asp:Panel ID="pnlSearch" runat="server" CssClass="divdata" BackColor="#33cc33"></asp:Panel>
        <div>
            <asp:Button ID="btnAddIn" runat="server" Text="Add ingredients" CssClass="butn" OnClick="btnAddIn_Click" />
            
            <asp:Button ID="btngo" runat="server" Text="Go" CssClass="butn" OnClick="btngo_Click" />
        </div>
        <asp:Label ID="lblPrep" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
