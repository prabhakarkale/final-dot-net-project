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
                ListBox1.Items.Add(li);
            }

           

            conn.Close();  
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string sql = "select test_id, test_name from tests where group_id="+DropDownList1.SelectedValue;
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        ListBox1.Items.Clear();
        while (dr.Read())
        {
            ListItem li = new ListItem();
            li.Text = dr.GetValue(0).ToString();
            li.Value = dr.GetValue(1).ToString();
            ListBox1.Items.Add(li);
        }



        conn.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        var items = from ListItem li in ListBox1.Items
                    where li.Selected == true
                    select li;

        foreach (ListItem li in items)
        {

            if (!ListBox2.Items.Contains(li))
            {
                ListBox2.Items.Add(li);
                //Add data to listbox
            }
        }
        items = null;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        ListItem li = new ListItem();
        li.Value = "4";
        li.Text = "key";
        ListBox2.Items.Add(li);
    }
}