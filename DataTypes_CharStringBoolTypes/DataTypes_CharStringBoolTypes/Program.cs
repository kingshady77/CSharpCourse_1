using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataTypes_CharStringBoolTypes
{
    class Program
    {
        static void Main(string[] args)
        {
            int charMin = Char.MinValue;
            int charMax = Char.MaxValue;

            char myVar = 'G';
            int myvarValue = 'G';

            char myVarVlaue2 = Convert.ToChar(71);

            Console.WriteLine("Min Char = {0} Max Char {1} My Charcter = {2} my Varialble Number = {3} my Conversion value is = {4}", charMin, charMax, myVar, myvarValue, myVarVlaue2 );

            string myString = "This is my varialble";
            Console.WriteLine("My String is {0}", myString);

            bool myBool = false;
            Console.WriteLine("My boolean value is {0}", myBool);
            Console.ReadKey();
        }
    }
}
