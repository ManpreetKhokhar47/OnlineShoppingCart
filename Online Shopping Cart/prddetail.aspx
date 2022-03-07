<%@ Page Title="" Language="C#" MasterPageFile="~/lgn_and_reg.master" AutoEventWireup="true" CodeFile="prddetail.aspx.cs" Inherits="prddetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="topmargin"></div>
    
    <table style="height:400px; margin-left: 20px;">
        <tr>
            <td>Customer Id : </td>
            <td>
                <asp:Label ID="lblcid" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>Product Id: </td>
            <td>
                <asp:Label ID="lblpid" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>Product Name : </td>
            <td>
                <asp:Label ID="lblpname" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>Price : </td>
            <td>
                <asp:Label ID="lblpprice" runat="server"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>Quantity : </td>
            <td>
                <asp:DropDownList ID="txtqnty" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="txtqnty_SelectedIndexChanged">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td>Total Amount : </td>
        <td>
            <asp:Label ID="lbltotal" runat="server"></asp:Label></td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="addprd" runat="server" Text="Add To Cart" 
                    onclick="addprd_Click" /></td>
        </tr>
    </table>

</asp:Content>

