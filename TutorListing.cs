using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LastResortBADPJ
{
    public class TutorListing
    {
        string _connStr = ConfigurationManager.ConnectionStrings["CwADBContext"].ConnectionString;

        private string _tuitionID = null;
        private string _tutorID = null;
        private string _tuitionName = "";
        private string _tuitionModule = "";
        private decimal _tuitionPrice = 0;

        public TutorListing()
        {
        }

        public TutorListing(string tuitionID, string tutorID, string tuitionName, string tuitionModule, decimal tuitionPrice)
        {
            _tuitionID = tuitionID;
            _tutorID = tutorID;
            _tuitionName = tuitionName;
            _tuitionModule = tuitionModule;
            _tuitionPrice = tuitionPrice;
        }

        public string Tuition_ID
        {
            get { return _tuitionID; }
            set { _tuitionID = value; }
        }

        public string Tutor_ID
        {
            get { return _tutorID; }
            set { _tutorID = value; }
        }

        public string Tuition_Name
        {
            get { return _tuitionName; }
            set { _tuitionName = value; }
        }

        public string Tuition_Module
        {
            get { return _tuitionModule; }
            set { _tuitionModule = value; }
        }

        public decimal Tuition_Price
        {
            get { return _tuitionPrice; }
            set { _tuitionPrice = value; }
        }

        public int TuitionListingInsert()
        {
            int result = 0;

            string queryStr = "INSERT INTO Tuition(Tuition_ID, Tutor_ID, Tuition_Module, Tuition_Name, Tuition_Price)" + "VALUES(@Tuition_ID, @Tutor_ID, @Tuition_Module, @Tuition_Name, @Tuition_Price)";

            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@Tuition_ID", this.Tuition_ID);
            cmd.Parameters.AddWithValue("@Tutor_ID", this.Tutor_ID);
            cmd.Parameters.AddWithValue("@Tuition_Module", this.Tuition_Module);
            cmd.Parameters.AddWithValue("@Tuition_Name", this.Tuition_Name);
            cmd.Parameters.AddWithValue("@Tuition_Price", this.Tuition_Price);

            conn.Open();
            result += cmd.ExecuteNonQuery();
            conn.Close();

            return result;
        }

        public int TuitionLisingDelete(string TutID)
        {
            string queryStr = "DELETE FROM Tuition WHERE Tuition_ID=@TutID";
            SqlConnection conn = new SqlConnection(_connStr);
            SqlCommand cmd = new SqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("@TutID", TutID);

            conn.Open();
            int nofRow = 0;
            nofRow = cmd.ExecuteNonQuery();
            conn.Close();

            return nofRow;
        }

    }
}