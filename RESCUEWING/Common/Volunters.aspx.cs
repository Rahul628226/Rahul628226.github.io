using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Common_User_Registeration : System.Web.UI.Page
{
    Data_Manipulation dm=new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (fluphoto.HasFile)
        {
            string path1 = "~/Volunters/Photoprofile/" + fluphoto.FileName;
            fluphoto.SaveAs(Server.MapPath(path1));
            imgphoto.ImageUrl = path1;
            libsphoto.Text = "";
        }
        else
        {
            libsphoto.Text = "Please Upload Your Photo";
        }
       
        
    }
    protected void butsubmit_Click(object sender, EventArgs e)
    {
        string str="select * from  volunteer_tb where Email='"+txtemail.Text+"'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblmsg.Text = "Number already in use";

        }
        else
        {
            str = "select * from user_registrationDB where email='" + txtemail.Text + "'";
            ds = dm.For_Adapter(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblmsg.Text = "Number already in use";

            }
            else
            {
                string id = dm.Gen_Id("select max(id) from volunteer_tb", "VOL");
                int r = dm.For_Execute("insert into volunteer_tb values('" + id + "','" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtadhar.Text + "','" + imgid.ImageUrl + "','" + txtaddress.Text + "','" + ddlselectdistrict.SelectedItem.Text + "','" + txtpincode.Text + "','" + ddlbloodtype.SelectedItem.Text + "','" + rdogender.SelectedItem.Text + "','" + txtdateofbirth.Text + "','" + txtemail.Text + "','" + txtphonenumber.Text + "','" + txtpassword.Text + "','" + txtconformpassword.Text + "','" + imgphoto.ImageUrl + "')");
                if (r > 0)
                {
                    Response.Write("<script>alert('Registration successfully')</script>");
                }
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (fluverifyid.HasFile)
        {
            string path = "~/Volunters/Photoid/" + fluverifyid.FileName;
            fluverifyid.SaveAs(Server.MapPath(path));
            imgid.ImageUrl = path;
            libsid.Text = "";
        }
        else
        {
            libsid.Text = "Please Upload Your ID";
        }
    }
}