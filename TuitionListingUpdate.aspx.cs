using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LastResortBADPJ
{
    public partial class TuitionListingUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string TutID = (string)Session["Tuition_ID"];
                TutorListing tut = null;
                TutorListing aTut = new TutorListing();

                tut = aTut.getListing(TutID);

                Lbl_TuitionID.Text = TutID;
                Lbl_TutorID.Text = tut.Tutor_ID;
                Tb_TuitionName.Text = tut.Tuition_Name;
                Ddl_TuitionModule.SelectedValue = tut.Tuition_Module;
                Tb_TuitionPrice.Text = tut.Tuition_Price.ToString();
            }
            
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            int result = 0;
            TutorListing tutList = new TutorListing();

            string tuitionID = Lbl_TuitionID.Text;
            string tutorID = Lbl_TutorID.Text;
            string tuitionName = Tb_TuitionName.Text;
            string tuitionModule = Ddl_TuitionModule.SelectedValue;
            string tuitionPrice = Tb_TuitionPrice.Text;

            result = tutList.TuitionListingUpdate(tuitionID, tuitionName, tuitionModule, Decimal.Parse(tuitionPrice));

            if (result > 0)
            {
                Response.Write("<script>alert('Updated Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Update Not Successful')</script>");
            }

            Response.Redirect("TutorViewMyListing.aspx");
        }
    }
}