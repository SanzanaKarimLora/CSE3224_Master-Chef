<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 441px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Send Your Valuable Feedback"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Master_ChefConnectionStringFeedback %>" InsertCommand="insert into Feedback values(@f_subject,@f_text,@user_id)" SelectCommand="SELECT [f_subject], [f_text] FROM [Feedback]">
                <InsertParameters>
                    <asp:Parameter Name="f_subject" />
                    <asp:Parameter Name="f_text" />
                    <asp:SessionParameter Name="user_id" SessionField="user_name" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="background-color: #FAFAD2;color: #284775;">f_subject:
                    <asp:Label ID="f_subjectLabel" runat="server" Text='<%# Eval("f_subject") %>' />
                    <br />
                    f_text:
                    <asp:Label ID="f_textLabel" runat="server" Text='<%# Eval("f_text") %>' />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #FFCC66;color: #000080;">f_subject:
                    <asp:TextBox ID="f_subjectTextBox" runat="server" Text='<%# Bind("f_subject") %>' />
                    <br />
                    f_text:
                    <asp:TextBox ID="f_textTextBox" runat="server" Text='<%# Bind("f_text") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">f_subject:
                    <asp:TextBox ID="f_subjectTextBox" runat="server" Text='<%# Bind("f_subject") %>' />
                    <br />
                    f_text:
                    <asp:TextBox ID="f_textTextBox" runat="server" Text='<%# Bind("f_text") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #FFFBD6;color: #333333;">f_subject:
                    <asp:Label ID="f_subjectLabel" runat="server" Text='<%# Eval("f_subject") %>' />
                    <br />
                    f_text:
                    <asp:Label ID="f_textLabel" runat="server" Text='<%# Eval("f_text") %>' />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">f_subject:
                    <asp:Label ID="f_subjectLabel" runat="server" Text='<%# Eval("f_subject") %>' />
                    <br />
                    f_text:
                    <asp:Label ID="f_textLabel" runat="server" Text='<%# Eval("f_text") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
