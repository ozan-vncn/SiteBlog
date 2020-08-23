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
    public partial class yorumguncelle : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string yorumID = "";
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yorumID = Request.QueryString["yorumID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdygetir = new SqlCommand("Select*from Yorum where yorumID='" + yorumID + "'", baglan.baglan());
                SqlDataReader drygetir = cmdygetir.ExecuteReader();

                DataTable dtygetir = new DataTable("tablo");
                dtygetir.Load(drygetir);

                DataRow row = dtygetir.Rows[0];
                txt_adSoyad.Text = row["yorumAdSoyad"].ToString();
                txt_icerik.Text = row["yorumIcerik"].ToString();

            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];



            SqlCommand cmdonay = new SqlCommand("Update Yorum Set yorumAdSoyad='" + txt_adSoyad.Text + "', yorumIcerik='" + txt_icerik.Text + "', yorumOnay='" + cbox_onay.Checked + "' where yorumID='" + yorumID + "'", baglan.baglan());
            cmdonay.ExecuteNonQuery();


            //onaylı yorum sayısını gösterme
            if (cbox_onay.Checked == true)
            {
                SqlCommand cmdekle = new SqlCommand("Update Makale Set makaleYorumSayisi=makaleYorumSayisi+1 where makaleID='" + makaleID + "'", baglan.baglan());
                cmdekle.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");

            }

            if (cbox_onay.Checked==false)
            {
                SqlCommand cmdazalt = new SqlCommand("Update Makale set makaleYorumSayisi=makaleYorumSayisi-1 where makaleID='" + makaleID + "'", baglan.baglan());
                cmdazalt.ExecuteNonQuery();

                Response.Redirect("yorumlar.aspx");
            }






        }
    }
}