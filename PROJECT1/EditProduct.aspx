<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="PROJECT1.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 364px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pro_Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Pro_Id" HeaderText="ID" />
                    <asp:BoundField DataField="Pro_Name" HeaderText="Product Name" />
                    <asp:BoundField DataField="Pro_Desp" HeaderText="Description" />
                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl='<%# Eval("Pro_Img") %>' Width="102px" />
                        </ItemTemplate>
                        <ControlStyle Height="50px" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Pro_Price" HeaderText="Price" />
                    <asp:BoundField DataField="Pro_Stock" HeaderText="Stock" />
                    <asp:BoundField DataField="Pro_Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" BorderColor="#FFCC00" OnClick="Button1_Click" Text="Back" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
