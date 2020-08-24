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
    public partial class mesajlar : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string iletisimID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yoneticiKullanici"] == null)
            {
                Response.Redirect("default.aspx");
            }

            iletisimID = Request.QueryString["iletisimID"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from Iletisim where iletisimID='"+iletisimID+"'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
                Response.Redirect("mesajlar.aspx");
            }

            if (Page.IsPostBack==false)
            {
                pnl_mesajlar.Visible = false;
            }

            SqlCommand cmdmesaj = new SqlCommand("Select*from Iletisim", baglan.baglan());
            SqlDataReader drmesaj = cmdmesaj.ExecuteReader();
            dl_mesaj.DataSource = drmesaj;
            dl_mesaj.DataBind();

        }

        protected void btn_marti_Click(object sender, EventArgs e)
        {
            pnl_mesajlar.Visible = true;
        }

        protected void btn_mEksi_Click(object sender, EventArgs e)
        {
            pnl_mesajlar.Visible = false;
        }
    }
}