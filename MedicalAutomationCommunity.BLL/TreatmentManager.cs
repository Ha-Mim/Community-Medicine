using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;
using MedicalAutomationCommunity.DBGateway;

namespace MedicalAutomationCommunity.BLL
{
    public class TreatmentManager
    {
        StockDBGateway aStockDbGateway = new StockDBGateway();
        TreatmentDBGateway aTreatmentDbGateway = new TreatmentDBGateway();
        public string Save(Treatment aTreatment)
        {
            aStockDbGateway.Update(aTreatment.CenterId, aTreatment.MedicineId, aTreatment.Quantity);
            aTreatmentDbGateway.Save(aTreatment);
            return "Saved";
        }


        public int Count(int patientId)
        {
            return aTreatmentDbGateway.Count(patientId);
        }


        public int GetDistrictIdByCenterId(int centerId)
        {
            return aTreatmentDbGateway.GetDistrictIdByCenterId(centerId);
        }
    }
}
