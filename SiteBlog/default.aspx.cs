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
    
    public partial class _default : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet, dbo.Makale.makaleTarih,dbo.Makale.makaleID, dbo.Makale.makaleOkunma, dbo.Makale.makaleYorumSayisi FROM dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID order by makaleID desc", baglan.baglan());
            SqlDataReader drmakalegetir = cmdmakale.ExecuteReader();
             
            dl_makale.DataSource = drmakalegetir;
            dl_makale.DataBind();

        }
    }
}