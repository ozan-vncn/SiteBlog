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
    public partial class kullanici : System.Web.UI.MasterPage
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Duyurular
            SqlCommand cmdduyuru = new SqlCommand("Select*from Duyurular", baglan.baglan());
            SqlDataReader drduyuru = cmdduyuru.ExecuteReader();

            dl_duyuru.DataSource = drduyuru;
            dl_duyuru.DataBind();

            //kategoriler
            SqlCommand cmdkategori = new SqlCommand("Select*from Kategori", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dl_kategori.DataSource = drkategori;
            dl_kategori.DataBind();


        }
    }
}