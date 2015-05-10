using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backstage.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string login = Session["Log"].ToString();
            if (!Page.IsPostBack)
            {
                //绑定数据; 
                using (var db = new hackerEntities())
                {
                    arclass1.DataSource = (from it in db.ArticleClass
                                           where it.Class == 1
                                           select it).ToList();
                    arclass1.DataBind();
                    arclass2.DataSource = (from it in db.ArticleClass
                                           where it.Class == 2
                                           select it).ToList();
                    arclass2.DataBind();
                    arclass3.DataSource = (from it in db.ArticleClass
                                           where it.Class == 3
                                           select it).ToList();
                    arclass3.DataBind();
                }
            }
        }
        protected void AddClass_Click(object sender, EventArgs e)
        {

            if (CName.Text.Trim() == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('类名不能为空');</script>");
            }
            else if (AClass.SelectedItem.Text == "请选择一个专题")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('请选择一个专题');</script>");
            }
            else
            {
                using (var db = new hackerEntities())
                {
                    var ac = new ArticleClass();
                    ac.Name = CName.Text;
                    ac.Class = Convert.ToInt32(AClass.SelectedItem.Value);
                    db.ArticleClass.Add(ac);
                    db.SaveChanges();
                }
                using (var db = new hackerEntities())
                {
                    arclass1.DataSource = (from it in db.ArticleClass
                                           where it.Class == 1
                                           select it).ToList();
                    arclass1.DataBind();
                    arclass2.DataSource = (from it in db.ArticleClass
                                           where it.Class == 2
                                           select it).ToList();
                    arclass2.DataBind();
                    arclass3.DataSource = (from it in db.ArticleClass
                                           where it.Class == 3
                                           select it).ToList();
                    arclass3.DataBind();
                }
                Response.Write("<script>alert('添加成功')</script>");

            }
        }
        protected void delete(object sender, RepeaterCommandEventArgs e)
        {
            string id = e.CommandName.ToString();
            if (id == "delete")
            {
                int DeletedID = Convert.ToInt32(e.CommandArgument);
                int result = 0;
                try
                {
                    using (var db = new hackerEntities())
                    {
                        var Dc = new ArticleClass();
                        Dc = db.ArticleClass.SingleOrDefault(a => a.ID == DeletedID);
                        db.ArticleClass.Remove(Dc);
                        db.SaveChanges();
                    }
                    result = 1;
                }
                catch { }
                if (result == 1)
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('删除成功');</script>");
                else
                ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('删除失败');</script>");
                using (var db = new hackerEntities())
                {
                    arclass1.DataSource = (from it in db.ArticleClass
                                           where it.Class == 1
                                           select it).ToList();
                    arclass1.DataBind();
                    arclass2.DataSource = (from it in db.ArticleClass
                                           where it.Class == 2
                                           select it).ToList();
                    arclass2.DataBind();
                    arclass3.DataSource = (from it in db.ArticleClass
                                           where it.Class == 3
                                           select it).ToList();
                    arclass3.DataBind();
                }
            }
        }
    }
}