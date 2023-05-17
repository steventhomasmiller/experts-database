using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertSystemTest
{



    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["ExpertConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT [img_URL], [FirstName]+' '+[MiddleName]+' '+[LastName] as name,[College],[Dept],[Specialization]FROM[Expert_system_data].[dbo].[Fac_Success_Images] order by Dept,LastName ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();

        }
    }
}