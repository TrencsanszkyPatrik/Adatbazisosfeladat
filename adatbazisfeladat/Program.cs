using System;
using System.Collections.Generic;
using System.Globalization;

namespace adatbazisfeladat
{
    
    internal class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("Válassz táblát (1: books, 2: cars, 0: kilépés):");
                string tableChoice = Console.ReadLine();
                if (tableChoice == "0") break;

                ISqlStatements table = tableChoice switch
                {
                    "1" => new TableBooks(),
                    "2" => new TableCars(),
                    _ => null
                };

                if (table == null)
                {
                    Console.WriteLine("Érvénytelen tábla választás! Kérem, válasszon 1 vagy 2 értéket, vagy 0 a kilépéshez.");
                    continue;
                }

                Console.WriteLine("Válassz műveletet:");
                Console.WriteLine("1: Összes rekord lekérdezése");
                Console.WriteLine("2: Rekord lekérdezése ID alapján");
                Console.WriteLine("3: Új rekord hozzáadása");
                Console.WriteLine("4: Rekord módosítása");
                Console.WriteLine("5: Rekord törlése");
                string operation = Console.ReadLine();

                try
                {
                    switch (operation)
                    {
                        case "1":
                            List<object> records = table.GetAllRecords();
                            foreach (var record in records)
                            {
                                var properties = record.GetType().GetProperties();
                                foreach (var prop in properties)
                                {
                                    Console.Write($"{prop.Name}: {prop.GetValue(record)}, ");
                                }
                                Console.WriteLine();
                            }
                            break;
                        case "2":
                            Console.WriteLine("Add meg az ID-t:");
                            if (int.TryParse(Console.ReadLine(), out int id))
                            {
                                var record = table.GetById(id);
                                var properties = record.GetType().GetProperties();
                                foreach (var prop in properties)
                                {
                                    Console.Write($"{prop.Name}: {prop.GetValue(record)}, ");
                                }
                                Console.WriteLine();
                            }
                            else
                            {
                                Console.WriteLine("Érvénytelen ID!");
                            }
                            break;
                        case "3":
                            if (tableChoice == "1")
                            {
                                Console.WriteLine("Add meg a könyv címét:");
                                string title = Console.ReadLine();
                                Console.WriteLine("Add meg a szerzőt:");
                                string author = Console.ReadLine();
                                Console.WriteLine("Add meg a kiadás dátumát (YYYY-MM-DD):");
                                if (DateTime.TryParseExact(Console.ReadLine(), "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime releaseDate))
                                {
                                    var newBook = new { Title = title, Author = author, Release = releaseDate };
                                    var result = table.AddNewRecord(newBook);
                                    Console.WriteLine(result);
                                }
                                else
                                {
                                    Console.WriteLine("Érvénytelen dátum formátum! Használja a YYYY-MM-DD formátumot.");
                                }
                            }
                            else if (tableChoice == "2")
                            {
                                Console.WriteLine("Add meg a márkát:");
                                string brand = Console.ReadLine();
                                Console.WriteLine("Add meg a típust:");
                                string type = Console.ReadLine();
                                Console.WriteLine("Add meg a gyártás dátumát (YYYY-MM-DD):");
                                if (DateTime.TryParseExact(Console.ReadLine(), "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime mDate))
                                {
                                    var newCar = new { Brand = brand, Type = type, MDate = mDate };
                                    var result = table.AddNewRecord(newCar);
                                    Console.WriteLine(result);
                                }
                                else
                                {
                                    Console.WriteLine("Érvénytelen dátum formátum! Használja a YYYY-MM-DD formátumot.");
                                }
                            }
                            break;
                        case "4":
                            Console.WriteLine("Add meg az ID-t:");
                            if (int.TryParse(Console.ReadLine(), out int updateId))
                            {
                                if (tableChoice == "1")
                                {
                                    Console.WriteLine("Add meg az új könyv címét:");
                                    string title = Console.ReadLine();
                                    Console.WriteLine("Add meg az új szerzőt:");
                                    string author = Console.ReadLine();
                                    Console.WriteLine("Add meg az új kiadás dátumát (YYYY-MM-DD):");
                                    if (DateTime.TryParseExact(Console.ReadLine(), "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime releaseDate))
                                    {
                                        var updatedBook = new { Title = title, Author = author, Release = releaseDate };
                                        var result = table.UpdateRecord(updateId, updatedBook);
                                        Console.WriteLine(result);
                                    }
                                    else
                                    {
                                        Console.WriteLine("Érvénytelen dátum formátum! Használja a YYYY-MM-DD formátumot.");
                                    }
                                }
                                else if (tableChoice == "2")
                                {
                                    Console.WriteLine("Add meg az új márkát:");
                                    string brand = Console.ReadLine();
                                    Console.WriteLine("Add meg az új típust:");
                                    string type = Console.ReadLine();
                                    Console.WriteLine("Add meg az új gyártás dátumát (YYYY-MM-DD):");
                                    if (DateTime.TryParseExact(Console.ReadLine(), "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime mDate))
                                    {
                                        var updatedCar = new { Brand = brand, Type = type, MDate = mDate };
                                        var result = table.UpdateRecord(updateId, updatedCar);
                                        Console.WriteLine(result);
                                    }
                                    else
                                    {
                                        Console.WriteLine("Érvénytelen dátum formátum! Használja a YYYY-MM-DD formátumot.");
                                    }
                                }
                            }
                            else
                            {
                                Console.WriteLine("Érvénytelen ID!");
                            }
                            break;
                        case "5":
                            Console.WriteLine("Add meg az ID-t:");
                            if (int.TryParse(Console.ReadLine(), out int deleteId))
                            {
                                var result = table.DeleteRecord(deleteId);
                                Console.WriteLine(result);
                            }
                            else
                            {
                                Console.WriteLine("Érvénytelen ID!");
                            }
                            break;
                        default:
                            Console.WriteLine("Érvénytelen művelet!");
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