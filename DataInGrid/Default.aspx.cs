using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataInGrid
{
    public partial class _Default : Page
    {
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           Response.Redirect("~/ProductByID.aspx?cat=" + e.CommandArgument);
            

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}