using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Defualt_ParametrizeConstructor
{
    class Person
    {
        string name;
        int age;
        public void PrintValues()
        {
            Console.WriteLine($"{name}, {age}");
        }

        // defualt constructor
        public Person()
        {
            name = "Nizar Al Wattar";
            age = 25;
        }

        // Parametrized constructor
        public Person(string name)
        {
            this.name = name;
            age = 30;
           
        }
        
        // Parametrized constructor
        public Person(string name, int age)
        {
            this.name = name;
            this.age = age;
        }
    }


}
