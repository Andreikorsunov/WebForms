<%@ Page Title="Postav" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Postav.aspx.cs" Inherits="WebForms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Postav</h1>
    <div class="row">
        <div class="col-md-4">
            <p>
              
            </p>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="postavID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="postavID" HeaderText="postavID" ReadOnly="True" SortExpression="postavID" Visible="False" />
                <asp:BoundField DataField="postavnazv" HeaderText="postavnazv" SortExpression="postavnazv" />
                <asp:BoundField DataField="toode" HeaderText="toode" SortExpression="toode" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:korsunovConnectionString1 %>" DeleteCommand="DELETE FROM [postav] WHERE [postavID] = @postavID" InsertCommand="INSERT INTO [postav] ([postavnazv], [toode]) VALUES (@postavnazv, @toode)" ProviderName="<%$ ConnectionStrings:korsunovConnectionString1.ProviderName %>" SelectCommand="SELECT [postavID], [postavnazv], [toode] FROM [postav]" UpdateCommand="UPDATE [postav] SET [postavnazv] = @postavnazv, [toode] = @toode WHERE [postavID] = @postavID">
            <DeleteParameters>
                <asp:Parameter Name="postavID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="postavnazv" Type="String" />
                <asp:Parameter Name="toode" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="postavnazv" Type="String" />
                <asp:Parameter Name="toode" Type="Int32" />
                <asp:Parameter Name="postavID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
