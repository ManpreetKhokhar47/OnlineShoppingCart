<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addprd.aspx.cs" Inherits="addprd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 195px;
        }
        .style2
        {
            width: 146px;
        }
        .style3
        {
            width: 94px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="addprd">
<fieldset><legend><h1 style="color:Blue">Add Product Details</h1></legend>
    <table align="center" style="height: 235px; width: 489px;">

    <tr>
    <td class="style3">Name : </td>
    <td class="style1">
        <asp:TextBox ID="pname" runat="server" CssClass="textboxstyle"></asp:TextBox>
    </td>
    <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="pname" ErrorMessage="*" ForeColor="Red" ValidationGroup="ap"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="pname" ErrorMessage="*" ForeColor="Red" 
            ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
    <td class="style3">Brand Name : </td>
    <td class="style1">
        <asp:DropDownList ID="pbname" runat="server" CssClass="dropdownliststyle">
            <asp:ListItem Value="0">--Select Brand Name--</asp:ListItem>
            <asp:ListItem>adidas</asp:ListItem>
            <asp:ListItem>nike</asp:ListItem>
            <asp:ListItem>reebok</asp:ListItem>
            <asp:ListItem>fila</asp:ListItem>
            <asp:ListItem>lee</asp:ListItem>
            <asp:ListItem>puma</asp:ListItem>
            <asp:ListItem>Allen Solly</asp:ListItem>
            <asp:ListItem>Citizen</asp:ListItem>
            <asp:ListItem>Casio</asp:ListItem>
            <asp:ListItem>Q&Q</asp:ListItem>
            <asp:ListItem>Levis</asp:ListItem>

        </asp:DropDownList>
    </td>
    <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="pbname" ErrorMessage="*" ForeColor="Red" InitialValue="0" 
            ValidationGroup="ap"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
    <td class="style3">Price : </td>
    <td class="style1">
        <asp:TextBox ID="pprice" runat="server" CssClass="textboxstyle"></asp:TextBox></td>
    <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="pprice" ErrorMessage="*" ForeColor="Red" 
            ValidationGroup="ap"></asp:RequiredFieldValidator>
        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="pprice" ErrorMessage="*" ForeColor="Red" 
            ValidationExpression="^[0-9]+$" ValidationGroup="ap"></asp:RegularExpressionValidator>--%>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="pprice" ErrorMessage="*" ForeColor="Red" 
            ValidationGroup="ap" ValidationExpression="^\d{2,5}(\.\d{1,2})?$"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
    <td class="style3">Category : </td>
    <td class="style1">
        <asp:DropDownList ID="pcategory" runat="server" CssClass="dropdownliststyle">
            <asp:ListItem Value="0">--Select Category--</asp:ListItem>
            <asp:ListItem>clothing</asp:ListItem>
            <asp:ListItem>shoes</asp:ListItem>
            <asp:ListItem>accessories</asp:ListItem>
            <asp:ListItem>watches</asp:ListItem>
            <asp:ListItem>sunglasses</asp:ListItem>
            <asp:ListItem>sportswear</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="pcategory" ErrorMessage="*" ForeColor="Red" InitialValue="0" 
            ValidationGroup="ap"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
    <td class="style3">Picture : </td>
    <td class="style1">
        <asp:FileUpload ID="prdpicture" runat="server" /></td>
    <td class="style2">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="prdpicture" ErrorMessage="Only .jpg files allowed" 
            ForeColor="Red" ValidationExpression="([^\s]+(\.(?i)(jpg))$)" 
            ValidationGroup="ap"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td class="style3"></td>
    <td class="style1">
        <asp:Button ID="Button1" runat="server" Text="Add Product" 
            onclick="Button1_Click" ValidationGroup="ap" /></td>
    <td class="style2">
        <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>

</table>
</fieldset>
</div>
</asp:Content>

