<%@ Page Title="Tooded" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tooded.aspx.cs" Inherits="WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Tooded</h1>
        <p class="lead">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="toodeID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="toodeID" HeaderText="toodeID" InsertVisible="False" ReadOnly="True" SortExpression="toodeID" Visible="False" />
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                    <asp:BoundField DataField="Expr1" HeaderText="toodetyyp" SortExpression="Expr1" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:korsunovConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [toodeID] = @toodeID" InsertCommand="INSERT INTO [toode] ([nimetus], [kogus], [toodeTyyp]) VALUES (@nimetus, @kogus, @toodeTyyp)" SelectCommand="SELECT toode.toodeID, toode.nimetus, toode.kogus, toodeTyyp.toodeTyyp AS Expr1 FROM toode INNER JOIN toodeTyyp ON toode.toodeTyyp = toodeTyyp.tyypID" UpdateCommand="UPDATE [toode] SET [nimetus] = @nimetus, [kogus] = @kogus, [toodeTyyp] = @toodeTyyp WHERE [toodeID] = @toodeID">
                <DeleteParameters>
                    <asp:Parameter Name="toodeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kogus" Type="Int32" />
                    <asp:Parameter Name="toodeTyyp" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kogus" Type="Int32" />
                    <asp:Parameter Name="toodeTyyp" Type="Int32" />
                    <asp:Parameter Name="toodeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </div>

</asp:Content>
