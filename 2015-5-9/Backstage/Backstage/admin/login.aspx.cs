using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backstage.admin
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //加载时判断是否存在Cookies,存在则读取  
            HttpCookie login = Request.Cookies["Login"]; //获取客户端返回的Cookies中名称为Login的Cookie对象  
            if (login != null)
            {
                txtID.Value = login["userName"]; //读取Login中属性值  
            }  
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            using (var db = new hackerEntities())
            {
                string password = Hash.SHA512(txtPassword.Value);
                var query = from ad in db.Admin select ad;
                var qu = query.SingleOrDefault(p => p.Name == txtID.Value && p.Password == password);
                if (qu != null)
                {
                    //HttpCookie cookie = new HttpCookie["sad"];
                    //cookie.Value = "灌水小鱼";
                    //Response.AppendCookie(cookie);

                    ////取出Cookie值也很简单

                    //HttpCookie cookie2 = Request.Cookies["aspcn"];
                    //cookieValue = cookie.Value;

                    ////在一个Cookie中储存多个信息，那也没有问题。比如在名为aspcn的cookie下加多个信息

                    //HttpCookie cookie = new HttpCookie("aspcn");
                    //cookie.Values.Add("webmaster","灌水小鱼");
                    //cookie.Values.Add("writer","beige");
                    //cookie.Values.Add("LinkColor","blue");
                    //Response.AppendCookie(cookie);
                    Session["Log"]="True";
                    Response.Redirect("Index.aspx");
                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('用户不存在');</script>");
            }
        }

        protected void BtnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
    }
}