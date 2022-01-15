using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Common_forgotpassword : System.Web.UI.Page
{
    Data_Manipulation dm=new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
        }
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from volunteer_tb where Email='" + txtemail.Text +"'";
        DataSet ds = dm.For_Adapter(str);

        if (ds.Tables[0].Rows.Count > 0)
        {

            MultiView1.SetActiveView(View3);
            Session["table"] = "volunteer_tb";
        }
        else
        {
            str = "select * from user_registrationDB where Email='" + txtemail.Text + "'";
            ds = dm.For_Adapter(str);

            if (ds.Tables[0].Rows.Count > 0)
            {
                MultiView1.SetActiveView(View2);
                Session["table"] = "user_registrationDB";
            }
            else
            {
                lblmsg.Text = "Not Found";
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "select * from user_registrationDB where email='" + txtemail.Text + "' and name='"+txtname.Text+"' and dateofbirth='"+txtdob.Text+"' and phonenumber='"+txtphoneno.Text+"' ";
        DataSet ds = dm.For_Adapter(str);

        if (ds.Tables[0].Rows.Count > 0)
        {
            MultiView1.SetActiveView(View4);



        }
        else
        {
            lblmsguser.Text = "Not Found";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "select * from volunteer_tb where Email='" + txtemail.Text + "' and DateOfBirth='" + txtdob1.Text + "' and pnonenumber='" + txtphonenumber.Text + "' and adhar='" + txtadhar.Text + "' ";
        DataSet ds = dm.For_Adapter(str);

        if (ds.Tables[0].Rows.Count > 0)
        {
            MultiView1.SetActiveView(View4);



        }
        else
        {
            lblmsgvolunteer.Text= "Not Found";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["table"].ToString() == "volunteer_tb")
        {
            string str = "Update volunteer_tb set password='" + txtpassword.Text + "',confirmpassword= '" + txtconformpassword.Text + "'where Email='" + txtemail.Text + "'";

            int r = dm.For_Execute(str);
            if (r > 0)
            {
                Response.Write("<script> alert('Updated')</script>");
            }

        }
        else
        {
            if (Session["table"].ToString() == "user_registrationDB")
            {
                string str = "Update user_registrationDB set password='" + txtpassword.Text + "'where Email='" + txtemail.Text + "'";

                int r = dm.For_Execute(str);
                if (r > 0)
                {
                    Response.Write("<script> alert('Updated')</script>");
                }
            }
        }
    }
}
    