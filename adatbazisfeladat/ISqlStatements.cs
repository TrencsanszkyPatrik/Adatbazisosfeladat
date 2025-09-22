using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace adatbazisfeladat
{
    internal interface ISqlStatements
    {
        List<object> GetAllBooks();
        object GetById(int id);


    }
}
