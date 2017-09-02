using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringType
{
    class Program
    {
        static void Main(string[] args)
        {
            // \' \" \\ \0 \a \b \n \r \t \v \f
            //@

            string myString ="Nazar said This is a good course, and i think";
            string myString2 = @" Yes it is";
            string MyString3 = myString + myString2;
            Console.WriteLine("{0}", MyString3);

            Console.WriteLine( "{0}", myString);
            Console.ReadKey();



        }
    }
}
