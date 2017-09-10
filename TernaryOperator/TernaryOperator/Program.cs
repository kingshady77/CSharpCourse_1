using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TernaryOperator
{
    class Program
    {
        static void Main(string[] args)
        {
            //int myVar = 9;

            ////string myResult = (myVar < 8) ? "Less than 8" : "Greater than 8";
            ////Console.WriteLine("My Variable Result is {0}", myResult);
            ////Console.ReadKey();   

            string myName = "nazar", result;
            result = (myName.Equals("Nazar")) ? "Yes" : "No";
            Console.WriteLine("My variable Result is {0}", result);
            Console.ReadKey();

        }
    }
}
