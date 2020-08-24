<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleler.aspx.cs" Inherits="SiteBlog.admin.makaleler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 161px;
        }

        .auto-style3 {
            background-color: #2a595c;
            color: #fff;
        }

        .auto-style4 {
            width: 404px;
        }

        .auto-style5 {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div style="height: 25px; background-color: #2a595c; color: #fff; font-weight: bolder;">
            &nbsp;&nbsp;
            <asp:Button ID="btn_makaleArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_makaleArti_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="btn_makaleEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_makaleEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp; Makale Ekleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleEkle" runat="server" BorderColor="White" BackColor="#FFCC99" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori:</td>
                    <td>
                        <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="dropdownlistGorsel">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Başlık:</td>
                    <td>
                        <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxGorsel" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Özet:</td>
                    <td>
                        <asp:TextBox ID="txt_makaleOzet" runat="server" CssClass="textboxGorsel" Height="100px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">İçerik:</td>
                    <td>

                        <asp:TextBox ID="txt_makaleIcerik" runat="server" Height="252px" TextMode="MultiLine" Width="500px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_makaleEkle" runat="server" CssClass="auto-style3" Height="41px" OnClick="btn_makaleEkle_Click" Text="Ekle" Width="99px" />
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
            <asp:Button ID="btn_makaledArti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_makaledArti_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="btn_makaledEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_makaledEksi_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp; Makale Düzenleme Paneli
        </div>
        <asp:Panel ID="pnl_makaleDuzenle" runat="server" BorderColor="White" BackColor="#FFCC99" ForeColor="White">
            <asp:DataList ID="dl_makaleGetir" runat="server" Width="699px">
                <HeaderTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">MAKALE ADI</td>
                            <td class="auto-style5" style="text-align: center">GÜNCELLE</td>
                            <td style="text-align: center">SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style4">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                            </td>
                            <td class="auto-style5" style="font-size: 20px; text-align: center; color: #00FF00;">
                                <a href="makaleguncelle.aspx?makaleID=<%# Eval("makaleID") %>">✔</a>

                            </td>

                            <td style="color: #FF0000; font-size: 20px; text-align: center">
                                <a href="makaleler.aspx?makaleID=<%#Eval("makaleID") %>&islem=sil">❌</a>

                            </td>



                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

        </asp:Panel>

    </div>

</asp:Content>
