using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedicalAutomationCommunity.BLL;

namespace MedicalCommunityAutomation.HeadOffice
{
    public partial class LoginInCenter : System.Web.UI.Page
    {
        CenterManager aCenterManager=new CenterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["code"].ToString();
            MedicalAutomationCommunity.DAO.Center aCenter = aCenterManager.GetCenterByName(name);
            codeTextBox.Text = aCenter.Code;
            passwordTextBox.Text = aCenter.Password;
        }

        
    }
}