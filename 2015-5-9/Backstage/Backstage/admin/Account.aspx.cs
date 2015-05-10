using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backstage.admin
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string login = Session["Log"].ToString();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            using (var db = new hackerEntities())
            {
                string password = Hash.SHA512(PasswordText.Text);
                var ad = new Admin();
                ad.Account = AccountText.Text;
                ad.Password = password;
                ad.Name = NameText.Text;
                db.Admin.Add(ad);
                db.SaveChanges();
            }
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('添加成功');</script>");
        }
    }
}