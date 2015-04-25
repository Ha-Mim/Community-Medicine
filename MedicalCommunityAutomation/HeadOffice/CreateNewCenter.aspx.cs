using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedicalAutomationCommunity.BLL;
using MedicalAutomationCommunity.DAO;

namespace MedicalCommunityAutomation.HeadOffice
{
    public partial class CreateNewCenter : System.Web.UI.Page
    {
        DistrictManager aDistrictManager=new DistrictManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                districtDropDownList.DataSource = aDistrictManager.GetAll();
                districtDropDownList.DataTextField = "Name";
                districtDropDownList.DataValueField = "Id";
                districtDropDownList.DataBind();
            }
        }
        CenterManager aCenterManager=new CenterManager();
        ThanaManager aThanaManager=new ThanaManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            Center aCenter = new Center();
            aCenter.Name = nameTextBox.Text;
            aCenter.DistrictId = Convert.ToInt32(districtDropDownList.SelectedValue);
            aCenter.ThanaId = Convert.ToInt32(thanaDropDownList.SelectedValue);
            string ms = aCenterManager.SaveCenter(aCenter);
            msgLabel.Text = ms;
            Session["code"] = aCenter.Name;
            Response.Redirect("LoginInCenter.aspx");

        }

        protected void districtDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            thanaDropDownList.DataSource =
            aThanaManager.GetThanasByDistrictId(Convert.ToInt32(districtDropDownList.SelectedValue));
            thanaDropDownList.DataTextField = "Name";
            thanaDropDownList.DataValueField = "Id";
            thanaDropDownList.DataBind();
        }
    }
}