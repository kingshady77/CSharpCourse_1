using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Literal_Charcters
{
    class Program
    {
        static void Main(string[] args)
        {
            int myVar = -100;
            uint myUVar = 1000U;
            ulong myLVar = 1000;

            float myFLVar = 1.5F;
            double myDVar = 100.5d;
            decimal myDecVar = 100.5M;

            Console.WriteLine("{0}\n {1}\n {2}\n", myVar, myUVar, myLVar);

            Console.WriteLine($"{myDecVar}\n{myDVar}\n{myFLVar}\n");

            Console.ReadKey();

        }
    }
}
