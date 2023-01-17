using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LastResortBADPJ
{
    public partial class TutorCreateListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_CreateTuitionListing_Click(object sender, EventArgs e)
        {
            int result = 0;

            string TuitionModule = null;
            if (Ddl_TuitionModule.SelectedIndex > -1)
            {
                TuitionModule = Ddl_TuitionModule.SelectedItem.Text;
            }

            TutorListing Listing = new TutorListing(Tb_TuitionID.Text, Tb_TutorID.Text, Tb_TutitionName.Text, TuitionModule, decimal.Parse(Tb_TuitionPrice.Text));
            result = Listing.TuitionListingInsert();

            if (result > 0)
            {
                Response.Write("<script>alert('Insert Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Insert Not Successful')</script>");
            }
        }
    }
}