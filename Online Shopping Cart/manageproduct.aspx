﻿<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="manageproduct.aspx.cs" Inherits="manageproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="managep">

<h1 style="color:Blue">Product Details...</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" Width="696px" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Product ID">
                <ItemTemplate>
                    <asp:Label ID="pid" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product Name">
                <EditItemTemplate>
                    <asp:TextBox ID="pnametxt" runat="server" Text='<%# Eval("pname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="pnamelbl" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Brand Name">
                <EditItemTemplate>
                    <asp:DropDownList ID="bnametxt" runat="server" 
                        SelectedValue='<%# Eval("bname") %>'>
                        <asp:ListItem>adidas</asp:ListItem>
                        <asp:ListItem>nike</asp:ListItem>
                        <asp:ListItem>reebok</asp:ListItem>
                        <asp:ListItem>fila</asp:ListItem>
                        <asp:ListItem>lee</asp:ListItem>
                        <asp:ListItem>puma</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="bnamelbl" runat="server" Text='<%# Eval("bname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="pricetxt" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="prlbl" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <EditItemTemplate>
                    <asp:DropDownList ID="categorytxt" runat="server">
                        <asp:ListItem>clothing</asp:ListItem>
                        <asp:ListItem>shoes</asp:ListItem>
                        <asp:ListItem>accessories</asp:ListItem>
                        <asp:ListItem>watches</asp:ListItem>
                        <asp:ListItem>sunglasses</asp:ListItem>
                        <asp:ListItem>sportswear</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="catlbl" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Picture">
                <EditItemTemplate>
                    <asp:FileUpload ID="Fuploadtxt" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="pimg" runat="server" Height="50px" 
                        ImageUrl='<%# "productimages/"+Eval("picname") %>' Width="50px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    

</div>

</asp:Content>
