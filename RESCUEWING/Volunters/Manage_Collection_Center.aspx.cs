using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Volunters_Manage_Collection_Center : System.Web.UI.Page
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
        DataSet ds = dm.For_Adapter("select * from Add_Collection_Center_DB");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
      
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    
        string str="select *from Add_Collection_Center_DB where id='"+GridView1.SelectedRow.Cells[0].Text+"'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {

           lblccid.Text= ds.Tables[0].Rows[0][0].ToString();
           lblcid.Text = ds.Tables[0].Rows[0][4].ToString();
           txtccname.Text = ds.Tables[0].Rows[0][1].ToString();
           txtcaddress.Text = ds.Tables[0].Rows[0][2].ToString();
           txtnearby.Text = ds.Tables[0].Rows[0][3].ToString();
           txtcontactno.Text = ds.Tables[0].Rows[0][5].ToString();

           
        }
    }
    protected void butupdate_Click(object sender, EventArgs e)
    {

    string str="Update Add_Collection_Center_DB set collectioncentername='"+txtccname.Text+"', collectioncenteraddress='"+txtcaddress.Text+"',nearby='"+txtnearby.Text+"',contactno='"+txtcontactno.Text+"' where id='"+lblccid.Text+"'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Updated Successfully.....')</script>");
        }
        Bind();
    }
    protected void butdelete_Click(object sender, EventArgs e)
    {
        string str = "delete from Add_Collection_Center_DB where id='" + lblccid.Text + "'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted Successfully.....')</script>");
        }
        Bind();
    }
}