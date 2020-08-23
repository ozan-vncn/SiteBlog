<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="SiteBlog.admin.yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 384px;
        }

        .auto-style3 {
            width: 590px;
            height: 25px;
            float: left;
        }

        .auto-style4 {
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:25px; background-color:#2a595c;color:#fff; font-weight:bolder;line-height:25px;">&nbsp;&nbsp;
            <asp:Button ID="btn_yorumArti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_yorumArti_Click" />
&nbsp;&nbsp;
            <asp:Button ID="btn_yorumEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_yorumEksi_Click" />
&nbsp;&nbsp;&nbsp;&nbsp; Onaylanmayan Yorum Paneli</div>
        <asp:Panel ID="pnl_onaysızYorum" runat="server" BorderColor="White" ForeColor="White">

        <asp:DataList ID="dl_yorum" runat="server" Width="700px">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="64px" ImageUrl='<%# Eval("yorumResim") %>' Width="82px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="float: left; width: 590px; height: 25px; background-color: #669999;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            -<asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            -<asp:Label ID="Label3" runat="server" Font-Size="12pt" Text='<%# Eval("yorumTarihi","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width: 590px; height: 25px; float: left; background-color: #8AB0B0; font-weight: bolder; color: #E6E6E6;">
                            Makale :&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="White"></asp:Label>

                        </div>
                        <div style="width: 590px; height: auto; float: left; color: #666666; background-color: #B3CCCC;">

                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#333333"></asp:Label>

                        </div>
                        <div class="auto-style3">

                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2" style="font-size: 25px; text-align: right;">
                                        <a href="yorumguncelle.aspx?yorumID=<%#Eval("yorumID") %>&makaleID=<%#Eval("makaleID") %>">✔</a>

                                    </td>
                                    <td class="auto-style4" style="font-size: 25px; text-align: right;">
                                        <a href="yorumlar.aspx?yorumID=<%#Eval("yorumID") %>&islem=sil">❌</a>

                                    </td>
                                    <td style="font-size: 25px; text-align: right;">
                                        <a href="yorumcevap.aspx?makaleID=<%#Eval("makaleID") %>">💬</a>

                                    </td>
                                </tr>
                            </table>

                        </div>
                        <br />
                    </div>
                    <div style="width: 690px; height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </div>

            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>
        <div style="height:30px;"></div>
    </div>

    <div style="height:25px; background-color:#2a595c;color:#fff; font-weight:bolder;line-height:25px;">&nbsp;&nbsp;
            <asp:Button ID="btn_ooArti" runat="server" Height="25px"  Text="+" Width="25px" OnClick="btn_ooArti_Click"  />
&nbsp;&nbsp;
            <asp:Button ID="btn_ooEksi" runat="server" Height="25px"  Text="-" Width="25px" OnClick="btn_ooEksi_Click"  />
&nbsp;&nbsp;&nbsp;&nbsp; Onaylanan Yorum Paneli</div>
        <asp:Panel ID="pnl_yorumOnayli" runat="server" BorderColor="White" ForeColor="White">

        <asp:DataList ID="dl_yorumOnay" runat="server" Width="700px">
            <ItemTemplate>
                <div style="width: 690px; height: auto">
                    <div style="width: 100px; height: 60px; float: left">
                        <asp:Image ID="Image1" runat="server" Height="64px" ImageUrl='<%# Eval("yorumResim") %>' Width="82px" />
                    </div>
                    <div style="width: 590px; height: auto; float: left">
                        <div style="float: left; width: 590px; height: 25px; background-color: #669999;">
                            <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text='<%# Eval("yorumAdSoyad") %>' ForeColor="White"></asp:Label>
                            -<asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("yorumEmail") %>' ForeColor="White"></asp:Label>
                            -<asp:Label ID="Label3" runat="server" Font-Size="12pt" Text='<%# Eval("yorumTarihi","{0:dd MMMM yyyy}") %>' ForeColor="White"></asp:Label>
                        </div>
                        <div style="width: 590px; height: 25px; float: left; background-color: #8AB0B0; font-weight: bolder; color: #E6E6E6;">
                            Makale :&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleBaslik") %>' ForeColor="White"></asp:Label>

                        </div>
                        <div style="width: 590px; height: auto; float: left; color: #666666; background-color: #B3CCCC;">

                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>' ForeColor="#333333"></asp:Label>

                        </div>
                        <div class="auto-style3">

                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2" style="font-size: 25px; text-align: right;">&nbsp;</td>
                                    <td class="auto-style4" style="font-size: 25px; text-align: right;">&nbsp;</td>
                                    <td style="font-size: 25px; text-align: right;">
                                        <a href="yorumguncelle.aspx?yorumID=<%#Eval("yorumID") %>&makaleID=<%#Eval("makaleID") %>">❌</a>

                                    </td>
                                </tr>
                            </table>

                        </div>
                        <br />
                    </div>
                    <div style="width: 690px; height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
                </div>

            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>

</asp:Content>

