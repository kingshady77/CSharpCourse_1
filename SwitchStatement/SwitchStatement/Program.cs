using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SwitchStatement
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
            string myAnimal = "dog";
            switch (myAnimal)
            {
                case "Canary":
                    Console.WriteLine("My animal is canary bird");
                    break;
                case "Cat":
                    Console.WriteLine("My animal is a cat");
                    break;
                case "Camel":
                    Console.WriteLine("My animla is a camel");
                    break;

                default:
                    Console.WriteLine("no one");
                    break;
             }
             */


            int myVar = 15;
            switch (myVar)
            {
                case 10:
                    Console.WriteLine("My Variable nubmer value is 10");
                    break;

                case 7:
                    Console.WriteLine("My Variable number value is 7");
                    break;

                case 4:
                    Console.WriteLine("My Vairable number value is 4");
                    break;

                default:
                    Console.WriteLine("no one");
                    break;
            }


            Console.ReadKey();       

        }
    }
}
