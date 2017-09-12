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
            // Type1 = (Type1)Type2           // Casting

            byte mySbyte;             // 0 - 255
            int myInt = 350;          // ‭000101011110‬    (350)
            // mySbyte = myInt;       // ‭000011111111‬    (255)
            mySbyte = (byte)myInt;    // 000001011110    (94)

            Console.WriteLine($"My Varialble Int = {myInt}" + "\n");
            Console.WriteLine($"My byte Variable = {mySbyte}" + "\n");
        }
    }
}
