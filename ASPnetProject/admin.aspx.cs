using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ASPnetProject
{
    public partial class admin : System.Web.UI.Page
    {
        public string st = " ";
        public string msg = " ";
        public string sqlSelect = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "database.mdf";
            string tableName = "userlist";
            sqlSelect = "SELECT * FROM " + tableName;
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0)
            {
                msg = "No accounts";
            }
            else
            {
                st += "<tr><th class='border border-black'>Email</th><th class='border border-black'>Username</th><th class='border border-black'>Password</th><th class='border border-black'>Gender</th></tr>";
                for (int i = 0; i < length; i++)
                {
                    st += "<tr>";
                    st += "<td class='border border-black'>" + table.Rows[i]["username"] + "</td>";
                    st += "<td class='border border-black'>" + table.Rows[i]["eMail"] + "</td>";
                    st += "<td class='border border-black'>" + table.Rows[i]["password"] + "</td>";
                    st += "<td class='border border-black'>" + table.Rows[i]["gender"] + "</td>";
                    st += "</tr>";
                }
                msg = "accounts: " + length;
            }
        }
    }
}