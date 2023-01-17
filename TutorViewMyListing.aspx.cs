using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LastResortBADPJ
{
    public partial class TutorViewMyListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _connStr = ConfigurationManager.ConnectionStrings["CwADBContext"].ConnectionString;
            SqlConnection conn = new SqlConnection(_connStr);
            string queryStr = "select * from [dbo].[Tuition]";
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            conn.Close();
        }

    }
}