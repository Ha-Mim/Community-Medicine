using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedicalAutomationCommunity.BLL;
using MedicalAutomationCommunity.DAO;

namespace MedicalCommunityAutomation.CenterOffice
{
    public partial class DoctorEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DoctorManager aDoctorManager=new DoctorManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Doctor aDoctor = new Doctor();
            aDoctor.Name = nameTextBox.Text;
            aDoctor.Degree = degreeTextBox.Text;
            aDoctor.Specialization = specializationTextBox.Text;
            aDoctor.CenterId = (int)Session["id"];
            string msg = aDoctorManager.Save(aDoctor);
            msgLabel.Text = msg;
        }
    }
}