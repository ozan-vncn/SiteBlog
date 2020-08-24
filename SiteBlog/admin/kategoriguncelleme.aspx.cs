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
    public partial class kategorigüncelleme : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["yoneticiKullanici"] == null)
            {
                Response.Redirect("default.aspx");
            }



            //KATEGORİ GÜNCELLEME SAYFASINA YÖNLENDİRME YAPILDI
            kategoriID = Request.QueryString["kategoriID"];

            //ŞİMDİ BİLGİLERİ TAŞIYACAZ
            if (Page.IsPostBack==false)
            {
                SqlCommand cmdkguncelle = new SqlCommand("Select * from Kategori where kategoriID='"+kategoriID+"'",baglan.baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();

                DataTable dtkguncelle = new DataTable("tablo");
                dtkguncelle.Load(drkguncelle);

                DataRow row = dtkguncelle.Rows[0];
                txt_kategoriAdi.Text = row["kategoriAd"].ToString();
                txt_kategoriSira.Text = row["kategoriSira"].ToString();
                txt_kategoriAdet.Text = row["kategoriAdet"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                    //güncelleme işlemi
                    SqlCommand cmdguncelle = new SqlCommand("Update Kategori Set kategoriAd='" + txt_kategoriAdi.Text + "',kategoriSira='" + txt_kategoriSira.Text + "',kategoriAdet='" + txt_kategoriAdet.Text + "' where kategoriID='"+kategoriID+"'", baglan.baglan());
                    cmdguncelle.ExecuteNonQuery();
                    Response.Redirect("kategoriler.aspx");

                
            
        }
    }
}