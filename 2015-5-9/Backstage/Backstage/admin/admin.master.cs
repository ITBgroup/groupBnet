﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["ID"] == null) Response.Redirect("login.aspx");
        //else
        //{
        //    using (var db = new hackerEntities())
        //    {
        //        int id = Convert.ToInt32(Session["id"]);
        //        username.Text = db.admin.LastOrDefault(a => a.id == id).name.ToString();
        //    }
        //}
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        //Session["ID"] = null;
        //Response.Redirect("login.aspx");
    }
    protected void ArticleClassLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("ArticleClass.aspx");
    }
    protected void ArticleLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("Article.aspx");
    }
    protected void VideoClassLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("VideoClass.aspx");
    }
    protected void VideoLink_Click(object sender, EventArgs e)
    {
        Response.Redirect("Video.aspx");
    }
}
