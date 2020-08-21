<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="SiteBlog.makaledetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:690px;height:auto; margin:0 auto;">
        <asp:DataList ID="dl_makale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px;margin:0 auto;height:auto;">
                    <div class="auto-style3" style="background-color: #C0C0C0; background-repeat: repeat-x; line-height: 40px;">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left">
                            <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text='<%# Eval("makaleBaslik") %>' ForeColor="#333333"></asp:Label>
                        </div>

                    </div>
                    <div style="float:left;height:auto;width:690px; background-color: #CCFFCC; background-repeat: repeat; padding-bottom: 10px;">

                        <asp:Label ID="Label5" runat="server" Font-Size="18px" Text='<%# Eval("makaleIcerik") %>' ForeColor="#666666"></asp:Label>

                    </div>
                    <div style="line-height:20px;font-size:12px; background-color: #FFCCCC;" class="auto-style4">
                        <div style="width:auto;height:20px;float:left;margin-right:15px;">

                            ⏰
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih","{0:dd MMMM yyyy}") %>' ForeColor="Gray"></asp:Label>

                        </div>
                        <div style="width:auto;height:20px;float:left;margin-right:15px;">

                            👁️<asp:Label ID="Label3" runat="server" Text='<%# Eval("makaleOkunma") %>' ForeColor="Gray"></asp:Label>

                        </div>
                        <div style="width:auto;height:20px;float:left;margin-right:15px;">

                            💬<asp:Label ID="Label4" runat="server" Text='<%# Eval("makaleYorumSayisi") %>' ForeColor="Gray"></asp:Label>

                        </div>
                    </div>
                    <div style="width:100%;height:40px; float:left;">

                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
