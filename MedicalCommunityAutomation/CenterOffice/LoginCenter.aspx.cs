using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedicalAutomationCommunity.BLL;

namespace MedicalCommunityAutomation.CenterOffice
{
    public partial class LoginCenter : System.Web.UI.Page
    {
        CenterManager aCenterManager=new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void centerLoginButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            int centerId = aCenterManager.Find(centerCodeTextBox.Text, passwordTextbox.Text);
            if (centerId != 0)
            {
                Session["id"] = centerId;
                Response.Redirect("StockReport.aspx");
            }
            else
            {
                msg.Text = "Incorrect center code or password!";
            }
        }
    }
}