<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="viewuser.aspx.cs" Inherits="viewuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h1 style="color:Blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Users Detail...</h1>
    <asp:GridView ID="GridView1" runat="server" 
        style="margin-left: 50px; margin-top: 40px" Width="230px">
    </asp:GridView>
</asp:Content>

