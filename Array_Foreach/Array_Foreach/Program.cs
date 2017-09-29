using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_Foreach
{
    class Program
    {
        static void Main(string[] args)
        {
            const int MyArraySize = 6;
            int[] MyNumbers = new int[MyArraySize] { 1, 5, 8, 9, 7, 10 };

            for (int i = 0; i < MyArraySize; i++)
                Console.WriteLine("My Numbers" + (i + 1) + " = " + $"{MyNumbers[i]}");
            Console.WriteLine("\n");

            // Other Option with Foreach
            foreach (int item in MyNumbers)
                Console.WriteLine("My Numbers " + $"{item}"); 


        }
    }
}
