using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace SiteBlog
{
    public class Sqlbaglantisi
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-G75RIAK\SQLEXPRESS;Initial Catalog=siteDB;Integrated Security=True");
            baglanti.Open();
            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();//Oluşan hataları gidermek için

            return (baglanti);
        }
    }
}