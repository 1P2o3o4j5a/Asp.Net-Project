<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="PROJECT1.AdminRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 154px;
    }
        .auto-style3 {
            width: 188px;
        }
        .auto-style5 {
            width: 188px;
            height: 38px;
        }
        .auto-style6 {
            width: 154px;
            height: 38px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style8 {
            width: 107px;
        }
        .auto-style9 {
            width: 107px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label2" runat="server" Text="Email Id:" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Contact:" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Contact" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Username:" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a Username" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Password:" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label7" runat="server" Text="Confirm Password:" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style5"></td>
        <td class="auto-style6">
            <asp:Button ID="Button1" runat="server" Text="REGISTER" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" BackColor="#FFCC00" ForeColor="White" />
        </td>
        <td class="auto-style7"></td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" ForeColor="White" OnClick="Button2_Click" Text="Home" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
