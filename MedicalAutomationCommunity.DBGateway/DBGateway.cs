using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace MedicalAutomationCommunity.DBGateway
{
    public class DBGateway
    {
         private string connectionString = WebConfigurationManager.ConnectionStrings["connectionStringForMedicalAutomationDB"].ConnectionString;

        public string ConnectionString
        {
            get { return connectionString; }
            set { connectionString = value; }
        }

        public SqlConnection ASqlConnection { set; get; }
        public SqlCommand ASqlCommand { set; get; }
        public SqlDataReader ASqlDataReader { set; get; }

        public DBGateway()
        {
            ASqlConnection = new SqlConnection(ConnectionString);
        }
    }
}
