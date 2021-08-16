using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Net;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ManageGroups : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsignin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtgroupname.Text != "")
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "INSERT INTO group_master(group_name, create_date, admin_id)"
                    + " VALUES (@group_name, @create_date, @admin_id)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@group_name", txtgroupname.Text);
                cmd.Parameters.AddWithValue("@create_date", DateTime.Today);
                cmd.Parameters.AddWithValue("@admin_id", 1);
                cmd.ExecuteNonQuery();

                txtgroupname.Text = "";
            }
            else
            {
                lblmessage.Text = "Enter Group Name";
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error " + ex.Message.ToString());
        }
    }

    protected void txtgroupname_TextChanged(object sender, EventArgs e)
    {

    }
}