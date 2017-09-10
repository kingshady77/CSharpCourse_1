using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WhileLoop
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            double mySalary = 1020.30, total = 0.0;
            int i = 0;
            while (i < 15)
            {
                total += mySalary;
                i++;
                Console.WriteLine("{0} Month Salary = {1} ", i, total);
            }
            Console.WriteLine("My Total Salay for {0} Months = {1}", i, total);
            Console.ReadKey();
            */

            //Find how many exercises do you need to reach 83 kg if your weight was 
            // 120 kg and each excercise will make you lose 1 kg and print teh result.

            int myWeight = 120;
            int i = 0;
             while (myWeight > 83)
            {
                myWeight --;
                i++;
                Console.WriteLine("{0} Numbers of Excersies to reach {1} kg", i, myWeight);        
            }
            Console.WriteLine("Total Numbers of Excercises to Reach 83 Kg Shall be {0}", i);
            Console.ReadKey();
             
        }
    }
}
