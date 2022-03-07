<%@ Page Title="" Language="C#" MasterPageFile="~/lgn_and_reg.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        .style8
        {
            width: 140px;
        }
        .style9
        {
            width: 94px;
        }
        .style10
        {
            width: 271px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="topmargin"></div>
      
      <div class="profile">
    <fieldset>
    <legend style="color:Blue; font-size:24px; font-weight:bold">Address</legend>
    <table style="width: 452px; height: 268px">
        <tr>
            <td class="style2">Name : </td>
            <td class="style3">
                <asp:Label ID="lblname" runat="server"></asp:Label></td>
            <td></td>
        </tr>
        

        <tr>
            <td class="style2">City : </td>
            <td class="style3">
                <asp:Label ID="lblcity" runat="server"></asp:Label></td>
            <td></td>
        </tr>

        <tr>
            <td class="style2">Distt : </td>
            <td class="style3">
                <asp:Label ID="lbldistt" runat="server"></asp:Label></td>
            <td></td>
        </tr>

        <tr>
            <td class="style2">PIN : </td>
            <td class="style3">
                <asp:Label ID="lblpin" runat="server"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
        <td>Country : </td>
        <td>
             <asp:Label ID="lblcountry" runat="server"></asp:Label></td>
        <td></td>
        </tr>

        <tr>
            <td class="style2">Phone No : </td>
            <td class="style3">
                 <asp:Label ID="lblphno" runat="server"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
        <td class="style2">Address : </td>
        <td class="style3">
             <asp:Label ID="lbladdress" runat="server"></asp:Label></td>
        <td></td>
        </tr>


    </table>
    </fieldset>
    </div>

    <div id="topmargin1"></div>
    <div class="profile">
    <fieldset>
    <legend style="color:Blue; font-size:24px; font-weight:bold">Change Password</legend>
    <table style="width: 634px; height: 268px">
        <tr>
            <td class="style8">E-Mail Id : </td>
            <td class="style9">
                <asp:TextBox ID="txtemail" runat="server" Width="160px"></asp:TextBox>
                
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="cp"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="cp"></asp:RegularExpressionValidator>
            </td>
        </tr>
        

        <tr>
            <td class="style8">Old Password : </td>
            <td class="style9">
               <asp:TextBox ID="txtoldpwd" runat="server" Width="160px"></asp:TextBox></td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtoldpwd" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="cp"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="txtoldpwd" ErrorMessage="*" ForeColor="Red" 
                    onservervalidate="CustomValidator1_ServerValidate" ValidationGroup="cp"></asp:CustomValidator>
            </td>
        </tr>

        <tr>
            <td class="style8">New Password : </td>
            <td class="style9">
                <asp:TextBox ID="txtnewpwd" runat="server" Width="160px"></asp:TextBox></td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnewpwd" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="cp"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator2" runat="server" 
                    ControlToValidate="txtnewpwd" ErrorMessage="*" ForeColor="Red" 
                    onservervalidate="CustomValidator2_ServerValidate" ValidationGroup="cp"></asp:CustomValidator>
            </td>
        </tr>

        <tr>
            <td class="style8">Confirm Password : </td>
            <td class="style9">
                <asp:TextBox ID="txtcpwd" runat="server" Width="160px"></asp:TextBox></td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcpwd" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="cp"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpwd" ControlToValidate="txtcpwd" ErrorMessage="*" 
                    ForeColor="Red" ValidationGroup="cp"></asp:CompareValidator>
            </td>
        </tr>
        
        <tr>
        <td class="style8"></td>
        <td class="style9">
            <asp:Button ID="changepwd" runat="server" Text="Change Password" 
                onclick="changepwd_Click" ValidationGroup="cp" /></td>
            <td class="style10">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
    </fieldset>
    </div>


</asp:Content>

