<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="PROJECT1.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 583px;
        }
        .auto-style7 {
            width: 100px;
        }
        .auto-style8 {
            width: 126px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Select Category:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="Cat_Name" DataValueField="Cat_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" BackColor="White" ForeColor="Black" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="Pro_Id" HeaderText="ID" />
                        <asp:BoundField DataField="Pro_Name" HeaderText="Product" />
                        <asp:ImageField DataImageUrlField="Pro_Img" HeaderText="Image">
                            <ControlStyle Height="50px" Width="50px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Pro_desp" HeaderText="Description" />
                        <asp:BoundField DataField="Pro_Status" HeaderText="Status" />
                        <asp:BoundField DataField="Pro_Price" HeaderText="Price" />
                        <asp:BoundField DataField="Pro_Stock" HeaderText="Stock" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" Text="Edit Products" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" PostBackUrl="~/AdminHome.aspx" Text="HOME" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
