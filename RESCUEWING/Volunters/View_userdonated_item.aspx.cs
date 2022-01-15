using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Volunters_View_userdonated_item : System.Web.UI.Page
{
    Data_Manipulation dm=new Data_Manipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
 if (!IsPostBack)
        {
            Bind();
        }

    }
    public void Bind()
    {
        DataSet ds = dm.For_Adapter("select  user_donated_item_DB.*,Add_Collection_Center_DB.* from user_donated_item_DB inner join Add_Collection_Center_DB on user_donated_item_DB.ccid = Add_Collection_Center_DB.id inner join addcampdetailsDB on Add_Collection_Center_DB.Cid =addcampdetailsDB.id where addcampdetailsDB.Volunteerid='" + Session["id"] + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        

    }

}