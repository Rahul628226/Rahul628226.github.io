using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_UserBloodBank : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = dm.Gen_Id("select max(id) from user_registrationDB", "UID");
        int r = dm.For_Execute("insert into User_Blood_Bank_DB values('" + id + "','" + txtFirstName.Text + "','" + txtlastname.Text + "','" + txtdob.Text + "','" + ddlbloodgroup.SelectedItem.Text+ "','" +txtheight.Text + "','" + txtweight.Text + "','" + txtlastdonatedate.Text + "','" + txtphonenumber.Text + "','"+txtaddress.Text+"','"+txtdistrict.Text+"','"+txtpincode.Text+"')");
        if (r > 0)
        {
            Response.Write("<script>alert('Registration successfully')</script>");
        }
    }
}