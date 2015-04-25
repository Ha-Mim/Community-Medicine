using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class MedicineManager
    {
        MedicineDBGateway aDbGateway=new MedicineDBGateway();
        public string Save(Medicine aMedicine)
        {
            aDbGateway.Save(aMedicine);
            return "Saved";
        }

        public List<Medicine> GetAllMedicine()
        {
            return aDbGateway.GetAllMedicine();
        }


        public Medicine Find(string name)
        {
            return aDbGateway.Find(name);
        }
    }
}
