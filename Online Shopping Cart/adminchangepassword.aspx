<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminchangepassword.aspx.cs" Inherits="adminchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="acp">
    <fieldset><legend><h1 style="color:Blue">Change Password</h1></legend>
        <table>
            <tr>
                <td class="style1">Old Password</td>
                <td>
                    <asp:TextBox ID="op" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="op" ErrorMessage="*" ForeColor="Red" ValidationGroup="acp"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="op" ErrorMessage="*" ForeColor="Red" 
                        onservervalidate="CustomValidator1_ServerValidate" ValidationGroup="acp"></asp:CustomValidator>
                </td>
            </tr>

            <tr>
                <td class="style1">New Password</td>
                <td><asp:TextBox ID="np" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="np" ErrorMessage="*" ForeColor="Red" ValidationGroup="acp"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                        ControlToValidate="np" ErrorMessage="*" ForeColor="Red" 
                        onservervalidate="CustomValidator2_ServerValidate" ValidationGroup="acp"></asp:CustomValidator>
                </td>
            </tr>

            <tr>
                <td class="style1">Confirm Password</td>
                <td><asp:TextBox ID="cp" runat="server" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="cp" ErrorMessage="*" ForeColor="Red" ValidationGroup="acp"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="np" ControlToValidate="cp" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="acp"></asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td class="style1"></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Change Password" 
                        onclick="Button1_Click" ValidationGroup="acp" /></td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
        </table>
        </fieldset>
    </div>

</asp:Content>

