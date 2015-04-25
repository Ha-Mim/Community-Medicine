using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class CenterManager
    {
        CenterDBGateway aCenterDbGateway = new CenterDBGateway();
        public string SaveCenter(Center aCenter)
        {
            aCenterDbGateway.SaveCenter(aCenter);
            return "Successfully Saved";
        }

        public int Find(string code, string password)
        {
            return aCenterDbGateway.Find(code, password);
        }


        public List<Center> GetAllCenterByThanaId(int id)
        {
            return aCenterDbGateway.GetAllCenterByThanaId(id);
        }

        public Center GetCenterByName(string name)
        {
            return aCenterDbGateway.GetCenterByName(name);
        }

        public Center GetCenterById(int id)
        {
            return aCenterDbGateway.GetCenterById(id);
        }
    }
}
