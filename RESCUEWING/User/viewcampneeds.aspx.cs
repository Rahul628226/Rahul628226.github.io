using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class User_viewcampeeds : System.Web.UI.Page
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
        DataSet ds = dm.For_Adapter("select Camp_Need_TB.*,addcampdetailsDB.campname from Camp_Need_TB inner join addcampdetailsDB on Camp_Need_TB.Cid=addcampdetailsDB.id");
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            foreach (DataListItem it in DataList1.Items)
            {
                GridView gv = (GridView)it.FindControl("GridView1");
                Label lblId = (Label)it.FindControl("Label1");

                string str = "select * from Add_Iteam_DB where Nid='" + lblId.Text + "'";
                DataSet ds1 = dm.For_Adapter(str);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    gv.DataSource = ds1.Tables[0];
                    gv.DataBind();
                }

            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Donate")
        {
 Response.Redirect("~/User/DonateNeeds.aspx?Nid="+e.CommandArgument.ToString());

        } 
    }
}
