using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;

namespace MedicalAutomationCommunity.DBGateway
{
    public class DistrictDBGateway:DBGateway
    {
        public List<District> GetAll()
        {
            string query = "SELECT *FROM tbl_district";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();

            List<District> districtList = new List<District>();

            while (ASqlDataReader.Read())
            {

                District aDistrict = new District();
                aDistrict.Id = (int)ASqlDataReader["id"];
                aDistrict.Name = ASqlDataReader["name"].ToString();

                districtList.Add(aDistrict);
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();

            return districtList;
        }

        public District Find(int id)
        {
            District aDistrict = new District();
            string query = "SELECT *FROM tbl_district WHERE id = '" + id + "'";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            while (ASqlDataReader.Read())
            {

                aDistrict.Id = Convert.ToInt32(ASqlDataReader["id"]);
                aDistrict.Name = ASqlDataReader["name"].ToString();

            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return aDistrict;
        }
    }
}
