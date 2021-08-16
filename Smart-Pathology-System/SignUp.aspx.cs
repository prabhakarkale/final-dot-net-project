using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

      
    }
    protected void ddlusertype_SelectedIndexChanged(object sender, EventArgs e)
    {
      
        String usertype = ddlusertype.SelectedItem.ToString();
        if (usertype == "Patient")
        {
            pnldoctor.Visible = false;
            pnlpatient.Visible = true;
        }
        else if (usertype == "Doctor")
        {
            pnldoctor.Visible = true;
            pnlpatient.Visible = false;
        }
        else
        {
            pnldoctor.Visible = false;
            pnlpatient.Visible = false;
        }
    }
}