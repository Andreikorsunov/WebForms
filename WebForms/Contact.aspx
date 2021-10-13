<%@ Page Title="Toode Tüüp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Toode Tüüp</h1>
    <div class="row">
        <div class="col-md-4">
            <p>
              
            </p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:korsunovConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [toodeID] = @toodeID" InsertCommand="INSERT INTO [toode] ([nimetus], [kogus], [toodeTyyp]) VALUES (@nimetus, @kogus, @toodeTyyp)" SelectCommand="SELECT * FROM [toode]" UpdateCommand="UPDATE [toode] SET [nimetus] = @nimetus, [kogus] = @kogus, [toodeTyyp] = @toodeTyyp WHERE [toodeID] = @toodeID">
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tyypID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="tyypID" HeaderText="tyypID" ReadOnly="True" SortExpression="tyypID" Visible="False" />
                <asp:BoundField DataField="toodeTyyp" HeaderText="toodeTyyp" SortExpression="toodeTyyp" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:korsunovConnectionString1 %>" DeleteCommand="DELETE FROM [toodeTyyp] WHERE [tyypID] = @tyypID" InsertCommand="INSERT INTO [toodeTyyp] ([toodeTyyp], [kirjeldus]) VALUES (@toodeTyyp, @kirjeldus)" SelectCommand="SELECT [tyypID], [toodeTyyp], [kirjeldus] FROM [toodeTyyp]" UpdateCommand="UPDATE [toodeTyyp] SET [toodeTyyp] = @toodeTyyp, [kirjeldus] = @kirjeldus WHERE [tyypID] = @tyypID">
            <DeleteParameters>
                <asp:Parameter Name="tyypID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="toodeTyyp" Type="String" />
                <asp:Parameter Name="kirjeldus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="toodeTyyp" Type="String" />
                <asp:Parameter Name="kirjeldus" Type="String" />
                <asp:Parameter Name="tyypID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
