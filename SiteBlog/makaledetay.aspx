<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="SiteBlog.makaledetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 10px;
        }
        .auto-style4 {
            height: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 690px; height: auto; margin: 0 auto;">
        <asp:DataList ID="dl_makale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width: 690px; margin: 0 auto; height: auto;">
                    <div class="auto-style3" style="background-color: #C0C0C0; background-repeat: repeat-x; line-height: 40px;">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left">
                            <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label>
                        </div>

                    </div>
                    <div style="float: left; height: auto; width: 690px; background-color: #CCFFCC; background-repeat: repeat; padding-bottom: 10px;">

                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleIcerik") %>' ForeColor="#666666"></asp:Label>

                    </div>
                    <div style="line-height: 20px; font-size: 12px; background-color: #FFCCCC;" class="auto-style4">
                        <div style="width: auto; height: 20px; float: left; margin-right: 15px;">
                            ⏰
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>' ForeColor="Gray"></asp:Label>

                        </div>
                        <div style="width: auto; height: 20px; float: left; margin-right: 15px;">
                            👁️<asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>' ForeColor="Gray"></asp:Label>

                        </div>
                        <div style="width: auto; height: 20px; float: left; margin-right: 15px;">
                            💬<asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayisi") %>' ForeColor="Gray"></asp:Label>

                        </div>
                    </div>
                    <div style="width: 100%; height: 40px; float: left">
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="height: 30px; width: 100%"></div>
    <div style="background-color: #2a595c; color: white; height: 30px; width: 100%; text-align: center; font-size: 24px; font-weight: bolder">Yorum Yap </div>
    <div style="height: 10px; width: 100%"></div>
    <div style="height:200px">


        <div style="width: 330px; height: 200px; float: left; border: 1px dotted #2a595c;margin-left:5px;">
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Buraya Yorumunuzu Giriniz" runat="server" Height="199px" TextMode="MultiLine" Width="330px"></asp:TextBox>
        </div>
        <div style="float: right; width: 330px; height: 200px; border: 1px dotted #2a595c;margin-right:5px">

            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_adSoyad" runat="server" placeHolder="Adınız Soyadınız" BorderColor="#2A595C" BorderStyle="Dotted" BorderWidth="1px" Height="25px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:TextBox ID="txt_eMail" runat="server" placeHolder="Email Adresiniz" BorderColor="#2A595C" BorderStyle="Dotted" BorderWidth="1px" Height="25px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Button ID="btn_yorumEkle" runat="server" BackColor="#2A595C" Height="25px" Text="Gönder" Width="100px" OnClick="btn_yorumEkle_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_yorumIcerik" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Yorum Yazınız!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_adSoyad" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Adınız Soyadınız Boş Olamaz!</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_eMail" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Email Boş Olmaz!</asp:RequiredFieldValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_eMail" ErrorMessage="RegularExpressionValidator" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Hatalı Mail!</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
           
        </div>

    </div>


</asp:Content>
