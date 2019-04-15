<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRecipeAll.aspx.cs" Inherits="UserRecipeAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="All your Recipes!!!!"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="recipe_title" HeaderText="recipe_title" SortExpression="recipe_title" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="preparation_time" HeaderText="preparation_time" SortExpression="preparation_time" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:ImageField DataImageUrlField="recipe_image" HeaderText="Recipe Image">
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Master_ChefConnectionStringUserAllRecipe %>" SelectCommand="SELECT [recipe_title], [category], [preparation_time], [description], [recipe_image] FROM [Recipe] WHERE ([user_id] IS NOT NULL)"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
