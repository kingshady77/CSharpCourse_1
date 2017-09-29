using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Array_ForLoop_Challenge
{
    class Program
    {
        static void Main(string[] args)
        {
            // Define an array of int type and find the max value
            int Max = 0;
            const int MyArraySize = 8;
            int[] MyNumbers = new int[MyArraySize] { 1, 2, 3, 4, 5, 6, 7, 8 };

            for (int i =0; i < MyArraySize; i++)
            {
                Console.WriteLine("My Numbers" + (i + 1) + "=" + ($"{MyNumbers[i]}"));
            }
            Max = MyNumbers.Max();
            Console.WriteLine($"\nThe Max value is {Max}");
            //Console.WriteLine("\nMy Max Value:" + Max);

        }
    }
}
