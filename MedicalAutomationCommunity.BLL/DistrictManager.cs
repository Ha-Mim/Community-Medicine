using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class DistrictManager
    {
        DistrictDBGateway aDistrictDbGateway = new DistrictDBGateway();

        public List<District> GetAll()
        {
            return aDistrictDbGateway.GetAll();
        }
    }
}
