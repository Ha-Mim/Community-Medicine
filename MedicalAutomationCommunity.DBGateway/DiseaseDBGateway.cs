using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;

namespace MedicalAutomationCommunity.DBGateway
{
    public class DiseaseDBGateway:DBGateway
    {
        public void Save(Disease aDisease)
        {
            ASqlConnection.Open();
            string query = "INSERT INTO tbl_disease VALUES ('" + aDisease.Name + "','" + aDisease.Description + "','" +
                           aDisease.TreatmentProcedure + "','" + aDisease.PreferedDrugs + "')";
            ASqlCommand=new SqlCommand(query,ASqlConnection);
            ASqlCommand.ExecuteNonQuery();
            ASqlConnection.Close();
        }

        public List<Disease> GetAll()
        {
            string query = "SELECT *FROM tbl_disease";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();

            List<Disease> diseases = new List<Disease>();

            while (ASqlDataReader.Read())
            {
                Disease aDisease=new Disease();
                aDisease.Id = (int) ASqlDataReader["id"];
                aDisease.Name = ASqlDataReader["name"].ToString();
                aDisease.Description = ASqlDataReader["description"].ToString();
                aDisease.PreferedDrugs = ASqlDataReader["prefered_drugs"].ToString();
                aDisease.TreatmentProcedure = ASqlDataReader["treatment_procedure"].ToString();

                diseases.Add(aDisease);
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();

            return diseases;
        }

        public Disease Find(string name)
        {
            Disease aDisease = new Disease();
            string query = "SELECT *FROM tbl_disease WHERE name = '" + name + "'";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            while (ASqlDataReader.Read())
            {
                aDisease.Id = (int)ASqlDataReader["id"];
                aDisease.Name = ASqlDataReader["name"].ToString();
                aDisease.Description = ASqlDataReader["description"].ToString();
                aDisease.PreferedDrugs = ASqlDataReader["prefered_drugs"].ToString();
                aDisease.TreatmentProcedure = ASqlDataReader["treatment_procedure"].ToString();

              
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return aDisease;
        }
        public Disease FindId(int id)
        {
            Disease aDisease = new Disease();
            string query = "SELECT *FROM tbl_disease WHERE id = '" + id + "'";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            while (ASqlDataReader.Read())
            {
                aDisease.Id = (int)ASqlDataReader["id"];
                aDisease.Name = ASqlDataReader["name"].ToString();
                aDisease.Description = ASqlDataReader["description"].ToString();
                aDisease.PreferedDrugs = ASqlDataReader["prefered_drugs"].ToString();
                aDisease.TreatmentProcedure = ASqlDataReader["treatment_procedure"].ToString();


            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return aDisease;
        }
        public List<DiseaseReport> GetDiseaseReport(DiseaseReport aDiseaseReport)
        {
            List<DiseaseReport> aListOfDiseaseReports = new List<DiseaseReport>();
            string query = "SELECT tbl_district.name AS Name,tbl_district.population AS Population,COUNT(tbl_treatment.patientId) AS Total from tbl_district LEFT JOIN tbl_treatment ON tbl_treatment.'" + aDiseaseReport.DiseaseId + "' = tbl_district.id WHERE tbl_treatment.districtId='" + aDiseaseReport.DistrictId + "' AND tbl_treatment.diseaseId = '" + aDiseaseReport.DiseaseId + "' AND date BETWEEN '" + aDiseaseReport.From + "' AND '" + aDiseaseReport.To + "' GROUP BY tbl_district.name,tbl_district.population";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            if (ASqlDataReader.HasRows)
            {
                while (ASqlDataReader.Read())
                {
                    DiseaseReport aReport = new DiseaseReport();
                    aReport.DistrictName = ASqlDataReader["Name"].ToString();
                    aReport.Population = Convert.ToInt32(ASqlDataReader["Population"]);
                    aReport.TotalPatient = Convert.ToInt32(ASqlDataReader["Total"]);
                    aListOfDiseaseReports.Add(aReport);
                }
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return aListOfDiseaseReports;
        }
    }
}
