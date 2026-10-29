using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace YourProjectNamespace
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cs = ConfigurationManager
                    .ConnectionStrings["StudentDB"]
                    .ConnectionString;

                string query = @"SELECT StudentID, EnrollmentNo,
                    StudentName, Department, Passing, [Year],
                    CASE WHEN IsPlaced = 1 THEN 'Yes'
                    ELSE 'No' END AS PlacementStatus
                    FROM Student";

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlDataAdapter da =
                        new SqlDataAdapter(query, con);

                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
}