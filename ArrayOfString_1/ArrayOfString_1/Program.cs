using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArrayOfString_1
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] myFullName = { "Shady", "Mohammed", "Al Qudmany" };
            int myArrayLength = myFullName.Length;

            for (int i = 0; i < myArrayLength; i++)
            {
                myFullName[2] = "Ahmed";
                Console.Write($"{myFullName[i]}" + " ");
            }

            //foreach (string myname in myFullName)
            //    Console.Write($"{myname}" + " ");


            Console.WriteLine("\nMy Array Length is " + $"{myArrayLength}");
            Console.ReadKey();

        }
    }
}
