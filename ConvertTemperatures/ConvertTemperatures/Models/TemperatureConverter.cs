using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConvertTemperatures.Models
{
    static class TemperatureConverter
    {
        // Auto implemented properties.
        private static int Celsius { get; set; }
        private static int Fahrenheit { get; set; }

        // Method for converting Celsius to Fahrenheit, rounding the result to closest even number.
        public static int CelsiusToFahrenheit(int degreesC)
        {
            Celsius = degreesC;
            Fahrenheit = Convert.ToInt32(Celsius * 1.8 + 32);
            
            return Fahrenheit;
        }

        // Method for converting Fahrenheit to Celsius, rounding the result to closest even number.
        public static int FahrenheitToCelsius(int degreesF)
        {
            Fahrenheit = degreesF;
            Celsius = Convert.ToInt32((Fahrenheit - 32) * 5/9);
            
            return Celsius;
        }
    }
}