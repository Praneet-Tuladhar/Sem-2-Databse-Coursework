using System;
using System.Web.UI;

namespace Databse_Coursework
{
    public partial class Homepage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic (if needed)
        }

        // Redirect to Milestone Form
        protected void btnForm1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MilestoneWebForm.aspx");
        }

        // Redirect to Project Form
        protected void btnForm2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProjectWebForm.aspx");
        }

        // Redirect to SubTask Form
        protected void btnForm3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SubTaskWebForm.aspx");
        }

        // Redirect to Task Form
        protected void btnForm4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TaskWebForm.aspx");
        }

        // Redirect to Users Form
        protected void btnForm5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserWebForm.aspx");
        }

        // Redirect to Project Milestone Form
        protected void btnForm6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProjectMilestoneWebForm.aspx");
        }

        // Redirect to Top Performer Form
        protected void btnForm7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TopPerformerWebForm.aspx");
        }

        // Redirect to Users Project Form
        protected void btnForm8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserProjectWebForm.aspx");
        }
    }
}
