using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace adatbazisfeladat
{
    public class Connect
    {
        public MySqlConnection Connection;

        private string _host;
        private string _database;
        private string _user;
        private string _password;

        private string ConnenctionString;

        public Connect(string database, string user, string password)
        {
            _host = "localhost";
            _database = database;
            _user = user;
            _password = password;

            ConnenctionString = $"SERVER={_host};DATABASE={_database};UID={_user};PASSWORD={_password};SslMode=None";
            Connection = new MySqlConnection(ConnenctionString);

            try
            {
                Connection.Open();
                Console.WriteLine("Sikeres csatlakozás");
                Connection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }



    }
}
