<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="SiteBlog.admin.mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="height: 25px; background-color: #2a595c; color: #fff; font-weight: bolder;">
            &nbsp;&nbsp;
            <asp:Button ID="btn_marti" runat="server" Height="25px" Text="+" Width="25px" OnClick="btn_marti_Click"  />
            &nbsp;&nbsp;
            <asp:Button ID="btn_mEksi" runat="server" Height="25px" Text="-" Width="25px" OnClick="btn_mEksi_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp; Mesaj Paneli
        </div>
        <asp:Panel ID="pnl_mesajlar" runat="server" BorderColor="White" BackColor="#FFCC99" ForeColor="White">
            <asp:DataList ID="dl_mesaj" runat="server" Width="700px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td style="width: 200px">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18px" Text='<%# Eval("iletisimAdSoyad") %>'></asp:Label>
                            </td>
                            <td style="width: 200px">
                                <asp:Label ID="Label2" runat="server" Font-Size="12px" Text='<%# Eval("iletisimEmail") %>'></asp:Label>
                            </td>
                            <td style="width: 200px">
                                <asp:Label ID="Label3" runat="server" Font-Size="12px" Text='<%# Eval("iletisimTarih","{0:dd MMMM yyyy}") %>'></asp:Label>
                            </td>
                            <td style="width: 100px; text-align: center; font-size: 20px; color: #FF0000; font-weight: bolder;">
                                <a href="mesajlar.aspx?iletisimID=<%#Eval("iletisimID") %>&islem=sil">❌</a>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisimIcerik") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

        </asp:Panel>
     <div style="height: 30px;"></div>
</asp:Content>
