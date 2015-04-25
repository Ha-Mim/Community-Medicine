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
    public partial class MedicineSetupUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        MedicineManager aManager=new MedicineManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Medicine aMedicine=new Medicine();
            aMedicine.Name = nameTextBox.Text;
            aMedicine.Quantity = quantityTextBox.Text;
            string ms = aManager.Save(aMedicine);
            msg.Text = ms;
        }
    }
}