<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
          
            height: 168px;
        }
        .style2
        {
            width: 77px;
        }
        #admin
        {
            margin:150px auto;
            width:280px;
        }
        .style3
        {
            width: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <div id="admin">
        <fieldset><legend><h1 style="color:Blue">Admin Login</h1></legend>
            <table class="style1">
                <tr>
                    <td class="style2">
                        User Name</td>
                    <td class="style3">
                        <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Password</td>
                    <td class="style3">
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>    
                    </td>
                </tr>
                <tr>
                <td colspan="2"><asp:Label ID="Label1" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Button ID="login" runat="server" onclick="Button1_Click" Text="Login" 
                            style="height: 26px" />
                    </td>
                </tr>
            </table>
            </fieldset>
        
        </div>

    </form>
</body>
</html>
