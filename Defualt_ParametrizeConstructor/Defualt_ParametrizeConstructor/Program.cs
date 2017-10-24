using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Defualt_ParametrizeConstructor
{
    class Program
    {
        static void Main(string[] args)
        {
            string myName2 = "Ahmed Ali", myName3 = "Shady";
            int age2 = 30;
            Person myObj = new Person();
            {
                myObj.PrintValues();
            }

            Console.WriteLine();
            Person myObj2 = new Person(myName2, age2);
            {
                myObj2.PrintValues();
            }


            Console.WriteLine();
            Person myObj3 = new Person(myName3);
            {
                myObj3.PrintValues();
            }
        }
    }
}
