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
                // Sets the table visible.
                TempTable.Visible = true;

                int startTemp = Int32.Parse(StartTemp.Text);
                int stopTemp = Int32.Parse(StopTemp.Text);
                int tempSteps = Int32.Parse(TempStep.Text);

                // Checking to see which radiobutton that is selected. 0 = C->F, 1= F->C.
                if(TempConvertType.Items[0].Selected)
                {
                    TableHeaderRow tHeader = new TableHeaderRow();
                    tHeader.CssClass = "tempTableHeader";
                    TempTable.Rows.Add(tHeader);

                    TableHeaderCell tCell = new TableHeaderCell();
                    tCell.Text = "°C";
                    TableHeaderCell tCell2 = new TableHeaderCell();
                    tCell2.Text = "°F";

                    tHeader.Cells.Add(tCell);
                    tHeader.Cells.Add(tCell2);

                    // Loop starting and stopping and stepping according to user input.
                    for (int tempNow = startTemp; tempNow <= stopTemp; tempNow += tempSteps)
                    {
                        TableRow bHeader = new TableRow();
                        TempTable.Rows.Add(bHeader);

                        TableCell bCell = new TableCell();
                        bCell.Text = tempNow.ToString();
                        TableCell bCell2 = new TableCell();
                        bCell2.Text = TemperatureConverter.CelsiusToFahrenheit(tempNow).ToString();

                        bHeader.Cells.Add(bCell);
                        bHeader.Cells.Add(bCell2);
                    }
                }
                else if(TempConvertType.Items[1].Selected)
                {
                    TableHeaderRow tHeader = new TableHeaderRow();
                    tHeader.CssClass = "tempTableHeader";
                    TempTable.Rows.Add(tHeader);

                    TableHeaderCell tCell = new TableHeaderCell();
                    tCell.Text = "°F";
                    TableHeaderCell tCell2 = new TableHeaderCell();
                    tCell2.Text = "°C";

                    tHeader.Cells.Add(tCell);
                    tHeader.Cells.Add(tCell2);

                    // Loop starting and stopping and stepping according to user input.
                    for (int tempNow = startTemp; tempNow <= stopTemp; tempNow += tempSteps)
                    {
                        TableRow bHeader = new TableRow();
                        TempTable.Rows.Add(bHeader);

                        TableCell bCell = new TableCell();
                        bCell.Text = tempNow.ToString();
                        TableCell bCell2 = new TableCell();
                        bCell2.Text = TemperatureConverter.FahrenheitToCelsius(tempNow).ToString();

                        bHeader.Cells.Add(bCell);
                        bHeader.Cells.Add(bCell2);
                    }
                }             
            }
        }
    }
}