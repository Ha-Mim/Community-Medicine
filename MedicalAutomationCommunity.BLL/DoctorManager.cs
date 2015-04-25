using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class DoctorManager
    {
        DoctorDBGateway aDoctorDbGateway=new DoctorDBGateway();
        public string Save(Doctor aDoctor)
        {
            aDoctorDbGateway.Save(aDoctor);
            return "Successfully Saved";
        }

        public List<Doctor> GetAll(int centerId)
        {
            return aDoctorDbGateway.GetAll(centerId);
        }
    }
}
