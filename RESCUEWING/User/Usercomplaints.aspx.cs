using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Usercomplaints : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbldate.Text = DateTime.Now.ToShortDateString();
    }
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        string cmid = dm.Gen_Id("select max(cmid) from User_Complaints_DB", "CM");
        int r = dm.For_Execute("insert into User_Complaints_DB Values('" + cmid + "','" + txttitle.Text + "','" + txtdescription.Text + "','" + lbldate.Text + "','"+Session["uid"].ToString()+"')");
        if (r > 0)
        {
            Response.Write("<script>alert('Complaint Registered')</script>");
        }
    }
}