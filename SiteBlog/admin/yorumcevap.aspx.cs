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
    public partial class yorumcevap : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_yorumCevap_Click(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];

            SqlCommand cmdyEkle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumIcerik,yorumResim,makaleID) Values('" + txt_AdSoyad.Text + "','" + txt_yorumIcerik.Text + "','/tema/admin.ico','" + makaleID + "')", baglan.baglan());
            cmdyEkle.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }
    }
}