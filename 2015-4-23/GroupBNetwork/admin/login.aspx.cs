using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LoginClick(object sender, EventArgs e)
    {
        Response.Redirect("article.aspx");
    }
    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../index.aspx");
    }
}