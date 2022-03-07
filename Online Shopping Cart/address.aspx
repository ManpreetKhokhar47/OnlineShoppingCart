<%@ Page Title="" Language="C#" MasterPageFile="~/lgn_and_reg.master" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 128px;
        }
        .style3
        {
            width: 214px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="topmargin"></div>
    <div id="address">
    <fieldset>
    <legend style="color:Blue; font-size:24px; font-weight:bold">Enter Your Shipping Address</legend>
    <table style="width: 452px; height: 268px">
        <tr>
            <td class="style2">Name : </td>
            <td class="style3">
            <asp:HiddenField ID="Hfid" runat ="server" />
                <asp:TextBox ID="txtname" runat="server" CssClass="txtbx"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="add"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="add"></asp:RegularExpressionValidator>
            </td>
        </tr>
        

        <tr>
            <td class="style2">City : </td>
            <td class="style3">
                <asp:TextBox ID="txtcity" runat="server" CssClass="txtbx"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="add"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="add"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td class="style2">Distt : </td>
            <td class="style3">
                <asp:TextBox ID="txtdistt" runat="server" CssClass="txtbx"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdistt" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="add"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtdistt" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="add"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td class="style2">PIN : </td>
            <td class="style3">
                <asp:TextBox ID="txtpin" runat="server" CssClass="txtbx"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="add"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\d{6}" ValidationGroup="add"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <td>Country : </td>
        <td>
            <asp:TextBox ID="txtcountry" runat="server" CssClass="txtbx"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtcountry" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="add"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="txtcountry" ErrorMessage="*" ForeColor="Red" 
                ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="add"></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td class="style2">Mobile No :&nbsp;&nbsp;&nbsp;&nbsp; +91</td>
            <td class="style3">
                <asp:TextBox ID="txtphone" runat="server" CssClass="txtbx"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="add"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtphone" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\d{10}" ValidationGroup="add"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <td class="style2">Address : </td>
        <td class="style3">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" 
                CssClass="txtadr"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red" 
                ValidationGroup="add"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="height:10px">
        <td></td>
        <td></td>
        <td></td>
        </tr>

        <tr>
        <td class="style2"></td>
        <td class="style3">
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="save" 
                onclick="LinkButton1_Click" ValidationGroup="add">SAVE &amp; CONTINUE</asp:LinkButton></td>
        <td></td>
        </tr>
    </table>
    </fieldset>
    </div>
</asp:Content>

