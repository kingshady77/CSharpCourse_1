using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace If_Statements
{
    class Program
    {
        static void Main(string[] args)
        {
            /*   int myVar = 10;

               if (myVar == 10)
               {
                   myVar = 11;
                   Console.WriteLine("{0}", myVar); 
                   Console.WriteLine("My Variable equal 10");
               }
               else
                   Console.WriteLine("My Variable is not equal 10");
                   */

            /*

            int myVar1 = 9, myVar2 = 7;

            if ((myVar1 <= 7) || (myVar2 >= 10))
            {
                Console.WriteLine("The condition is True");
            }
            else
            {
                Console.WriteLine("My Variables conditions is false");
            }
            */


            int myVar1 = 9;
            string myResult;

            if (myVar1 <10)
            {
                myResult = "Less than 10";
                Console.WriteLine(myResult);
            }
            if (myVar1 >10)
            {
                myResult = "Greater than 10";
                Console.WriteLine(myResult);
            }
            if (myVar1 == 10)
            {
                myResult = "Equal 10";
                Console.WriteLine(myResult);
            }

            Console.ReadKey();

        }
    }
}
