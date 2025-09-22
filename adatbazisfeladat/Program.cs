using adatbazisfeladat;

namespace AdatbazisFeladat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ISqlStatements sqlStatements = new TableBooks();
            while (true)
            {
                Console.WriteLine("Válassz táblát:");
                Console.WriteLine("1 - Cars");
                Console.WriteLine("2 - Books");
                Console.WriteLine("0 - Kilépés");
                Console.Write("Választás: ");
                string tablaValasztas = Console.ReadLine();
                if (tablaValasztas == "0") break;
                ISqlStatements tabla = tablaValasztas == "1" ? new TableCars() : new TableBooks();
                while (true)
                {
                    Console.WriteLine("\nMűveletek:");
                    Console.WriteLine("1 - Összes rekord lekérése");
                    Console.WriteLine("2 - Rekord lekérése ID alapján");
                    Console.WriteLine("3 - Új rekord hozzáadása");
                    Console.WriteLine("4 - Rekord törlése");
                    Console.WriteLine("5 - Rekord frissítése");
                    Console.Write("Választás: ");
                    string muveletValasztas = Console.ReadLine();
                    if (muveletValasztas == "0") break;
                    try
                    {
                        switch (muveletValasztas)
                        {
                            case "1":
                                var rekordok = tabla.GetAllRecords();
                                foreach (var rekord in rekordok)
                                    Console.WriteLine(rekord);
                                break;
                            case "2":
                                Console.Write("Add meg az ID-t: ");
                                int azonosito = int.Parse(Console.ReadLine());
                                Console.WriteLine(tabla.GetById(azonosito));
                                break;
                            case "3":
                                if (tabla is TableCars)
                                {
                                    Console.Write("Márka: ");
                                    string marka = Console.ReadLine();
                                    Console.Write("Típus: ");
                                    string tipus = Console.ReadLine();
                                    Console.Write("Gyártási dátum: ");
                                    DateTime gyartasiDatum = DateTime.Parse(Console.ReadLine());
                                    tabla.AddNewRecord(new { Brand = marka, Type = tipus, MDate = gyartasiDatum });
                                    Console.WriteLine("Rekord hozzáadva!");
                                }
                                else // TableBooks
                                {
                                    Console.Write("Cím: ");
                                    string cim = Console.ReadLine();
                                    Console.Write("Szerző: ");
                                    string szerzo = Console.ReadLine();
                                    Console.Write("Kiadási dátum: ");
                                    DateTime kiadasiDatum = DateTime.Parse(Console.ReadLine());
                                    tabla.AddNewRecord(new { Title = cim, Author = szerzo, Release = kiadasiDatum });
                                    Console.WriteLine("Rekord hozzáadva!");
                                }
                                break;
                            case "4":
                                Console.Write("Add meg az ID-t: ");
                                int torlesAzonosito = int.Parse(Console.ReadLine());
                                Console.WriteLine(tabla.DeleteRecord(torlesAzonosito));
                                break;
                            case "5":
                                Console.Write("Add meg az ID-t: ");
                                int frissitesAzonosito = int.Parse(Console.ReadLine());
                                if (tabla is TableCars)
                                {
                                    Console.Write("Új márka: ");
                                    string marka = Console.ReadLine();
                                    Console.Write("Új típus: ");
                                    string tipus = Console.ReadLine();
                                    Console.Write("Új gyártási dátum : ");
                                    DateTime gyartasiDatum = DateTime.Parse(Console.ReadLine());
                                    Console.WriteLine(tabla.UpdateRecord(frissitesAzonosito, new { Brand = marka, Type = tipus, MDate = gyartasiDatum }));
                                }
                                else // TableBooks
                                {
                                    Console.Write("Új cím: ");
                                    string cim = Console.ReadLine();
                                    Console.Write("Új szerző: ");
                                    string szerzo = Console.ReadLine();
                                    Console.Write("Új kiadási dátum: ");
                                    DateTime kiadasiDatum = DateTime.Parse(Console.ReadLine());
                                    Console.WriteLine(tabla.UpdateRecord(frissitesAzonosito, new { Title = cim, Author = szerzo, Release = kiadasiDatum }));
                                }
                                break;
                            default:
                                Console.WriteLine("Érvénytelen választás!");
                                break;
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Hiba történt: {ex.Message}");
                    }
                }
            }
        }
    }
}