using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OOP_Training
{
    /// <summary>
    /// The is the parent class
    /// </summary>
    /// <remarks>This is a vehicle class</remarks>
    public class Vehicle
    {
        /// <summary>
        /// This value represent the car company
        /// </summary>
        /// <remarks>The company name</remarks>
        /// <value>Cars Company Names</value>
        public string manufacturer;
        public string model;
        public string color;
        public int enginerSize;

        /// <summary>
        /// color fucntion
        /// </summary>
        /// <remarks>To change the car color</remarks>
        public void painting()
        {
        }

        /// <remarks>To specify the moving apporach</remarks>
        public new void move()
        {
        }
    }
}