using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunters_CampMangement : System.Web.UI.Page
{
    Data_Manipulation dm = new Data_Manipulation();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = dm.Gen_Id("select max(id) from addcampdetailsDB", "CMP");
        int r = dm.For_Execute("insert into addcampdetailsDB values('" + id +"','" + txtcampname.Text + "','" + txtcampaddress.Text + "','" +txtnearby.Text+ "','" +txtcampstrength.Text+ "','" + ddlstatus.Text + "','"+Session["id"].ToString()+"')");
        if (r > 0)
        {
            Response.Write("<script>alert('Successfully')</script>");
        }
 
    }
}