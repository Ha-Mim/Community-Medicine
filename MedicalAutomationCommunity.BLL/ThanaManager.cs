using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class ThanaManager
    {
        ThanaDBGateway aThanaDbGateway = new ThanaDBGateway();
        public List<Thana> GetThanasByDistrictId(int districtId)
        {
            return aThanaDbGateway.GetThanasByDistrictId(districtId);

        }
    }
}
