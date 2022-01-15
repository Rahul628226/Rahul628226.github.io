using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class User_User_Myprofile : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "select * from user_registrationDB where id='" + Session["uid"].ToString() + "'";
            DataSet ds = dm.For_Adapter(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtname.Text = ds.Tables[0].Rows[0][1].ToString();
                rdogender.SelectedItem.Text = ds.Tables[0].Rows[0][2].ToString();
                txtdateofbirth.Text = ds.Tables[0].Rows[0][4].ToString();
                txtaddress.Text = ds.Tables[0].Rows[0][3].ToString();
                txtphoneno.Text = ds.Tables[0].Rows[0][5].ToString();
                txtemail.Text = ds.Tables[0].Rows[0][6].ToString();
                txtusername.Text = ds.Tables[0].Rows[0][7].ToString();
            }
        }
    }
    protected void butupdate_Click(object sender, EventArgs e)
    {
        string str = "Update user_registrationDB set name='" + txtname.Text + "',gender='" + rdogender.SelectedItem.Text + "',address='" + txtaddress.Text + "',dateofbirth='" + txtdateofbirth.Text + "',phonenumber='" +txtphoneno.Text+ "',email='" + txtemail.Text +"',username='"+txtusername.Text+"' where id='" + Session["uid"].ToString() + "'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script> alert('Updated')</script>");
        }
    
    }
    protected void butdelete_Click(object sender, EventArgs e)
    {

        string str = "delete from user_registrationDB where id='" + Session["uid"].ToString() + "'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script> alert('Deleted')</script>");
        }
    }
}