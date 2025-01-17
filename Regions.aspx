﻿<%@ Page Title="Regions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Regions.aspx.cs" Inherits="hrTablesDatabase.Regions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text="REGION_ID"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="REGION_NAME"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" DataKeyNames="REGION_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="REGION_ID" HeaderText="REGION_ID" ReadOnly="True" SortExpression="REGION_ID" />
            <asp:BoundField DataField="REGION_NAME" HeaderText="REGION_NAME" SortExpression="REGION_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="SELECT REGION_ID, REGION_NAME FROM REGIONS"></asp:SqlDataSource>
</p>
<p>&nbsp;</p>
<br />
</asp:Content>
