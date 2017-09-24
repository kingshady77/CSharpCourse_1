using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Enum
{
    class Program
    {
        /*
        enum humanSex: sbyte
        {
            male = 1,
            female = 2
        }
        static void Main(string[] args)
        {
            sbyte humanSbyte;
            string humanGender;
            humanSex myhumanSex = humanSex.male;
            Console.WriteLine($"Human Sex = {myhumanSex}" + "\n");
            humanSbyte = (sbyte)myhumanSex;
            Console.WriteLine($"Human Gender index in = {humanSbyte}" + "\n");
            humanGender = Convert.ToString(myhumanSex);
            Console.WriteLine($"Human Associae=ted with this index = {humanGender}" + "\n");
        
            */



        // Q20/ Define an Enum variable for orientation and print the contents start from index 2

        enum Orientation : sbyte
        {
            north = 2,
            south= 3,
            west = 4,
            east = 5
        }

        static void Main(string[] args)
        {
            Orientation orEast = Orientation.east;
            Console.WriteLine($"First Orientation is {orEast}" + "\n");

            Orientation orWest = Orientation.west;
            Console.WriteLine($"Second Orientation is {orWest}" + "\n");

            Orientation orNorth = Orientation.north;
            Console.WriteLine($"Third Orientation is {orNorth}" + "\n");

            Orientation orSouth = Orientation.south;
            Console.WriteLine($"Forth Orientation is {orSouth}" + "\n");

        }

    }
}