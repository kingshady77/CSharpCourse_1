using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArrayOfString
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] MyFullName = { "Shady ", "Mohammed ", "Al Qudmany " };
            int MyArrayLength = MyFullName.Length;
            
            foreach(string item in MyFullName)
            {     
            Console.Write($"{item}");
            }
            Console.WriteLine("\nMy Array Length is " + $"{ MyArrayLength}");

        }
    }
}
