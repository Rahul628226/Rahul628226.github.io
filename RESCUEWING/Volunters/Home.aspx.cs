using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunters_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/Add_Camp_Details.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/Add_Camp_Needs.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/Add_Collection_Center.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Volunters/UpdateCampNeeds.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
         Response.Redirect("~/Volunters/Volunteers_Myprofile.aspx");
    
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/Manage_Collection_Center.aspx");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/manage_camp_details.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/Volunteer_BloodBank.aspx");

    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunters/View_userdonated_item.aspx");
    }
}
