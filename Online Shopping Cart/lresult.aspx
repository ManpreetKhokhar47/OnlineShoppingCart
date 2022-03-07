<%@ Page Title="" Language="C#" MasterPageFile="~/lgn_and_reg.master" AutoEventWireup="true" CodeFile="lresult.aspx.cs" Inherits="lresult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="topmargin"></div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
        style="margin-left: 33px;" Width="777px">
        <ItemTemplate>
        <table style="border:2px solid gray; height:310px; width:230px; margin-bottom:20px ">
        <tr>
        <td>
            &nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="180px" 
                ImageUrl='<%# "productimages/"+Eval("picname") %>' Width="180px" />
            <br />
            <br />
            Name :
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
            <br />
            Rs :
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton25" runat="server" onclick="LinkButton25_Click" CommandArgument ='<%# Eval("pid") %>' >Add to Cart</asp:LinkButton>
            <br />
            <br />
            </td>
            </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>



</asp:Content>

