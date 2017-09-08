using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Increaments_Decreaments
{
    class Program
    {
        static void Main(string[] args)
        {

            int myVar1 = 2;
            int temp1 = ++myVar1;
            Console.WriteLine("{0}", temp1);

            // Excercises
            int myVar2 = 7;
            int myVar3 = 2;
            int temp2 = myVar2-- / ++myVar3;
            Console.WriteLine("{0}", temp2);


            Console.ReadKey();
        }
    }
}
