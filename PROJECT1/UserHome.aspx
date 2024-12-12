<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="PROJECT1.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        width: 5px;
    }
    .auto-style2 {
        width: 581px;
    }
    .auto-style3 {
        margin-left: 0px;
    }
        .auto-style4 {
            width: 5px;
            height: 27px;
        }
        .auto-style5 {
            width: 581px;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Blue" Text="CATEGORY"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" OnClick="Button1_Click" Text="View Cart" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BackColor="#CCCCCC" CssClass="auto-style3" ForeColor="Black">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="109px" ImageUrl='<%# Eval("Cat_img") %>' Width="106px" OnCommand="ImageButton1_Command" CommandArgument='<%# Eval("Cat_Id") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cat_Name") %>' Font-Bold="True" ForeColor="Blue"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Cat_desp") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
