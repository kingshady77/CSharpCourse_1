using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Break_Loop_BreakCommand
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            for (int i = 0; i <= 5; i++)
            {
                Console.WriteLine("Hello Nezar");
                if (i > 2)
                    break;
                for (int j = 0; j <= 4; j++)
                {
                    Console.WriteLine("\tHello World");
                }
                Console.WriteLine("\n");
            }
            Console.ReadKey();
            */



            // Creat Multiplicarion table from number in the range 1-10
            // and stop the loop in the multiplication table for the number 7 from 1 - 10

            int product;
            for (int i = 0; i <= 10; i++)
            {
                if (i > 7)
                    break;
                for (int j = 1; j <= 10; j++)
                {
                    product = i * j;
                    Console.WriteLine("{0} * {1} = {2}", i, j, product);
                }
                Console.WriteLine("\n");
            }
            Console.ReadKey();
        }
    }
}

