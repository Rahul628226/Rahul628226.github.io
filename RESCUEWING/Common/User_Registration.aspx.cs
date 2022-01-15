using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Common_User_Registration : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {string str="select * from  voluntiers_registration where Email='"+txtemail.Text+"'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblmsg.Text = "Email already in use";

        }
        else
        {
            str = "select * from user_registrationDB where email='" + txtemail.Text + "'";
            ds = dm.For_Adapter(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblmsg.Text = "Email already in use";

            }
            else
            {
                string id = dm.Gen_Id("select max(id) from user_registrationDB", "UID");
                int r = dm.For_Execute("insert into user_registrationDB values('" + id + "','" + txtname.Text + "','" + rdogender.SelectedItem.Text + "','" + txtaddress.Text + "','" + txtdateofbirth.Text + "','" + txtphoneno.Text + "','" + txtemail.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "')");
                if (r > 0)
                {
                    Response.Write("<script>alert('Registration successfully')</script>");
                }
            }
        }
    }
    protected void txtaddress_TextChanged(object sender, EventArgs e)
    {

    }
}