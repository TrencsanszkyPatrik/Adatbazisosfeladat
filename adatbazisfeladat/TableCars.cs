using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace adatbazisfeladat
{
    internal class TableCars : ISqlStatements
    {
        public object AddNewRecord(object newCar)
        {
            Connect conn = new Connect("library");
            conn.Connection.Open();
            string sql = "INSERT INTO `cars`(`brand`, `type`, `mDate`) VALUES (@brand, @type, @mDate)";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            var car = newCar.GetType().GetProperties();
            cmd.Parameters.AddWithValue("@brand", car[0].GetValue(newCar));
            cmd.Parameters.AddWithValue("@type", car[1].GetValue(newCar));
            cmd.Parameters.AddWithValue("@mDate", car[2].GetValue(newCar));
            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            return car;
        }

        public object DeleteRecord(int id)
        {
            Connect conn = new Connect("library");
            conn.Connection.Open();
            string sql = "DELETE FROM cars WHERE id = @id";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            return new { Message = "Sikeres törlés" };
        }

        public List<object> GetAllRecords()
        {
            List<object> result = new List<object>();
            Connect conn = new Connect("library");
            conn.Connection.Open();
            string sql = "SELECT * FROM cars";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                var car = new
                {
                    Id = dr.GetInt32("id"),
                    Brand = dr.GetString("brand"),
                    Type = dr.GetString("type"),
                    MDate = dr.GetDateTime("mDate")
                };
                result.Add(car);
            }
            conn.Connection.Close();
            return result;
        }

        public object GetById(int id)
        {
            Connect conn = new Connect("library");
            conn.Connection.Open();
            string sql = "SELECT * FROM cars WHERE id = @id";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.Parameters.AddWithValue("@id", id);
            MySqlDataReader dr = cmd.ExecuteReader();
            
                var car = new
                {
                    Id = dr.GetInt32("id"),
                    Brand = dr.GetString("brand"),
                    Type = dr.GetString("type"),
                    MDate = dr.GetDateTime("mDate")
                };

            conn.Connection.Close();
            return car;
        }

        public object UpdateRecord(int id, object updateCar)
        {
            Connect conn = new Connect("library");
            conn.Connection.Open();
            string sql = "UPDATE `cars` SET `brand`=@brand, `type`=@type, `mDate`=@mDate WHERE id = @id";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            var car = updateCar.GetType().GetProperties();
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@brand", car[0].GetValue(updateCar));
            cmd.Parameters.AddWithValue("@type", car[1].GetValue(updateCar));
            cmd.Parameters.AddWithValue("@mDate", car[2].GetValue(updateCar));
            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            return new { Message = "Sikeres frissítés." };
        }
    }
}