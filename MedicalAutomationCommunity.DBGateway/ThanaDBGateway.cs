using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MedicalAutomationCommunity.DAO;

namespace MedicalAutomationCommunity.DBGateway
{
    public class ThanaDBGateway:DBGateway
    {
        public List<Thana> GetThanasByDistrictId(int districtId)
        {
            string query = "SELECT *FROM tbl_thana WHERE district_id='" + districtId + "' ";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();

            List<Thana> thanaList = new List<Thana>();

            while (ASqlDataReader.Read())
            {

                Thana aThana = new Thana();
                aThana.Id = (int)ASqlDataReader["id"];
                aThana.Name = ASqlDataReader["name"].ToString();
                aThana.DistrictId = Convert.ToInt32(ASqlDataReader["district_id"]);

                thanaList.Add(aThana);
            }
            ASqlDataReader.Close();
            ASqlConnection.Close();

            return thanaList;
        }
        public Thana Find(int id)
        {
            Thana aThana = new Thana();
            string query = "SELECT *FROM tbl_thana WHERE id = '" + id + "'";
            ASqlConnection.Open();
            ASqlCommand = new SqlCommand(query, ASqlConnection);
            ASqlDataReader = ASqlCommand.ExecuteReader();
            while (ASqlDataReader.Read())
            {

                aThana.Id = Convert.ToInt32(ASqlDataReader["id"]);
                aThana.Name = ASqlDataReader["name"].ToString();

            }
            ASqlDataReader.Close();
            ASqlConnection.Close();
            return aThana;
        }
    }
}
