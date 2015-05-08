using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.CodeDom.Compiler;
using System.CodeDom;

public partial class admin_Article : System.Web.UI.Page
{
    static int n=0;
    static string name = "", author = "";
    static int aclas;
    protected void Page_Load(object sender, EventArgs e)
    {
        PageList.Items.Clear();
        if (!Page.IsPostBack)
        {
            using (var db = new hackerEntities())
            {
                //分类
                AClass.DataSource=db.articleclass.ToList();
                AClass.DataValueField = "id";
                AClass.DataTextField = "name";
                AClass.DataBind();
                AClass.Items.Insert(0,new ListItem("请选择一个分类", "0"));
            }
        }
        //页标
        PagedDataSource pds = new PagedDataSource();
        using (var db = new hackerEntities())
        {
            var query = from it in db.article
                        select it;
            if (name != "") query = query.Where(a => a.title.Contains(name));
            if (author != "") query = query.Where(a => a.author.Contains(author));
            if (aclas != 0) query = query.Where(a => a.@class == aclas);
            query = query.OrderByDescending(a => a.addtime);
            pds.DataSource =query.ToList();
        }
        pds.AllowPaging = true;
        pds.PageSize = 1;//每页显示个数在此！！！！！！！！！！
        int m;
        for (m = 0; pds.IsLastPage != true; m++)
        {
            pds.CurrentPageIndex = m;
        }
        if (m != 0)
        {
            PageList.Items.Insert(0, new ListItem("请选择", "-1"));
            for (int i = 1; i <= m; i++)
            {
                PageList.Items.Insert(i, new ListItem(i.ToString(), i.ToString()));
            }
            PageList.SelectedValue = (n + 1).ToString();
        }
        else PageList.Items.Insert(0, new ListItem("1", "1"));
        if (n == 0) LastPage.Visible = false;
        else LastPage.Visible = true;
        if (n == m-1 || m==0) NextPage.Visible = false;
        else NextPage.Visible = true;
        pds.CurrentPageIndex = n;
        Article.DataSource = pds;
        Article.DataBind();
    }
    protected void Search_Click(object sender, EventArgs e)
    {
        name = SName.Text.Trim();
        author = SAuthor.Text.Trim();
        aclas = Convert.ToInt32(AClass.SelectedItem.Value);
        n = 0;
        Response.Redirect(Request.Url.ToString());
    }
    protected void NextPage_Click(object sender, EventArgs e)
    {
        n++;
        Response.Redirect(Request.Url.ToString());
    }
    protected void LastPage_Click(object sender, EventArgs e)
    {
        n--;
        Response.Redirect(Request.Url.ToString());
    }
    protected void PageList_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (PageList.SelectedItem.Value != "-1")
        {
            n = Convert.ToInt32(PageList.SelectedItem.Value) - 1;
            Response.Redirect(Request.Url.ToString());
        }
    }
}