<%@ Page Title="Departments" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="hrTablesDatabase.Departments" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>&nbsp;</h3>
    <p>
        <asp:Label ID="Label1" runat="server" Text="DEPARTMENT_ID"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 94px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="DEPARTMENT_NAME"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="28px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 94px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="MANAGER_ID"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="28px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 94px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="LOCATION_ID"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Height="28px" OnTextChanged="TextBox1_TextChanged" style="margin-left: 94px"></asp:TextBox>
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID FROM DEPARTMENTS" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                <asp:BoundField DataField="MANAGER_ID" HeaderText="MANAGER_ID" SortExpression="MANAGER_ID" />
                <asp:BoundField DataField="LOCATION_ID" HeaderText="LOCATION_ID" SortExpression="LOCATION_ID" />
            </Columns>
        </asp:GridView>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
