<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userbooks.aspx.cs" Inherits="books.userbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="auther" HeaderText="auther" SortExpression="auther" />
                    <asp:BoundField DataField="desc" HeaderText="desc" SortExpression="desc" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [books] WHERE [Id] = @Id" InsertCommand="INSERT INTO [books] ([name], [auther], [desc], [price], [type], [image]) VALUES (@name, @auther, @desc, @price, @type, @image)" SelectCommand="SELECT * FROM [books]" UpdateCommand="UPDATE [books] SET [name] = @name, [auther] = @auther, [desc] = @desc, [price] = @price, [type] = @type, [image] = @image WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="auther" Type="String" />
                    <asp:Parameter Name="desc" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="auther" Type="String" />
                    <asp:Parameter Name="desc" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
