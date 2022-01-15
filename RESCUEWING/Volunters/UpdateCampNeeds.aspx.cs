using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Volunters_UpdateCampNeeds : System.Web.UI.Page
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
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "remove")
        {
            string str = "Delete Camp_Need_TB where id='" + e.CommandArgument.ToString() + "'";
            int r = dm.For_Execute(str);
            string str1 = "Delete Add_Iteam_DB where Nid='" + e.CommandArgument.ToString() + "'";
            int r1 = dm.For_Execute(str1);
            Bind();
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
}