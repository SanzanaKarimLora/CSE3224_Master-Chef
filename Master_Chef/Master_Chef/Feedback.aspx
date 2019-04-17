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
            <asp:Label ID="Label1" runat="server" Text="User's Valuable Feedback"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Master_ChefConnectionStringFeedback %>" InsertCommand="insert into Feedback values(@f_subject,@f_text,@user_id)" SelectCommand="SELECT user_id, f_subject AS Subject, f_text AS Feedback, f_date AS Date FROM Feedback">
                <InsertParameters>
                    <asp:Parameter Name="f_subject" />
                    <asp:Parameter Name="f_text" />
                    <asp:SessionParameter Name="user_id" SessionField="user_name" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <span style="background-color: #FAFAD2;color: #284775;">user_id:
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Feedback:
                    <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                    <br />
                    Date:
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #FFCC66;color: #000080;">user_id:
                    <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                    <br />
                    Subject:
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                    <br />
                    Feedback:
                    <asp:TextBox ID="FeedbackTextBox" runat="server" Text='<%# Bind("Feedback") %>' />
                    <br />
                    Date:
                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
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
                    <span style="">user_id:
                    <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                    <br />
                    Subject:
                    <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>'></asp:TextBox>
                    <br />
                    Feedback:
                    <asp:TextBox ID="FeedbackTextBox" runat="server" Text='<%# Bind("Feedback") %>' />
                    <br />
                    Date:
                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #FFFBD6;color: #333333;">user_id:
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Feedback:
                    <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                    <br />
                    Date:
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">user_id:
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                    <br />
                    Subject:
                    <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                    <br />
                    Feedback:
                    <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                    <br />
                    Date:
                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
