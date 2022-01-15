using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Manage_Camp_Details : System.Web.UI.Page
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
        DataSet ds = dm.For_Adapter("select id,campname,campaddress from addcampdetailsDB");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = ds.Tables[0];
            GridView2.DataBind();
        }
       
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select *from addcampdetailsDB where id='" + GridView2.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lblCid.Text = ds.Tables[0].Rows[0][0].ToString();
            lblcampname.Text = ds.Tables[0].Rows[0][1].ToString();
            lblcampaddress.Text = ds.Tables[0].Rows[0][2].ToString();

            lblnearby.Text = ds.Tables[0].Rows[0][3].ToString();

            lblcampstrength.Text = ds.Tables[0].Rows[0][4].ToString();
            lblstatus.Text = ds.Tables[0].Rows[0][5].ToString();
            lblvolunteerid.Text = ds.Tables[0].Rows[0][6].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "delete from addcampdetailsDB where id='" + lblCid.Text + "'";

        int r = dm.For_Execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted Successfully.....')</script>");
        }
        Bind();
    }
}