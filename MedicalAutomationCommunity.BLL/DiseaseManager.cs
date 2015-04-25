using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class DiseaseManager
    {
        DiseaseDBGateway aDbGateway=new DiseaseDBGateway();

        public string Save(Disease aDisease)
        {
            aDbGateway.Save(aDisease);
            return "Saved";
        }

        public List<Disease> GetAll()
        {
            return aDbGateway.GetAll();
        }

        public Disease Find(string name)
        {
            return aDbGateway.Find(name);
        }

        public Disease FindID(int id)
        {
            return aDbGateway.FindId(id);
        }

        public List<DiseaseReport> GetDiseaseReport(DiseaseReport aDiseaseReport)
        {
            return aDbGateway.GetDiseaseReport(aDiseaseReport);
        }
    }
}
