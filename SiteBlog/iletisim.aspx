<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="SiteBlog.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 87px;
    }
    .auto-style4 {
        width: 62px;
        height: 49px;
    }
    .auto-style5 {
        width: 65px;
        height: 50px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:auto;width:100%;float:left;">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td style="color: #333333; font-size: large; font-weight: bolder">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <img alt="" class="auto-style4" src="tema/facebook.png" /></td>
                <td style="color: #333333; font-size: large; font-weight: bolder">facebook.com/ozan.vancin</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <img alt="" class="auto-style5" src="tema/instagram.png" /></td>
                <td style="color: #333333; font-size: large; font-weight: bolder">instagram.com/ozanvncn</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td style="color: #333333; font-size: large; font-weight: bolder">&nbsp;</td>
            </tr>
        </table>
</div>
    <div style="height:40px;width:100%;float:left; color: #666666; font-weight: bolder;">Bana Buradan Mesaj Gönderebilirsiniz</div>
    <div style="height:200px">
        <div style="width: 330px; height: 200px; float: left; border: 1px dotted #2a595c;margin-left:5px;">
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Buraya Mesajınızı Yazınız" runat="server" Height="199px" TextMode="MultiLine" Width="330px"></asp:TextBox>
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
                        <asp:Button ID="btn_yorumEkle" runat="server" BackColor="#2A595C" Height="25px" Text="Gönder" Width="100px" OnClick="btn_yorumEkle_Click"  />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_yorumIcerik" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Mesajınızı Yazınız!</asp:RequiredFieldValidator>
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
