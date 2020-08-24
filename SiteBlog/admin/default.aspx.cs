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
    public partial class _default : System.Web.UI.Page
    {
        Sqlbaglantisi baglan = new Sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Kullanıcı adı ve şifre karşılaştırılması yapıldı
            SqlCommand cmd = new SqlCommand("Select * from Yonetici where yoneticiKullanici='"+txt_Kullanici.Text+"' and yoneticiSifre='"+txt_Sifre.Text+"'",baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["yoneticiKullanici"] = dr["yoneticiKullanici"];
                Response.Redirect("duyurular.aspx");
            }
            else
            {
                lbl_bilgi.Text = "Hatalı giriş yaptınız.";
            }
        }
    }
}