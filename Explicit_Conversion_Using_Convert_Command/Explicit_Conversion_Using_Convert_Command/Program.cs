using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Explicit_Conversion_Using_Convert_Command
{
    class Program
    {
        static void Main(string[] args)
        {

            /*
            double myDoubleVar = 2500.45D;

            string myStringvar, mySubString;

            // myStringvar = myDoubleVar;          //  Implicity Conversion

            myStringvar = Convert.ToString(myDoubleVar);

            mySubString = myStringvar.Substring(0, 2);

            Console.WriteLine($"My Variable is {myDoubleVar}\n");

            Console.WriteLine("My String Variable is {0} \n\n My SubString Variable is {1}", myStringvar, mySubString);
            Console.ReadKey();

    */

            // Define a float variable and assign the value 45.56f and convert it to string
            // and print the number strat from the float point

            float MyVar = 45.56f;

            string MyString, mySubString;

            MyString = Convert.ToString((MyVar));

            mySubString = MyString.Substring(2,3);

            Console.WriteLine("My Floating Number is {0}\nMy String Number is {1}\nand after Substring is {2}", MyVar, MyString, mySubString);

            Console.ReadKey();


        }
    }
}
