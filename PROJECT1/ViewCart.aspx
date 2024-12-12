<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="PROJECT1.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }
        .auto-style2 {
            width: 108px;
        }
        .auto-style3 {
            width: 108px;
            height: 171px;
        }
        .auto-style4 {
            height: 171px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Cart_Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Cart_Id" HeaderText="ID" />
                        <asp:BoundField DataField="Pro_Name" HeaderText="Product " />
                        <asp:BoundField DataField="Pro_Desp" HeaderText="Description" />
                        <asp:ImageField DataImageUrlField="Pro_Img" HeaderText="Image">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Price" HeaderText="Price per Product" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Total_Price" HeaderText="Total Price" />
                        <asp:CommandField HeaderText="Delete Product" ShowDeleteButton="True" />
                        <asp:CommandField HeaderText="Change Quantity" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" OnClick="Button2_Click" Text="Continue Shopping" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Text="Confirm Order" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
