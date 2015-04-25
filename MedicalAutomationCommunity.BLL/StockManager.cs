using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class StockManager
    {
        StockDBGateway aStockDbGateway=new StockDBGateway();
        public List<Stock> GetAll(int centerId)
        {
            return aStockDbGateway.GetAll(centerId);
        }

        public string AddStockDetails(Stock aStock)
        {
            aStockDbGateway.AddInventoryDetails(aStock);
            return "Saved";
        }
    }
}
