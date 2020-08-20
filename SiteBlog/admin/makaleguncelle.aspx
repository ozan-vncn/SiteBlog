<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleguncelle.aspx.cs" Inherits="SiteBlog.admin.makaleguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 237px;
        }
        .auto-style3 {
            width: 237px;
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            border: 1px dotted #2a595c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="background-color: #599999">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Başlık:</td>
            <td class="auto-style4" style="text-align: left">
                <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Özet:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txt_makaleOzet" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="500px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">İçerik:</td>
            <td style="text-align: left"><asp:TextBox ID="txt_makaleIcerik" runat="server" Height="252px" TextMode="MultiLine" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Slider:</td>
            <td style="text-align: left">
                <asp:FileUpload ID="fu_slider" runat="server" CssClass="auto-style5" Width="219px" Height="22px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum Sayısı:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txt_yorumSayi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btn_guncelle" runat="server" CssClass="buttonGorsel" Text="Güncelle" OnClick="btn_guncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
