using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignments_Operations
{
    class Program
    {
        static void Main(string[] args)
        {
            // =, +=, -=, /=, %=,

            int myVar1 = 7, myVar2 = 3;

           // myVar1 = myVar2;

         //   myVar1 += myVar2;   // myVar1 = myVar1 + myVar2
         //   myVar2 += myVar1;

        //    myVar1 -= myVar2;     // myVar1 = myVar1 - myVar2

            myVar1 %= myVar2;     //myVar1 = myVar1 % myVar2

            Console.WriteLine("The Result is = {0}, The value of Var2 = {1}", myVar1, myVar2);
            Console.ReadKey();
             

        }
    }
}
