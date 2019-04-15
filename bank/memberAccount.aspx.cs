using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace bank
{
    public partial class memberAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (string)Session["username"];

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT Member_Fname FROM Members WHERE Member_Username = '" + username + "'", db);
            SqlCommand cmd1 = new SqlCommand("SELECT Member_CheckingTotal FROM Members WHERE Member_Username = '" + username + "'", db);
            SqlCommand cmd2 = new SqlCommand("SELECT Member_SavingTotal FROM Members WHERE Member_Username = '" + username + "'", db);

            //"SELECT Member_CheckingTotal FROM Members WHERE Member_Username = '" + username + "'", db
            db.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                //if read is successful load checking and savings totals into corresponding labels
                
                Label1.Text = rd.GetString(0);
                rd.Close();
                SqlDataReader rdc = cmd1.ExecuteReader();
                rdc.Read();
                decimal i = rdc.GetDecimal(0);
                
                checkingLabel.Text = "$"+i.ToString();
                rdc.Close();

                SqlDataReader rds = cmd2.ExecuteReader();

                rds.Read();
                decimal x = rds.GetDecimal(0);

                savingsLabel.Text = "$" + x.ToString();
                rds.Close();

                db.Close();

            }
            else
            {
               // invalidUserLabel.Visible = true;
            }


        }
    }
}