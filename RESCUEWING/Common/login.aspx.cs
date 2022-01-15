using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Common_loginaspx : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from voluntiers_registration where Email='" + txtemail.Text + "' and Password='" + txtpassword.Text + "'";
        DataSet ds = dm.For_Adapter(str);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["id"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("~/Volunters/Home.aspx");
        }
        else
        {
            str = "select * from user_registrationDB where Email='" + txtemail.Text + "' and Password='" + txtpassword.Text + "'";
            ds = dm.For_Adapter(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uid"] = ds.Tables[0].Rows[0][0].ToString();
                Response.Redirect("~/User/homeuser.aspx");
            }
            else
            {
                str = "select * from admin_loginDB where Username='" + txtemail.Text + "' and Password='" + txtpassword.Text + "'";
                ds = dm.For_Adapter(str);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Response.Redirect("~/Admin/home.aspx");
                }
                else
                {
                    str = "select * from volunteer_tb where Email='" + txtemail.Text + "' and password='" + txtpassword.Text + "'";
                    ds = dm.For_Adapter(str);

                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                        Response.Redirect("~/Volunteer/Home.aspx");
                    }

                    else
                    {
                        ilbs.Text = "Invalid Email or Password";
                    }
                }

            }
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Common/foregotpassword.aspx");
    
    }
    
}