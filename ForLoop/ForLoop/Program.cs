using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ForLoop
{
    class Program
    {
        static void Main(string[] args)
        {
            int mySalary = 1000, total = 0;
            for (int i = 1; i <= 12; i++)
            {
                total += mySalary;
                Console.WriteLine("{0} Month Salary = {1}", i, total);
            }
            Console.ReadKey();
        }
    }
}
