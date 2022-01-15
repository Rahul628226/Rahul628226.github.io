using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_ManageVoluntier : System.Web.UI.Page
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
        DataSet ds = dm.For_Adapter("select id,FirstName,LastName,adhar,address,district from volunteer_tb");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string str = "select *from volunteer_tb where id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblid.Text = ds.Tables[0].Rows[0][0].ToString();
             lblfirstname.Text= ds.Tables[0].Rows[0][1].ToString();
            lblLastName.Text= ds.Tables[0].Rows[0][2].ToString();
            
            lbladhar.Text = ds.Tables[0].Rows[0][3].ToString();
            imgid.ImageUrl = ds.Tables[0].Rows[0][4].ToString();
            lbldistrict.Text = ds.Tables[0].Rows[0][6].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0][5].ToString();
            lblpincode.Text = ds.Tables[0].Rows[0][7].ToString();
            lblbloodtype.Text = ds.Tables[0].Rows[0][8].ToString();
            lblgender.Text = ds.Tables[0].Rows[0][9].ToString();
            lbldateofbirth.Text = ds.Tables[0].Rows[0][10].ToString();
            lblEmail.Text = ds.Tables[0].Rows[0][11].ToString();
            lblphonenumber.Text= ds.Tables[0].Rows[0][12].ToString();
            lblgender.Text = ds.Tables[0].Rows[0][13].ToString();
            imgphoto.ImageUrl = ds.Tables[0].Rows[0][15].ToString();
        
        
        
        
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "delete from volunteer_tb where id='" + lblid.Text + "'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted Successfully.....')</script>");
        }
        Bind();
    }
}