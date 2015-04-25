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
    public partial class DiseaseSetupUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DiseaseManager aManager=new DiseaseManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Disease aDisease=new Disease();
            aDisease.Name = nameTextBox.Text;
            aDisease.Description = descriptionTextBox.Text;
            aDisease.TreatmentProcedure = procedureTextBox.Text;
            aDisease.PreferedDrugs = preferdDrugsTextBox.Text;
            string ms = aManager.Save(aDisease);
            msg.Text = ms;
        }
    }
}