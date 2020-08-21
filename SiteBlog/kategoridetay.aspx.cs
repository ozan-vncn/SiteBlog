using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SiteBlog.admin;

namespace SiteBlog
{
    public partial class kategoridetay : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];

            SqlCommand cmdkategori = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet,dbo.Makale.makaleID, dbo.Makale.makaleTarih, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResim, dbo.Kategori.kategoriID FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where dbo.Kategori.kategoriID='"+kategoriID+"'", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();
            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();

        }
    }
}