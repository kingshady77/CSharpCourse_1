using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Do_While
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            double mySalary = 1000.20, total = 0.0;
            int i = 0;
            do
            {
                total += mySalary;   // total = total + mySalary;
                i++;
                Console.WriteLine("{0} Month Salary = {1}", i, total);
            } while (i < 10);
            Console.WriteLine("Salary value for {0} Months = {1}", i, total);
            Console.ReadKey();
            */


            // find how many years do you need to reach $ 2000 if your salary was $ 1020
            // and the increament percentage was $20 per month and print the result.

            int mySalary = 1020;
            int i = 0;
            do
            {
                i++;
                mySalary += 20;
                Console.WriteLine("{0} Month Salary = {1}", i, mySalary);
             } while (mySalary < 2000); 
            int Yr = i / 12, Mth = i % 12;
            Console.WriteLine("My Salary reach to 2000 $ after {0} Years & {1} Months", Yr, Mth);
            Console.ReadKey();
        }
    }
}
