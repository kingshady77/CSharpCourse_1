using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Break_Loop_BreakContinue
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            for (int i = 0; i <= 5; i++)
            {
                if (i > 2)
                    continue;

                for (int j =0; j <=4; j++)
                {
                    Console.WriteLine("\tHello World");
                }
                Console.WriteLine("Hello Nezar");

                Console.WriteLine("\n");
            }
            Console.ReadKey();
            */

            int product;
            for (int i =1; i <=10; i++)
            {
                Console.WriteLine("i = {0} ", i);
                if (i > 7)
                    continue;

                for (int j=1; j<=10; j++)
                {
                    product = i * j;
                    Console.WriteLine("{0} * {1} = {2}", i ,j, product);
                }
                Console.WriteLine("\n");
            }
            Console.ReadKey();
        }
    }
}
