

namespace adatbazisfeladat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Kérem az adatbázis nevét"); //library
            string dbName = Console.ReadLine();

            Connect c = new Connect(dbName);
        }
    }
}
