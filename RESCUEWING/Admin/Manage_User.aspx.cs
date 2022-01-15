using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Manage_User : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }

    }
    public void Bind()
    {
        DataSet ds = dm.For_Adapter("select id,name,address,phonenumber,email from user_registrationDB");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
        }
    }



    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string str = "select *from user_registrationDB where id='" + GridView2.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblid.Text = ds.Tables[0].Rows[0][0].ToString();
            lblname.Text = ds.Tables[0].Rows[0][1].ToString();
            lblusername.Text = ds.Tables[0].Rows[0][7].ToString();
            lblgender.Text = ds.Tables[0].Rows[0][2].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0][3].ToString();

            lbldob.Text = ds.Tables[0].Rows[0][4].ToString();
            lblphoneno.Text = ds.Tables[0].Rows[0][5].ToString();
            lblemail.Text = ds.Tables[0].Rows[0][7].ToString();
        }
        Bind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string str = "delete from user_registrationDB where id='" + lblid.Text + "'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted Successfully.....')</script>");
        }
        Bind();
    }
}