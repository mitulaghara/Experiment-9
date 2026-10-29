
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace YourProjectNamespace
{
    public partial class Companys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPlacements();
            }
        }

        private void LoadPlacements()
        {
            string cs = ConfigurationManager
                .ConnectionStrings["StudentDB"]
                .ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                // Display all placement records
                string query = @"
                    SELECT
                        P.No,
                        P.CompanyName,
                        P.PackageOffer,
                        S.StudentID,
                        S.EnrollmentNo,
                        S.StudentName,
                        S.Department
                    FROM Placement P
                    INNER JOIN Student S
                        ON P.StudentID = S.StudentID
                    ORDER BY P.No";

                using (SqlDataAdapter da =
                    new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

                // Display company summary at the bottom
                string summaryQuery = @"
                    SELECT
                        CompanyName,
                        PackageOffer,
                        COUNT(DISTINCT StudentID) AS TotalStudents
                    FROM Placement
                    GROUP BY CompanyName, PackageOffer
                    ORDER BY CompanyName";

                using (SqlDataAdapter da2 =
                    new SqlDataAdapter(summaryQuery, con))
                {
                    DataTable dt2 = new DataTable();
                    da2.Fill(dt2);

                    GridView2.DataSource = dt2;
                    GridView2.DataBind();
                }
            }
        }
    }
}
