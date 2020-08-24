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
    public partial class kategoriler : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string kategoriID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yoneticiKullanici"] == null)
            {
                Response.Redirect("default.aspx");
            }

            kategoriID = Request.QueryString["kategoriID"];
            islem = Request.QueryString["islem"];
            if (islem=="sil")
            {
                SqlCommand cmdsil=new SqlCommand("Delete from Kategori where kategoriID='"+ kategoriID +"'",baglan.baglan());
                cmdsil.ExecuteNonQuery();
            }
            if (Page.IsPostBack == false)
            {
                pnl_kategoriEkle.Visible = false;
                pnl_kategoriDuzenle.Visible = false;
            }

            //kategorileri data liste çekme

            SqlCommand cmdkgetir = new SqlCommand("Select*from Kategori", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();
            dl_kategoriGetir.DataSource = drkgetir;
            dl_kategoriGetir.DataBind();
        }

        protected void btn_kategöriArti_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = true;
        }

        protected void btn_kategoriEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriEkle.Visible = false;
        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {
           


                SqlCommand cmdkategoriekle = new SqlCommand("insert into Kategori(kategoriAd,kategoriSira) Values('" + txt_kategoriAdi.Text + "','" + txt_sira.Text+  "')", baglan.baglan());
                cmdkategoriekle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");

               

           
        }

        protected void btn_kategoriduzenleArtı_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = true;
        }

        protected void btn_kategoriduzenleEksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = false;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_kategoriduzenlearti_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = true;
        }

        protected void btn_kategoriduzenleEksi_Click1(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = false;
        }

        protected void dl_kategoriGetir_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}