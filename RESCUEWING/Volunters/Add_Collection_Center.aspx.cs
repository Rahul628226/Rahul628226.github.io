using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Volunters_Add_Collection_Center : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = dm.For_Adapter("select * from addcampdetailsDB");
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlselectcamp.DataSource = ds.Tables[0];
                ddlselectcamp.DataTextField = "campname";
                ddlselectcamp.DataValueField = "id";
                ddlselectcamp.DataBind();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = dm.Gen_Id("select max(id) from Add_Collection_Center_DB", "CCD");
        int r = dm.For_Execute("insert into Add_Collection_Center_DB values('" + id + "','" + txtcentername.Text + "','" + txtcenteraddress.Text + "','" + txtnearby.Text + "','"+ddlselectcamp.SelectedValue+"','"+txtcontactno.Text+"')");
        if (r > 0)
        {
            Response.Write("<script>alert('Successfully')</script>");
        }


    }
    protected void ddlselectcamp_SelectedIndexChanged(object sender, EventArgs e)
    {

        string str = "select * from addcampdetailsDB where id='" + ddlselectcamp.SelectedValue + "'";
        DataSet ds = dm.For_Adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lbllocation.Text = ds.Tables[0].Rows[0][3].ToString();
            lbladdress.Text = ds.Tables[0].Rows[0][2].ToString();
            
            Panel1.Visible = true;

        }
    }
}
 
