using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MathematicalOperations
{
    class Program
    {
        static void Main(string[] args)
        {
            // + - / * 

            int myvar1 = 15;
            int myvar2 = 10;

            int temp = myvar1 + myvar2;
            int temp2 = myvar2 - myvar1;
            int temp3 = myvar1 % myvar2;
            int temp4 = myvar1 / myvar2;

            // + - 

            int myNegativeVar = -10;
            
            int temp5 = +myvar1;
            int temp6 = -myvar1;
            int temp7 = +myNegativeVar;

            string myStr = "This is wonderful.";
            string myStr2 = "How is it ?";

            string AddString = myStr2 + myStr;

            //Console.WriteLine("The result is {0}  The result2 is {1}  The result3 is {2} The result4 is {3}", temp, temp2, temp3, temp4);
            Console.WriteLine("{0}\n\n{1}\n\n{2}", temp5, temp6, temp7);
            Console.Write("{0}", AddString);
            Console.ReadKey();

        }
    }
}
