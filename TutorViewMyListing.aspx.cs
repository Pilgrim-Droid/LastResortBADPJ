using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LastResortBADPJ
{
    public partial class TutorViewMyListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                Response.Redirect("test.aspx");
            }
            if (e.CommandName == "Delete")
            {
                int result = 0;
                TutorListing Tut = new TutorListing();
                string TutID = e.CommandArgument.ToString();
                result = Tut.TuitionLisingDelete(TutID);

                if (result > 0)
                {
                    Response.Write("<script>alert('Deleted Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Delete Not Successful')</script>");
                }

                Response.Redirect("TutorViewMyListing.aspx");

            }
        }
    }
}