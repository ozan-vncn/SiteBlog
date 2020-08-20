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
    public partial class makaleler : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string makaleID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                SqlCommand cmdmsil = new SqlCommand("Delete from Makale where makaleID='" +makaleID+"'",baglan.baglan());
                cmdmsil.ExecuteNonQuery();
            }

            if (Page.IsPostBack==false)
            {
                pnl_makaleEkle.Visible = false;
                pnl_makaleDuzenle.Visible = false;
                

                //kategorileri getir
                SqlCommand cmdkgetir = new SqlCommand("Select* from Kategori", baglan.baglan());
                SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

                ddl_kategori.DataTextField = "kategoriAd";
                ddl_kategori.DataValueField = "kategoriID";

                ddl_kategori.DataSource = drkgetir;
                ddl_kategori.DataBind();

                //makale getirilir
                SqlCommand cmdmgetir = new SqlCommand("Select*from Makale", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();
                dl_makaleGetir.DataSource = drmgetir;
                dl_makaleGetir.DataBind();
                
            }
        }

        protected void btn_makaleArti_Click(object sender, EventArgs e)
        {
            pnl_makaleEkle.Visible = true;
        }

        protected void btn_makaleEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleEkle.Visible = false;
        }

        protected void btn_makaleEkle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)
            {
                fu_slider.SaveAs(Server.MapPath("/sresim/" + fu_slider.FileName));

                SqlCommand cmdmekle = new SqlCommand("insert into Makale(makaleBaslik,makaleOzet,makaleIcerik,makaleResim,kategoriID) Values('" + txt_makaleBaslik.Text + "','" + txt_makaleOzet.Text + "','" + txt_makaleIcerik.Text + "','/sresim" + fu_slider.FileName + "','" + ddl_kategori.SelectedValue + "')", baglan.baglan());
                cmdmekle.ExecuteNonQuery();
                Response.Redirect("makaleler.aspx");
            }
            else
            {
                btn_makaleEkle.Text = "Resim EKLE!";
            }
        }

        protected void btn_makaledArti_Click(object sender, EventArgs e)
        {
            pnl_makaleDuzenle.Visible = true;
        }

        protected void btn_makaledEksi_Click(object sender, EventArgs e)
        {
            pnl_makaleDuzenle.Visible = false;
        }
    }
}