using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Volunteer_voluntter_myprofile : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str="select * from volunteer_tb where id='"+Session["id"].ToString()+"'";
            DataSet ds = dm.For_Adapter(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtfirstname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtlastname.Text = ds.Tables[0].Rows[0][2].ToString();
                ddlselectdistrict.SelectedItem.Text = ds.Tables[0].Rows[0][6].ToString();
                txtaddress.Text = ds.Tables[0].Rows[0][5].ToString();
                txtpincode.Text = ds.Tables[0].Rows[0][7].ToString();
                ddlbloodtype.Text = ds.Tables[0].Rows[0][8].ToString();
                rdogender.SelectedItem.Text=ds.Tables[0].Rows[0][9].ToString();
                txtdateofbirth.Text = ds.Tables[0].Rows[0][10].ToString();
                txtemail.Text = ds.Tables[0].Rows[0][11].ToString();
                txtp.Text = ds.Tables[0].Rows[0][12].ToString();
                imgphoto.ImageUrl = ds.Tables[0].Rows[0][15].ToString();

            }
        }

    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        string str = "Update volunteer_tb set FirstName='" + txtfirstname.Text + "',LastName='" + txtlastname.Text + "',district='" + ddlselectdistrict.SelectedItem.Text + "',address='" + txtaddress.Text + "',pincode='" + txtpincode.Text + "',bloodtype='" + ddlbloodtype.SelectedItem.Text + "',gender='" + rdogender.SelectedItem.Text + "',dateofbirth='" + txtdateofbirth.Text + "',Email='" + txtemail.Text + "',pnonenumber='" + txtp.Text + "',photp='" + imgphoto.ImageUrl + "'where id='" + Session["id"].ToString() + "'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script> alert('Updated')</script>");
        }
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = "delete from volunteer_tb where id='" + Session["id"].ToString() + "'";
        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script> alert('Deleted')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "Update volunteer_tb set photp='" + imgphoto.ImageUrl + "'where id='" + Session["id"].ToString() + "'";
        int r = dm.For_Execute(str);
       
        if (fluphoto.HasFile)
        {
            string path1 = "~/Volunters/Photoprofile/" + fluphoto.FileName;
            fluphoto.SaveAs(Server.MapPath(path1));
            imgphoto.ImageUrl = path1;
            libsphoto.Text = "";
        }
        
    }
}