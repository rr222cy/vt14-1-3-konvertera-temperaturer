using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertTemperatures
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TempTable.Visible = false;
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
                tCell.Text = "Dummy 1";
                TableCell tCell2 = new TableCell();
                tCell2.Text = "Dummy 2";

                tRow.Cells.Add(tCell);
                tRow.Cells.Add(tCell2);
            }
        }
    }
}