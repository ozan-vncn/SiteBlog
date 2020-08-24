<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SiteBlog.admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
            border:0;
        }
        .auto-style1 {
            float: left;
            width: 298px;
        }
    </style>
</head>
<body style="background-color:#e1e1e1">
    <form id="form1" runat="server">
        <div style="height: 80px; background-color:#2a595c; color:#fff;">

            <div style="margin-top:20px;" class="auto-style1">Kullanıcı Adı: <asp:TextBox ID="txt_Kullanici" runat="server" Height="25px" Width="139px"></asp:TextBox></div>
            <div style="float:left; width:210px; margin-top:20px;">Şifre: <asp:TextBox ID="txt_Sifre" runat="server" Height="25px" TextMode="Password" Width="106px"></asp:TextBox></div>
            <div style="float:left; width:250px; margin-top:20px;">
                <asp:Button ID="Button1" runat="server" Text="GİRİŞ" Height="25px" Width="123px" BackColor="White" ForeColor="Blue" OnClick="Button1_Click"  /> </div>
            <div>
                <asp:Label ID="lbl_bilgi" runat="server" Text="Yönetici Paneli" ForeColor="White"></asp:Label></div>


        </div>
    </form>
</body>
</html>
