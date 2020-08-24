<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriguncelleme.aspx.cs" Inherits="SiteBlog.admin.kategorigüncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 203px;
        }
        .auto-style4 {
            background-color: #2a595c;
            color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Kategori Adı:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_kategoriAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Sıra:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_kategoriSira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">Adet:</td>
            <td style="background-color: #669999">
                <asp:TextBox ID="txt_kategoriAdet" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="34px" OnClick="Button1_Click" Text="Güncelle" Width="82px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #669999; text-align: right;">&nbsp;</td>
            <td style="background-color: #669999">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
