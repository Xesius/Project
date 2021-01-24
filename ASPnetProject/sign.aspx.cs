using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPnetProject
{
    public partial class sign : System.Web.UI.Page
    {
        public string table = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Form["sumbit"] != null)
            {
                table += "<table class='border-2 mx-auto border-black'>";
                table += "<tr><th colspan = '2' > Data: </th></tr>";
                string umail = Request.Form["mail"];
                string upass = Request.Form["password"];
                string username = Request.Form["username"];
                string ugender = Request.Form["gender"];
                table += "<tr><td>Email:</td><td>" + umail + "</td></tr>";
                table += "<tr><td>Username:</td><td>" + username + "</td></tr>";
                table += "<tr><td>Password:</td><td>" + upass + "</td></tr>";
                table += "<tr><td>Gender:</td><td>" + ugender + "</td></tr>";
                table += "</table>";
            }
        }
    }
}