<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="PROJECT1.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 235px;
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            width: 235px;
            height: 171px;
        }
        .auto-style5 {
            height: 171px;
        }
        .auto-style6 {
            width: 235px;
        }
    .auto-style8 {
        margin-left: 0px;
    }
    .auto-style9 {
        width: 74px;
    }
    .auto-style10 {
        width: 170px;
    }
        .auto-style11 {
            width: 74px;
            height: 27px;
        }
        .auto-style12 {
            width: 170px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style4">
        </td>
        <td class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" ForeColor="#990033" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Cat_Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CssClass="auto-style8" Height="666px" PageSize="2" Width="867px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Cat_Id" HeaderText="Id" />
                    <asp:BoundField DataField="Cat_Name" HeaderText="Category" />
                    <asp:BoundField DataField="Cat_desp" HeaderText="Description" />
                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style11">
                                        </td>
                                    <td class="auto-style12">
                                        <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl='<%# Eval("Cat_img") %>' Width="147px" />
                                    </td>
                                    <td class="auto-style3"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        &nbsp;</td>
                                    <td class="auto-style10">
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Cat_status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" ForeColor="White" OnClick="Button1_Click" Text="Back" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
