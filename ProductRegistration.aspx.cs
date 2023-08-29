using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAssignment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                lblMsg.Visible = false;
                TxtCategory.Items.Add("AC");
                TxtCategory.Items.Add("Washing Machine");
                TxtCategory.Items.Add("Fridge");
                TxtCategory.Items.Add("Fan");
            }
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Registration Successful!!!";
            lblMsg.Text += " <br>Product Name : " + TxtName.Text;
            lblMsg.Text += " <br>Category : " + TxtCategory.Text;
            lblMsg.Text += " <br>Price : " + TxtPrice.Text;
            lblMsg.Text += "<br> Product Description : " + TxtDesc.Text;
            lblMsg.Text += "<br> Release Date :" + TxtCal.SelectedDate;
            lblMsg.Visible = true;
        }
    }
}