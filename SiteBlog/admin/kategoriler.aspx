<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="SiteBlog.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     
    <style type="text/css">
    .auto-style1 {
        width: 100%;
            height: 199px;
        }
    .auto-style2 {
        width: 278px;
    }
        .auto-style3 {
            width: 278px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 366px;
        }
        .auto-style7 {
            width: 236px;
        }
        .auto-style8 {
            width: 278px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
    </style>
    
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; background-color:#2a595c;color:#fff; font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="btn_kategöriArti" runat="server" Height="25px" OnClick="btn_kategöriArti_Click" Text="+" Width="25px" />
&nbsp;&nbsp;
            <asp:Button ID="btn_kategoriEksi" runat="server" Height="25px" OnClick="btn_kategoriEksi_Click" Text="-" Width="25px" />
&nbsp;&nbsp;&nbsp;&nbsp; Kategori Ekleme Paneli</div>
        <asp:Panel ID="pnl_kategoriEkle" runat="server" BorderColor="White"  BackColor="#FFCC99" ForeColor="White">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8" style="text-align: right"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Kategori Adı:</td>
                    <td>
                        <asp:TextBox ID="txt_kategoriAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">Sıra:</td>
                    <td>
                        <asp:TextBox ID="txt_sira" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">Resim:</td>
                    <td class="auto-style4">
                        <asp:FileUpload ID="fu_kategoriResim" runat="server" CssClass="textboxGorsel" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_kategoriEkle" runat="server" CssClass="buttonGorsel" Text="Ekle" OnClick="btn_kategoriEkle_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <div style="height:30px;"></div>
        <div style="height:25px; background-color:#2a595c;color:#fff; font-weight:bolder;">&nbsp;&nbsp;
            <asp:Button ID="btn_kategoriduzenlearti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_kategoriduzenlearti_Click" />
&nbsp;&nbsp;
            <asp:Button ID="btn_kategoriduzenleEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_kategoriduzenleEksi_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp; Kategori Düzenleme Paneli</div>
        <asp:Panel ID="pnl_kategoriDuzenle" runat="server" BorderColor="White"  BackColor="#FFCC99" ForeColor="White">
            <asp:DataList ID="dl_kategoriGetir" runat="server" OnSelectedIndexChanged="dl_kategoriGetir_SelectedIndexChanged" Width="700px">
                <HeaderTemplate>
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style6">KATEGORİ ADI</td>
                            <td class="auto-style7">DUZENLE</td>
                            <td>SİL</td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style6">
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                            </td>
                           <td style="text-align: center; font-size: 20px">
                              
                               <a href="kategoriguncelleme.aspx?kategoriID=<%#Eval("kategoriID") %>" class="auto-style7">✔</a>

                           </td>
                            <td style="text-align: center; font-size: 20px;">
                                <a href="kategoriler.aspx?kategoriID=<%#Eval("kategoriID")%>&islem=sil">❌</a>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <div style="height:30px;"></div>  
    </div>
 
     
</asp:Content>



