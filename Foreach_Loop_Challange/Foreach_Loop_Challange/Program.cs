using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Foreach_Loop_Challange
{
    class Program
    {
        static void Main(string[] args)
        {
            // Define an array of 15 elements and use foreach to iterate 14 elements only
            int i = 0;
            const int ArraySize = 15;
            int[] MyNumbers = new int[ArraySize] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };

            foreach (int item in MyNumbers)
            {
                i++;
                if (i > ArraySize-1)
                    break;
                Console.WriteLine("My Numbers " + " = " + $"{item}");

            }

        }
    }
}
