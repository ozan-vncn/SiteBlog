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
    public partial class duyuruguncelle : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string duyurularID = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            duyurularID = Request.QueryString["duyurularID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmddgetir = new SqlCommand("Select*from Duyurular where duyurularID='" + duyurularID + "'", baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();

                DataTable dtdgetir = new DataTable("Tablo");
                dtdgetir.Load(drdgetir);
                DataRow row = dtdgetir.Rows[0];
                txt_duyuruBaslik.Text = row["duyurularBaslik"].ToString();
                txt_duyuruIcerik.Text = row["duyurularIcerik"].ToString();
            }
        }

        protected void btn_dGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddguncelle = new SqlCommand("Update Duyurular Set duyurularBaslik='" + txt_duyuruBaslik.Text + "', duyurularIcerik='" + txt_duyuruIcerik.Text + "'where duyurularID='" + duyurularID + "'", baglan.baglan());
            cmddguncelle.ExecuteNonQuery();

            Response.Redirect("duyurular.aspx");


        }
    }
}