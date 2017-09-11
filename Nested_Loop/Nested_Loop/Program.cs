using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nested_Loop
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
           for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("Hello Nezar");
                for (int j=0; j < 2; j++)
                {
                    Console.WriteLine("\t Hello World");
                }
                Console.WriteLine("\n");
            }
            Console.ReadKey();
            */

            // Creat Multiplication table from 1 - 5 for all numbers    <= 10
            // Creat Multiplication table from 1 - 6 for even numbers   <= 10
            // Creat Multiplication table from 1 - 5 for odd numbers    <= 10

            int product;
            Console.WriteLine("Multiplication table from 1 - 5 for all numbers\n");
            for (int i = 1; i <=5; i++)
            {
                for (int k = 1; k <=10; k++)
                {
                    product = i * k;
                    Console.WriteLine("{0} * {1} = {2}", i, k, product);
                }
                Console.WriteLine("\n");
            }

            Console.WriteLine("Multiplication table from 1 - 6 for even numbers\n");
            for (int i = 2; i <= 6; i++)
            {
                for (int k = 1; k <= 10; k +=2)
                {
                    product = i * k;
                    Console.WriteLine("{0} * {1} = {2}", i, k, product);
                }
                Console.WriteLine("\n");
            }

            Console.WriteLine("Multiplication table from 1 - 6 for odd numbers\n");
            for (int i = 1; i <= 6; i++ )
            {
                for (int k = 0; k <= 10; k+=2)
                {
                    product = i * k;
                    Console.WriteLine("{0} * {1} = {2}", i, k, product);
                }
                Console.WriteLine("\n");
            }




        }
    }
}
