<%@ Page Title="" Language="C#" MasterPageFile="~/Sample.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="PROJECT1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        

        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 32px;
            width: 665px;
        }
        .auto-style3 {
            width: 665px;
        }
        .auto-style4 {
            height: 32px;
            width: 354px;
        }
        .auto-style5 {
            width: 354px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style1">
                <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style2"></td>
        </tr>
      <%--  <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Cat_Name" DataValueField="Cat_Id">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>--%>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
    <div class="custom-page-container">
    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Cat_Name" DataValueField="Cat_Id">
                </asp:DropDownList>
</div>
</asp:Content>
