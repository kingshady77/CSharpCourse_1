using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace class26
{
    public class square
    {
        private const double pi = 3.4;
        public int id;

        public square(int linea)
        {
            this.Linea = linea;
        }

        public square()
        {
            this.Linea = 5;
        }

        ~square()
        {
            System.Diagnostics.Trace.WriteLine("decostructor");
        }

        /// <summary>
        /// represent square length
        /// </summary>
        /// <remarks>square</remarks>
        /// <value>0</value>
        private int Linea
        {
            get;

            set;
        }

        public int Area()
        {
            return (Linea * Linea);
        }

        public double Length()
        {
            return (Linea * 4*pi);
        }

        /// <summary>
        /// represnet a square line
        /// </summary>
        //public int call2(int x)
        //{
        //    return (Linea * x);
        //}

        public int call(int x)
        {
            return (x * 5);
        }

        public int call(int x, int y)
        {
            return (x * y * 5);

        }

        public int call(int x, int y, int z)
        {
            return (x * y * z * 5);
        }
    }
}