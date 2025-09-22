using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace adatbazisfeladat
{
    internal interface ISqlStatements
    {
        List<object> GetAllRecords();
        object GetById(int id);
        object AddNewRecord(object newBook);


    }
}
