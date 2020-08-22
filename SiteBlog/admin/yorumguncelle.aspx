<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumguncelle.aspx.cs" Inherits="SiteBlog.admin.yorumguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            border: 1px dotted #2a595c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Gönderen Kişi:</td>
            <td>
                <asp:TextBox ID="txt_adSoyad" runat="server" CssClass="auto-style3" Height="25px" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Yorum:</td>
            <td>
                <asp:TextBox ID="txt_icerik" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Onay:</td>
            <td>
                <asp:CheckBox ID="cbox_onay" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btn_guncelle" runat="server" CssClass="buttonGorsel" OnClick="btn_guncelle_Click" Text="Güncelle" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
