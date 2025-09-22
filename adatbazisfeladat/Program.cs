

namespace adatbazisfeladat
{
    internal class Program
    {
        static void Main(string[] args)
        {

            ISqlStatements sqlStatements = new TableBooks();


            //foreach (var item in sqlStatements.GetAllBooks())
            //{
            //    var book = item.GetType().GetProperties();
            //    Console.WriteLine($"{book[0].Name} = {book[0].GetValue(item)}, {book[1].Name} = {book[1].GetValue(item)}");
            //}

            Console.Write("Kérem a rekord ID-t: ");

            var item = sqlStatements.GetById(Convert.ToInt32(Console.ReadLine()));
            var book = item.GetType().GetProperties();
            Console.WriteLine($"{book[1].Name} = {book[1].GetValue(item)}");

        }
    }
}
