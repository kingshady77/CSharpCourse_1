using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nested_If_Statement
{
    class Program
    {
        static void Main(string[] args)
        {
            int myVar1 = 9, myVar2 = 6;

            if (myVar1 == 10)
            {
                Console.WriteLine("myVar1 equal 9");
                if (myVar2 == 7)
                {
                    Console.WriteLine("myVar2 ==7");
                }
                else
                {
                    Console.WriteLine("myVar2 is not equal 7");
                }
            }
            else
            {
                Console.WriteLine("myVar1 not equal 9");
            }

            Console.ReadKey();

        }
    }
}
