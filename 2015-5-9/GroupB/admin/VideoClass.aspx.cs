using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_VideoClass1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //绑定数据; 
            using (var db = new hackerEntities())
            {
                arclass1.DataSource = (from it in db.videoclass1
                                       where it.@class == 1
                                       select it).ToList();
                arclass1.DataBind();
                arclass2.DataSource = (from it in db.videoclass1
                                       where it.@class == 2
                                       select it).ToList();
                arclass2.DataBind();
                arclass3.DataSource = (from it in db.videoclass1
                                       where it.@class == 3
                                       select it).ToList();
                arclass3.DataBind();
            }
        }
    }
    protected void AddClass_Click(object sender, EventArgs e)
    {

        if (CName.Text.Trim() == "")
        {
            Response.Write("<script>alert('类名不能为空')</script>");
        }
        else if (AClass.SelectedItem.Text == "请选择一个专题")
        {
            Response.Write("<script>alert('请选择一个专题')</script>");
        }
        else
        {
            using (var db = new hackerEntities())
            {
                var ac = new videoclass1();
                ac.name = CName.Text;
                ac.@class = Convert.ToInt32(AClass.SelectedItem.Value);
                db.videoclass1.Add(ac);
                db.SaveChanges();
            }
            Response.Write("<script>alert('添加成功');window.location.href='VideoClass.aspx';</script>");
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
                    var Dc = new videoclass1();
                    Dc = db.videoclass1.SingleOrDefault(a => a.id == DeletedID);
                    db.videoclass1.Remove(Dc);
                    db.SaveChanges();
                }
                result = 1;
            }
            catch { }
            if (result == 1)
                Response.Write("<script>alert('删除成功');window.location.href='VideoClass.aspx';</script>");
            else
                Response.Write("<script>alert('删除失败');window.location.href='VideoClass.aspx';</script>");
        }
    }
}