using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlClient;
namespace SiteBlog.admin
{
    public partial class duyurular : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string duyurularID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularID = Request.QueryString["duyurularID"];
            islem = Request.QueryString["islem"];
            if (islem == "sil")
            {
                SqlCommand cmddsil = new SqlCommand("Delete from Duyurular where duyurularID='" + duyurularID + "'", baglan.baglan());
                cmddsil.ExecuteNonQuery();
            }
            if (Page.IsPostBack == false)
            {
                pnl_duyuruEkle.Visible = false;
                pnl_duyuruDuzenle.Visible = false;

                //duyuruları getir

                SqlCommand cmddgetir = new SqlCommand("Select*from Duyurular", baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();
                dl_duyuruGetir.DataSource = drdgetir;
                dl_duyuruGetir.DataBind();
            }
        }

        protected void btn_dearti_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = true;
        }

        protected void deEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruEkle.Visible = false;
        }

        protected void btn_duyuruEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddekle = new SqlCommand("insert into Duyurular(duyurularBaslik,duyurularIcerik,duyurularResim) Values ('" + txt_duyuruBaslik.Text + "','" + txt_duyuruIcerik.Text + "','/tema/duyuru.png')", baglan.baglan());
            cmddekle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");
        }

        protected void btn_duyurudArti_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = true;
        }

        protected void btn_duyurudEksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruDuzenle.Visible = false;
        }
    }
}