using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Patient_RequestForTest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string sql = "select test_id, test_name from tests";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ListItem li = new ListItem();
                li.Text = dr.GetValue(0).ToString();
                li.Value = dr.GetValue(1).ToString();
                lbselecttests.Items.Add(li);
            }

           

            conn.Close();  
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string sql = "select test_id, test_name from tests where group_id="+ddlfilterbygroup.SelectedValue;
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        lbselecttests.Items.Clear();
        while (dr.Read())
        {
            ListItem li = new ListItem();
            li.Text = dr.GetValue(0).ToString();
            li.Value = dr.GetValue(1).ToString();
            lbselecttests.Items.Add(li);
        }



        conn.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        var items = from ListItem li in lbselecttests.Items
                    where li.Selected == true
                    select li;

        foreach (ListItem li in items)
        {

            if (!lbselectedtests.Items.Contains(li))
            {
                lbselectedtests.Items.Add(li);
                //Add data to listbox
            }
        }
        items = null;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        lbselectedtests.Items.Clear();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlrequestby.SelectedIndex == 0)
        {
            txtdoctorrefcode.Enabled = false;
        }
        else
        {
            txtdoctorrefcode.Enabled = true;
        }
    }
    protected void btnaddrequest_Click(object sender, EventArgs e)
    {

        if (ddlrequestby.SelectedIndex == 0)
        {
            Response.Write("by self");
        }
        else
            Response.Write("by Doctor");

        /*try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO test_request(patient_id, address, doctor_id)"+
                "VALUES (@patinet_id, @address,@doctor_id)";
            //string insertQuery = "insert into RegisterDataBase(StudentName,Passwords,EmailId,Department,College)values (@studentname,@passwords,@emailid,@department,@college)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@patinet_id", 1);
            cmd.Parameters.AddWithValue("@address", txtchangedaddress.Text);
            cmd.Parameters.AddWithValue("@doctor_id", .Text);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write("Error " + ex.Message.ToString());
        }*/

    }
}