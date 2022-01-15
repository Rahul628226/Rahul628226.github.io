using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Volunters_manage_camp_details : System.Web.UI.Page
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
        DataSet ds = dm.For_Adapter("select * from addcampdetailsDB");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            lblmsg.Text="No Data Found";

        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        
        string str="select *from addcampdetailsDB where id='"+GridView1.SelectedRow.Cells[0].Text+"'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {

            lblid.Text = ds.Tables[0].Rows[0][0].ToString();
            txtcampname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtcampaddress.Text = ds.Tables[0].Rows[0][2].ToString();
            txtnearby.Text = ds.Tables[0].Rows[0][3].ToString();
            txtcampstrength.Text = ds.Tables[0].Rows[0][4].ToString();
           ddlstatus.Text = ds.Tables[0].Rows[0][5].ToString();
            lblvolunteerid.Text = ds.Tables[0].Rows[0][6].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str="Update addcampdetailsDB set campname='"+txtcampname.Text+"', Campaddress='"+txtcampaddress.Text+"',nearby='"+txtnearby.Text+"',campstrength='"+txtcampstrength.Text+"',status='"+ddlstatus.SelectedItem.Text+"' where id='"+lblid.Text+"'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Updated Successfully.....')</script>");
        }
        Bind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "delete from addcampdetailsDB where id='" +lblid.Text+ "'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted Successfully.....')</script>");
        }
        Bind();
    }
}