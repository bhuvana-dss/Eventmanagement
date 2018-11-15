using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication_Creater_Bhuvana
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
          
            hdncustID.Value = (Session["id"] != null ? Session["id"].ToString() : "");
            if (!IsPostBack)
            {

                if (hdnSuccess.Value == "")
                {
                    Divsuc.Attributes["Style"] = "display:none";
                    Divfil.Attributes["Style"] = "display:none";
                    Divfil1.Attributes["Style"] = "display:none";
                    DivLogin.Attributes["Style"] = "display:block";
                    
                }
                else
                {

                    if (hdnSuccess.Value == "Succ1")
                    {
                        Divsuc.Attributes["Style"] = "display:block";
                        
                        DivLogin.Attributes["Style"] = "display:block";
                        Divfil.Attributes["Style"] = "display:none";
                        Divfil1.Attributes["Style"] = "display:none";
                    }
                    else if (hdnSuccess.Value == "Fail1")
                    {
                        Divsuc.Attributes["Style"] = "display:none";
                        
                        DivLogin.Attributes["Style"] = "display:block";
                        Divfil.Attributes["Style"] = "display:block";
                        Divfil1.Attributes["Style"] = "display:none";
                    }
                    else if (hdnSuccess.Value == "Fail11")
                    {
                        Divsuc.Attributes["Style"] = "display:none";
                        
                        DivLogin.Attributes["Style"] = "display:block";
                        Divfil.Attributes["Style"] = "display:none";
                        Divfil1.Attributes["Style"] = "display:block";
                    }
                }
            }
            else
            {
                if (hdnSuccess.Value == "Succ1")
                {
                    Divsuc.Attributes["Style"] = "display:block";
                    
                    DivLogin.Attributes["Style"] = "display:block";
                    Divfil.Attributes["Style"] = "display:none";
                    Divfil1.Attributes["Style"] = "display:none";
                }
                else if (hdnSuccess.Value == "Fail1")
                {
                    Divsuc.Attributes["Style"] = "display:none";
                    
                    DivLogin.Attributes["Style"] = "display:block";
                    Divfil.Attributes["Style"] = "display:block";
                    Divfil1.Attributes["Style"] = "display:none";
                }
            }
        }





        private void createNewTransaction()
        {

            //openConnection();
            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = con;
            //cmd.CommandText = "Insert into  BookingTransaction ([EventID],[CustomerID],[Date],[TranAmt],[BankName],[AccountNo]) values ('1','1','11/13/2018','10000','NBD','123412423424')";
            //cmd.ExecuteNonQuery();
        }


        private void createNewEvent()
        {
            //openConnection();
            //SqlCommand cmd = new SqlCommand();
            //cmd.Connection = con;
            //cmd.CommandText = "Insert into Events ([EventName],[Date],[FromHour],[ToHour],[Paidstaus],[Remarks]) values ('Coffee Event','11/13/2018','11:30','12:30','N','Event Created for Coffee')";
            //cmd.ExecuteNonQuery();
        }

        //protected void submit_Click(object sender, EventArgs e)
        //{

        //    SqlConnection con = null;
        //    DataTable dt = new DataTable();
        //    if (con == null)
        //    {
        //        con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["EventDB"].ConnectionString);
        //        con.Open();
        //    }
        //    else if (con.State.ToString() == "Closed")
        //    {
        //        con.Open();
        //    }

        //    SqlCommand cmd = new SqlCommand();
        //    cmd.Connection = con;
        //    cmd.CommandText = "select * from customer where email='" +lblemail.Text.Trim() + "' and pwd='" + Password1.Value.Trim() + "'";
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(dt);

        //    if (dt.Rows.Count == 0)
        //    {
        //        hdnSuccess.Value = "Fail1";



        //        Divsuc.Attributes["Style"] = "display:none";
        //        DivSignup.Attributes["Style"] = "display:none";
        //        DivLogin.Attributes["Style"] = "display:block";
        //        Divfil.Attributes["Style"] = "display:block";
        //        Divfil1.Attributes["Style"] = "display:none";

        //    }
        //    else
        //    {
        //        cmd = new SqlCommand();
        //        cmd.Connection = con;
        //        cmd.CommandText = "Insert into customer ([FirstName],[MiddleName],[LastName],[Email],[Pwd],[CompanyName],[Tel],[Mob]) values ('" + firstname.Value.Trim() + "','" + "" + "','" + lastname.Value.Trim() + "','" + email.Value.Trim() + "','" + paswd.Value.Trim() + "','" + compname.Value.Trim() + "','" + phonenumber.Value.Trim() + "','" + telephone.Value.Trim() + "')";
        //        cmd.ExecuteNonQuery();
        //        hdnSuccess.Value = "Succ1";

        //        Session["username"] = firstname.Value.Trim();
        //        Session["email"] = email.Value.Trim();
        //        Session["mobile"] = phonenumber.Value.Trim();

        //        Session["pwd"] = paswd.Value.Trim();
        //        cmd.CommandText = "select id from customer where email='" + email.Value.Trim() + "'";
        //        da = new SqlDataAdapter(cmd);
        //        da.Fill(dt);
        //        if (dt.Rows.Count > 0)
        //        {
        //            Session["id"] = dt.Rows[0][0].ToString();
        //        }
        //        Response.Redirect("/WebForm2.aspx");

        //        //Divsuc.Attributes["Style"] = "display:block";
        //        //DivSignup.Attributes["Style"] = "display:none";
        //        //DivLogin.Attributes["Style"] = "display:block";
        //        //Divfil.Attributes["Style"] = "display:none";
        //        //Divfil1.Attributes["Style"] = "display:none";

        //    }
        //}

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            DataTable dt = new DataTable();
            if (con == null)
            {
                con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["EventDB"].ConnectionString);
                con.Open();
            }
            else if (con.State.ToString() == "Closed")
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from customer where email='" + email1.Value.Trim() + "' and pwd='" + Password1.Value.Trim() + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                hdnSuccess.Value = "Fail11";



                Divsuc.Attributes["Style"] = "display:none";
                
                DivLogin.Attributes["Style"] = "display:block";
                Divfil.Attributes["Style"] = "display:none";
                Divfil1.Attributes["Style"] = "display:block";

            }
            else
            {
                Session["username"] =dt.Rows[0]["firstname"].ToString().Trim();
                Session["email"] = dt.Rows[0]["email"].ToString().Trim();
                Session["mobile"] = dt.Rows[0]["mob"].ToString().Trim();

                Session["pwd"] = dt.Rows[0]["pwd"].ToString().Trim();
                Session["id"] = dt.Rows[0]["id"].ToString().Trim();
                hdnSuccess.Value = "Succ11";



                Divsuc.Attributes["Style"] = "display:block";
                
                DivLogin.Attributes["Style"] = "display:block";
                Divfil.Attributes["Style"] = "display:none";
                Divfil1.Attributes["Style"] = "display:none";
                Response.Redirect("/WebForm2.aspx");
            }
        }
    }
}