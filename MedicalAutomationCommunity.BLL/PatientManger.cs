using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class PatientManger
    {
        PatientDBGateway aPatientDbGateway = new PatientDBGateway();

        public Patient Search(string name)
        {
            return aPatientDbGateway.Search(name);
        }
    }
}
