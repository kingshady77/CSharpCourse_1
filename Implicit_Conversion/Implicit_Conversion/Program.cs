using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Implicit_Conversion
{
    class Program
    {
        static void Main(string[] args)
        {
            long myVar = 1000;
            float myVar2 = myVar;

            float myflatVar = 12.5f;
            Console.WriteLine($"{myVar2}");


            char myVar3 = 'G';
            int myIntvar = myVar3;


            Console.WriteLine($"{myIntvar}");
            Console.ReadKey();

        }
    }
}
