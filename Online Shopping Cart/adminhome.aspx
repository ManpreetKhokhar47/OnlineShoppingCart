<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h1 style="color:Blue">&nbsp;&nbsp;&nbsp;Welcome : 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
    <br />
    <ul style="font-size:18px">
    <li>Here you can manage your site acording to your choice ...</li>
    <br />
    <li>If you want to  add new product in database then click on "add product" button and fill the details of product and then click on add product button.</li>
    <br />
    <li>If you want to view users then click on "view user" button.</li>
    <br />
    <li>If you want to change the product name,product price, product brand name,product category then click on "manage product" button.</li>
    <br /> 
    </ul>
</asp:Content>

