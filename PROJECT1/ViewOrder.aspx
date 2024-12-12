<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="PROJECT1.ViewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            width: 60%
        }
        .auto-style3 {
            width: 472px;
        }
        .auto-style4 {
            height: 27px;
            width: 472px;
        }
        .auto-style5 {
            width: 134px;
        }
        .auto-style6 {
            height: 27px;
            width: 134px;
        }
        .auto-style9 {
            width: 90px;
        }
        .auto-style10 {
            width: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Your Order" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server" Text="Bill No:" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server" Text="Date:" ForeColor="Black"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ForeColor="Black" Width="358px" CaptionAlign="Left">
                    <Columns>
                        <asp:BoundField DataField="Pro_Name" HeaderText="Product" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="Total_Price" HeaderText="Product value" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                            <asp:Label ID="Label8" runat="server" Text="Total Amount:" ForeColor="Black"></asp:Label>
                            <asp:Label ID="Label9" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style3">
                            &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" ForeColor="Black" OnClick="Button1_Click" Text="Payment" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4">
                </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
