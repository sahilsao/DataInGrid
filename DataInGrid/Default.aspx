<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataInGrid._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Font-Bold="False" Font-Names="Calibri" Width="70%" Font-Size="Large">
        <Columns>
            <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="ViewProducts"  runat="server" CommandName="view" CommandArgument='<%# Bind("CategoryID") %>'> <%#Eval ("CategoryID") %>  </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:northwindConnectionString1 %>" ProviderName="<%$ ConnectionStrings:northwindConnectionString1.ProviderName %>" SelectCommand="SELECT [CategoryID], [CategoryName], [Description], [Picture] FROM [Categories]"></asp:SqlDataSource>

  

</asp:Content>
