﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Video : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string login = Session["Log"].ToString();
    }
    protected void Addvideo_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddVideo.aspx");
    }
}