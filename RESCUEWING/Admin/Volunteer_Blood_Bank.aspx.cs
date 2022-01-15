using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Volunteer_Blood_Bank : System.Web.UI.Page
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
        DataSet ds = dm.For_Adapter("select id,FirstName,LastName,BloodGroup,PhoneNumber,LastDonateDate from Voluntier_Blood_Bank_DB");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string str = "select *from Voluntier_Blood_Bank_DB where id='" + GridView1.SelectedRow.Cells[0].Text+ "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblvid.Text = ds.Tables[0].Rows[0][0].ToString();
            lblfirstname.Text = ds.Tables[0].Rows[0][1].ToString();
            lbllastname.Text = ds.Tables[0].Rows[0][2].ToString();

            lbldob.Text = ds.Tables[0].Rows[0][3].ToString();

            lblbloodgroup.Text = ds.Tables[0].Rows[0][4].ToString();
            lblheight.Text = ds.Tables[0].Rows[0][5].ToString();
            lblweight.Text = ds.Tables[0].Rows[0][6].ToString();
            lbllastdonatedate.Text = ds.Tables[0].Rows[0][7].ToString();
            lblphoneno.Text = ds.Tables[0].Rows[0][8].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0][9].ToString();
            lbldistrict.Text = ds.Tables[0].Rows[0][10].ToString();
            lblpincode.Text = ds.Tables[0].Rows[0][11].ToString();
            
        }
       
           
        

            

                


            
        
    }
}
