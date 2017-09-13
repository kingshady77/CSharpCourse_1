using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Input_Functions
{
    class Program
    {
        static void Main(string[] args)
        {

            /*
            // ReadLine , Read
            string myName;
            int myVar1, myVar2;

            Console.WriteLine("Please Enter your Name:");
            myName = Console.ReadLine();

            Console.WriteLine("\nPlease Enter Your Number:");
            myVar1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("\nPlease ENter your Entry:");
            myVar2 = Console.Read();

            Console.WriteLine($"\nHello {myName} ");
            Console.WriteLine($"Your Number is {myVar1}");
            Console.WriteLine($"Your Enter is {myVar2}");
            */



            /*          
             Define 4 vaiables
             First Name
             Last Name
             Salary
             TaxRate
             Enter all theses value from the console window and then
             find the salary for 12 month and cut the Tax rate for 
             12 months and print the salary in this form
             Welcome FName, LName
             Your Salary for 12 month is # $
             You paid TaxRate for 12 months #$
             Good Bye.
             */


            String FName, LName;
            Decimal Salary, TaxRate, AnnualSalary, AnnualTaxRate, NetSalary;
            int Month = 12;

            Console.WriteLine("Please Enter your First Name:");
            FName = Console.ReadLine();
            Console.WriteLine("\nPlease Enter your Last Name:");
            LName = Console.ReadLine();
            Console.WriteLine("\nPlease Enter Your Salary:");
            Salary = Convert.ToDecimal(Console.ReadLine());
            Console.WriteLine("\nPlease Enter the Tax Rate:");
            TaxRate = Convert.ToDecimal(Console.ReadLine());
            AnnualSalary = Salary * Month;
            AnnualTaxRate = AnnualSalary* TaxRate;
            NetSalary = AnnualSalary - AnnualTaxRate;

            Console.WriteLine($"\nWelcome {FName} {LName}");
            Console.WriteLine($"Your Net Salary for 12 Months is {NetSalary} $");
            Console.WriteLine($"Your Paid Taxes for 12 Months is {AnnualTaxRate} $");
            Console.WriteLine("Good Bye");
        }
    }
}
