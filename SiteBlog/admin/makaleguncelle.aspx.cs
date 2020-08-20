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
    public partial class makaleguncelle : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdmgetir = new SqlCommand("Select *from Makale where makaleID='" + makaleID + "'", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();

                DataTable dtmgetir = new DataTable("tablo");
                dtmgetir.Load(drmgetir);
                DataRow row = dtmgetir.Rows[0];
                txt_makaleBaslik.Text = row["makaleBaslik"].ToString();
                txt_makaleOzet.Text = row["makaleOzet"].ToString();
                txt_makaleIcerik.Text = row["makaleIcerik"].ToString();
                txt_yorumSayi.Text = row["makaleYorumSayisi"].ToString();
            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)
            {
                fu_slider.SaveAs(Server.MapPath("/sresim/" + fu_slider.FileName));

                SqlCommand cmdmguncelle = new SqlCommand("Update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleOzet='" + txt_makaleOzet.Text + "', makaleIcerik='" + txt_makaleIcerik + "',makaleYorumSayisi='" + txt_yorumSayi.Text + "',makaleResim='/sresim" + fu_slider.FileName + "'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");





            }
            else
            {
                SqlCommand cmdmguncelle = new SqlCommand("Update Makale Set makaleBaslik='" + txt_makaleBaslik.Text + "',makaleOzet='" + txt_makaleOzet.Text + "', makaleIcerik='" + txt_makaleIcerik + "',makaleYorumSayisi='" + txt_yorumSayi.Text + "'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();
                Response.Redirect("makaleler.aspx");

            }
        }
    }
}