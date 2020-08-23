using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace SiteBlog.admin
{
    public partial class yorumlar : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string yorumID = "";
        string islem = "";
       
        protected void Page_Load(object sender, EventArgs e)
        {

            yorumID = Request.QueryString["yorumID"];
            islem = Request.QueryString["islem"];
            

           
            //Onaysız yorum silme
            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("Delete from Yorum where yorumID='"+yorumID+"'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");
            }


            if (Page.IsPostBack == false)
            {
                pnl_onaysızYorum.Visible = false;
                pnl_yorumOnayli.Visible = false;

                //Onaysız yorumlar
                SqlCommand cmdyorum = new SqlCommand("SELECT dbo.Makale.MakaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarihi,dbo.Yorum.yorumOnay, dbo.Yorum.yorumResim FROM dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.MakaleID = dbo.Yorum.makaleID where yorumOnay=0", baglan.baglan());
                SqlDataReader dryorum = cmdyorum.ExecuteReader();

                dl_yorum.DataSource = dryorum;
                dl_yorum.DataBind();

                //Onaylı Yorumlar

                SqlCommand cmdyorumonayli = new SqlCommand("SELECT dbo.Makale.MakaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarihi,dbo.Yorum.yorumOnay, dbo.Yorum.yorumResim FROM dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.MakaleID = dbo.Yorum.makaleID where yorumOnay=1", baglan.baglan());
                SqlDataReader dronayli = cmdyorumonayli.ExecuteReader();

                dl_yorumOnay.DataSource = dronayli;
                dl_yorumOnay.DataBind();
                

            }
        }

        protected void btn_yorumArti_Click(object sender, EventArgs e)
        {
            pnl_onaysızYorum.Visible = true;
        }

        protected void btn_yorumEksi_Click(object sender, EventArgs e)
        {
            pnl_onaysızYorum.Visible = false;
        }

        protected void btn_ooArti_Click(object sender, EventArgs e)
        {
            pnl_yorumOnayli.Visible = true;
        }

        protected void btn_ooEksi_Click(object sender, EventArgs e)
        {
            pnl_yorumOnayli.Visible = false;
        }
    }
}