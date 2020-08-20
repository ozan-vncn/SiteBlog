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
        { //KATEGORİ GÜNCELLEME SAYFASINA YÖNLENDİRME YAPILDI
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
            //resim olma şartı sorgusu
            if (fileu_kategoriResim.HasFile)
            {
                //yüklenen resim kaydedildi
                fileu_kategoriResim.SaveAs(Server.MapPath("/kresim" + fileu_kategoriResim.FileName));
                SqlCommand cmdkguncelle = new SqlCommand("Update Kategori Set kategoriAdi='" + txt_kategoriAdi.Text+"',kategoriSira='" + txt_kategoriSira.Text+"', kategoriAdet='" + txt_kategoriAdet.Text+"',kategoriResim='/kresim/" + fileu_kategoriResim.FileName + "' where kategoriID='" + kategoriID + "'", baglan.baglan());
                cmdkguncelle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");

             }   
            else
                {
                    //resim eklenmemişse resim güncellenmez
                    SqlCommand cmdguncelle = new SqlCommand("Update Kategori Set kategoriAd='" + txt_kategoriAdi.Text + "',kategoriSira='" + txt_kategoriSira.Text + "',kategoriAdet='" + txt_kategoriAdet.Text + "' where kategoriID='"+kategoriID+"'", baglan.baglan());
                    cmdguncelle.ExecuteNonQuery();
                    Response.Redirect("kategoriler.aspx");

                }
            
        }
    }
}