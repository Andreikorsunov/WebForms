<%@ Page Title="Lisa toode" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebForms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lisa toode</h1>
    <div class="row">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="toodeID" DataSourceID="SqlDataSource77" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="toodeID" HeaderText="toodeID" InsertVisible="False" ReadOnly="True" SortExpression="toodeID" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                <asp:TemplateField HeaderText="toodeTyyp" SortExpression="toodeTyyp">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("toodeTyyp") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource66" DataTextField="toodeTyyp" DataValueField="tyypID" SelectedValue='<%# Bind("toodeTyyp") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:korsunovConnectionString1 %>" DeleteCommand="DELETE FROM [toodeTyyp] WHERE [tyypID] = @tyypID" InsertCommand="INSERT INTO [toodeTyyp] ([toodeTyyp]) VALUES (@toodeTyyp)" SelectCommand="SELECT [tyypID], [toodeTyyp] FROM [toodeTyyp]" UpdateCommand="UPDATE [toodeTyyp] SET [toodeTyyp] = @toodeTyyp WHERE [tyypID] = @tyypID">
                            <DeleteParameters>
                                <asp:Parameter Name="tyypID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="toodeTyyp" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="toodeTyyp" Type="String" />
                                <asp:Parameter Name="tyypID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("toodeTyyp") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource77" runat="server" ConnectionString="<%$ ConnectionStrings:korsunovConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [toodeID] = @toodeID" InsertCommand="INSERT INTO [toode] ([nimetus], [kogus], [toodeTyyp]) VALUES (@nimetus, @kogus, @toodeTyyp)" SelectCommand="SELECT * FROM [toode]" UpdateCommand="UPDATE [toode] SET [nimetus] = @nimetus, [kogus] = @kogus, [toodeTyyp] = @toodeTyyp WHERE [toodeID] = @toodeID">
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
    </div>
</asp:Content>
