

namespace adatbazisfeladat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Kérem az adatbázis nevét");
            string dbName = Console.ReadLine();
            Console.WriteLine("Kérem a felhasználó nevet");
            string userName = Console.ReadLine();
            Console.WriteLine("Kérem a felhasználó jelszavát");
            string userPass = Console.ReadLine();

            Connect c = new Connect(dbName, userName, userPass);
        }
    }
}
