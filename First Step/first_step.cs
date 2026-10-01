using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DB_Connect
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString =
            "Data Source=COMP11A1\\SQLEXPRESS;" +
            "Initial Catalog=DB1;" +
            "Integrated Security=True;" +
            "TrustServerCertificate=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {


                connection.Open();

                string sql_command = "SELECT TOP 10 * FROM products";
                SqlCommand command = new SqlCommand(sql_command, connection);



                using (SqlConnection reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int id = reader.GetInt32(0);
                        string name = reader.GetString(1);
                        string product_number = reader.GetString(2);
                        decimal cost = reader.GetDecimal(3);
                        decimal list_price = reader.GetDecimal(4);
                        decimal diff_price = reader.GetDecimal(5);
                        DateTime delivery_date = reader.GetDateTime(6);

                        Console.WriteLine($" Индентификатор{id}, Имя{name}, Номер{product_number},  Стоимость{cost}, Список цен{list_price},  Разница цена{diff_price}, Дата поставки{delivery_date}");

                    }

                }
            }
        
            Console.WriteLine("sosanie");
            Console.ReadKey();
        }
    }
}
