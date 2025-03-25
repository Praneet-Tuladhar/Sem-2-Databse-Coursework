using System;
using System.Web.UI;

namespace Databse_Coursework
{
    public partial class NavBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic (if needed)
        }
        protected void btnForm1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MilestoneWebForm.aspx");
        }

        protected void btnForm2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProjectWebForm.aspx");
        }

        protected void btnForm3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubTaskWebForm.aspx");
        }

        protected void btnForm4_Click(object sender, EventArgs e)
        {
            Response.Redirect("TaskWebForm.aspx");
        }

        protected void btnForm5_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserWebForm.aspx");
        }

        protected void btnForm6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProjectMilestoneWebForm.aspx");
        }

        protected void btnForm7_Click(object sender, EventArgs e)
        {
            Response.Redirect("TopPerformerWebForm.aspx");
        }

        protected void btnForm8_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProjectWebForm.aspx");
        }
        protected void btnForm9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
    }
}