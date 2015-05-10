using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backstage.admin
{
    public partial class AddVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string login = Session["Log"].ToString();
            if (!Page.IsPostBack)
            {
                using (var db = new hackerEntities())
                {
                    //分类
                    ClassList.DataSource = db.VideoClass.ToList();
                    ClassList.DataValueField = "id";
                    ClassList.DataTextField = "name";
                    ClassList.DataBind();
                    //ClassList.Items.Insert(0, new ListItem("请选择一个分类", "0"));
                }
            }
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            if (myTitle.Text != ""&& ue.Value != "")
            {
                using (var db = new hackerEntities())
                {
                    var vid = new Video();
                    vid.Title = myTitle.Text;
                    vid.Author = "";
                    vid.AddTime = DateTime.Now.ToString();
                    vid.Class = ClassList.Text;
                    vid.Url = ue.Value;
                    vid.ViewNum = 0;
                    db.Video.Add(vid);
                    db.SaveChanges();
                }
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('添加成功');</script>");

            }
            else if (myTitle.Text == "" && ue.Value == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空\\n视频不能为空');</script>");
            else if (myTitle.Text == "")
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('标题不能为空');</script>");
            else
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('视频不能为空');</script>");
        }
        
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
        }

        protected void ArticleClassLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArticleClass.aspx");
        }
        protected void ArticleLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Article.aspx");
        }
        protected void VideoLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("Video.aspx");
        }

        protected void VideoClassLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("VideoClass.aspx");
        }

      
    }
}