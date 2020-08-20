<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="duyurular.aspx.cs" Inherits="SiteBlog.admin.duyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 228px;
        }

        .auto-style3 {
            border: 1px dotted #2a595c;
        }

        .auto-style4 {
            margin-right: 0;
        }

        .auto-style5 {
            width: 398px;
        }

        .auto-style6 {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height: 25px; background-color: #2a595c; color: #fff; font-weight: bolder;">
            &nbsp;&nbsp;
            <asp:Button ID="btn_dearti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_dearti_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="deEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="deEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp; Duyuru Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_duyuruEkle" runat="server" BorderColor="White" BackColor="#FFCC99" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="txt_duyuruBaslik" runat="server" CssClass="auto-style3" Width="419px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">İçerik:</td>
                    <td>
                        <asp:TextBox ID="txt_duyuruIcerik" runat="server" CssClass="auto-style4" Height="220px" TextMode="MultiLine" Width="420px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_duyuruEkle" runat="server" CssClass="buttonGorsel" Text="Ekle" OnClick="btn_duyuruEkle_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height: 30px;"></div>
        <div style="height: 25px; background-color: #2a595c; color: #fff; font-weight: bolder;">
            &nbsp;&nbsp;
            <asp:Button ID="btn_duyurudArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_duyurudArti_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="btn_duyurudEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_duyurudEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp; Duyuru Düzenleme Paneli
        </div>
        <asp:Panel ID="pnl_duyuruDuzenle" runat="server" BorderColor="White" BackColor="#FFCC99" ForeColor="White">
            <asp:DataList ID="dl_duyuruGetir" runat="server" Width="699px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">DUYURU BAŞLIK</td>
                            <td class="auto-style6" style="text-align: center;">GUNCELLE</td>
                            <td style="text-align: center;">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("duyurularBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style6" style="font-size: 20px; text-align: center; color: #00FF00;">
                                <a href="duyuruguncelle.aspx?duyurularID=<%#Eval("duyurularID") %>&islem=sil">✔</a>

                            </td>
                            <td style="font-size: 20px; text-align: center; color: #FF0000">
                                <a href="duyurular.aspx?duyurularID=<%#Eval("duyurularID") %>&islem=sil">❌</a>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>
