using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace SiteBlog
{

    public partial class makaledetay : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];

            if (Page.IsPostBack==false)
            {
                //makale Getir
                SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleIcerik, dbo.Makale.makaleTarih, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi,dbo.Makale.makaleID, dbo.Kategori.kategoriResim, dbo.Kategori.kategoriID FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where dbo.Makale.makaleID='" + makaleID + "'", baglan.baglan());
                SqlDataReader drmakale = cmdmakale.ExecuteReader();

                dl_makale.DataSource = drmakale;
                dl_makale.DataBind();

                //makale okunma sayısı

                SqlCommand cmdOkunma = new SqlCommand("Update Makale Set makaleOkunma=makaleOkunma+1 where makaleID='"+makaleID+"'", baglan.baglan());
                cmdOkunma.ExecuteNonQuery();

            }






        }
    }
}