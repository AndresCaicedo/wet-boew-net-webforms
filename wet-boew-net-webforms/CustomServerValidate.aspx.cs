using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wet_boew_net_webforms
{
    public partial class CustomServerValidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidateCoolness(object sender, ServerValidateEventArgs e)
        {
            if (e.Value == "cool")
            {
                e.IsValid = true;
                SuccessLiteral.Text = "Yay! You typed in the correct word!";
            }
            else
            {
                SampleTextBox.Text = string.Empty;
                e.IsValid = false;
            }
        }
    }
}