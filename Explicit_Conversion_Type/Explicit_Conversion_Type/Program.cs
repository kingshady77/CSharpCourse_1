using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Explicit_Conversion_Type
{
    class Program
    {
        static void Main(string[] args)
        {
            /*

            // Type1 = (Type1)Type2           // Casting

            byte mySbyte;             // 0 - 255
            int myInt = 350;          // ‭000101011110‬    (350)
            // mySbyte = myInt;       // ‭000011111111‬    (255)
            mySbyte = unchecked((byte)myInt);    // 000001011110    (94)
            //mySbyte = checked((byte)myInt);   

            Console.WriteLine($"My Varialble Int = {myInt}" + "\n");
            Console.WriteLine($"My byte Variable = {mySbyte}" + "\n");
                
            */

            // Define a decimal variable and then convert it to an integer variable using
            // either Implicit or Explicit conversion operation and use checked keyword
            // to through an exception of overflow type.


            decimal myVar = 10151515115151500m;
            int myVar2;
            myVar2 = checked((int)myVar);

            Console.WriteLine($"My variable decimal = {myVar}" + "\n");
            Console.WriteLine($"My Variable integer = {myVar2}");
            Console.ReadKey();


        }
    }
}
