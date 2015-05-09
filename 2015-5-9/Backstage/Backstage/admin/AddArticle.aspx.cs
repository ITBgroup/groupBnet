using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backstage.admin
{
    public partial class AddArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                using (var db = new hackerEntities())
                {
                    //分类
                    ClassList.DataSource = db.ArticleClass.ToList();
                    ClassList.DataValueField = "id";
                    ClassList.DataTextField = "name";
                    ClassList.DataBind();
                    //ClassList.Items.Insert(0, new ListItem("请选择一个分类", "0"));
                }
            }
        }
        protected void Select_Click(object sender, EventArgs e)
        {
            if (myTitle.Text != "" && Author.Text != ""&&ue.Value!="")
            {
                using (var db = new hackerEntities())
                {
                    var art = new Article();
                    art.Title = myTitle.Text;
                    art.Author = Author.Text;
                    art.Addtime = DateTime.Now.ToString();
                    art.Class = "23";
                    art.Article1 = ue.Value;
                    art.ViewNum = 0;
                    db.Article.Add(art);
                    db.SaveChanges();
                }
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('添加成功');</script>");

            }
            else if (myTitle.Text == "" && Author.Text == "" && ue.Value == "") 
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空\\n作者不能为空\\n文章不能为空');</script>");
            else if (myTitle.Text == "" && Author.Text == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空\\n作者不能为空');</script>");
            else if (myTitle.Text == "" && ue.Value == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空\\n文章不能为空');</script>");
            else if (Author.Text == "" && ue.Value == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('作者不能为空\\n文章不能为空');</script>");
            else if (myTitle.Text == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空');</script>");
            else if (Author.Text == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('作者不能为空');</script>");
            else 
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('文章不能为空');</script>");
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
}