using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;

namespace MedicalAutomationCommunity.DBGateway
{
    public class ViewStoryDBGateway:DBGateway
    {
        public List<ViewStrory> ViewStory(string name)
        {

            DiseaseDBGateway aDiseaseDbGateway = new DiseaseDBGateway();
            DistrictDBGateway aDistrictDbGateway = new DistrictDBGateway();
            ThanaDBGateway aThanaDbGateway = new ThanaDBGateway();
            CenterDBGateway aCenterDbGateway = new CenterDBGateway();
            string query = "SELECT *FROM tbl_patient WHERE name='" + name + "'";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            List<ViewStrory> viewHistories = new List<ViewStrory>();
            while (ASqlDataReader.Read())
            {
                ViewStrory aViewHistory = new ViewStrory();
                aViewHistory.Id = Convert.ToInt32(ASqlDataReader["id"]);
                aViewHistory.Name = ASqlDataReader["name"].ToString();
                aViewHistory.Diseases = aDiseaseDbGateway.FindId(Convert.ToInt32(ASqlDataReader["diseaseId"])).Name;
                aViewHistory.Destrict = aDistrictDbGateway.Find(Convert.ToInt32(ASqlDataReader["districtId"])).Name;

                aViewHistory.Thana = aThanaDbGateway.Find(Convert.ToInt32(ASqlDataReader["thanaId"])).Name;
                aViewHistory.Center = aCenterDbGateway.GetCenterById(Convert.ToInt32(ASqlDataReader["centerId"])).Name;

                viewHistories.Add(aViewHistory);
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return viewHistories;
        } 

    }
}
