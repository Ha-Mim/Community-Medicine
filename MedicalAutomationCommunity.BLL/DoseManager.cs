using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class DoseManager
    {
        DoseDBGateway aDoseDbGateway = new DoseDBGateway();
        public List<Dose> GetAll()
        {
            return aDoseDbGateway.GetAll();
        }
        public Dose Find(string name)
        {
            return aDoseDbGateway.Find(name);
        }
    }
}
