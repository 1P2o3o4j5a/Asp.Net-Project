<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewCategory.aspx.cs" Inherits="PROJECT1.ViewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 578px;
        }
        .auto-style2 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <table class="w-100" >
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Cat_Id" HeaderText="Id" />
                        <asp:BoundField DataField="Cat_Name" HeaderText="Category" />
                        <asp:ImageField DataImageUrlField="Cat_img" HeaderText="Image">
                            <ControlStyle Height="50px" Width="50px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Cat_desp" HeaderText="Description" />
                        <asp:BoundField DataField="Cat_status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" OnClick="Button1_Click" Text="Edit Category" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" PostBackUrl="~/AdminHome.aspx" Text="HOME" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
       
</asp:Content>
