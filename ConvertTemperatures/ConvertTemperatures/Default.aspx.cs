using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConvertTemperatures.Models;

namespace ConvertTemperatures
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sets focus on the starting textbox regardless of if the users browser support the autofocus feature.
            StartTemp.Focus();
        }

        protected void ConvertButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Wow, such awesome here.
                TempTable.Visible = true;

                TableRow tRow = new TableRow();
                TempTable.Rows.Add(tRow);

                TableCell tCell = new TableCell();
                tCell.Text = TemperatureConverter.CelsiusToFahrenheit(12).ToString();
                TableCell tCell2 = new TableCell();
                tCell2.Text = TemperatureConverter.FahrenheitToCelsius(12).ToString();

                tRow.Cells.Add(tCell);
                tRow.Cells.Add(tCell2);              
            }
        }
    }
}