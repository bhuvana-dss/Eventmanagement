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
    public partial class WebForm2 : System.Web.UI.Page
    {
        public SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = (Session["username"] != null ? Session["username"].ToString() : "User Session Expired Login Again");
            lblMobile.Text = (Session["mobile"] != null ? Session["mobile"].ToString() : "");
            lblemail.Text = (Session["email"] != null ? Session["email"].ToString() : "");
            hdncustID.Value= (Session["id"] != null ? Session["id"].ToString() : "");
            hdnSuccess.Value = (lblemail.Text == "" ? "Fail1" : "");
            
            if (!IsPostBack)
            {
                loadGrid();


                if (hdnSuccess.Value == "")
                {
                    Divsuc.Attributes["Style"] = "display:none";
                    Divfil.Attributes["Style"] = "display:none";
                    Divfil1.Attributes["Style"] = "display:none";
                    DivSignup.Attributes["Style"] = "display:block";
                }
                else
                {
                    if (hdnSuccess.Value == "Succ1")
                    {
                        Divsuc.Attributes["Style"] = "display:block";
                        DivSignup.Attributes["Style"] = "display:none";
                       
                        Divfil.Attributes["Style"] = "display:none";
                        Divfil1.Attributes["Style"] = "display:none";
                    }
                    else if (hdnSuccess.Value == "Fail1")
                    {
                        

                        Divsuc.Attributes["Style"] = "display:none";
                        DivSignup.Attributes["Style"] = "display:none";

                        Divfil.Attributes["Style"] = "display:block";
                        Divfil1.Attributes["Style"] = "display:none";
                        

                    }
                    else if (hdnSuccess.Value == "Fail11")
                    {
                        Divsuc.Attributes["Style"] = "display:none";
                        DivSignup.Attributes["Style"] = "display:block";
                      
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
                    DivSignup.Attributes["Style"] = "display:none";
                 
                    Divfil.Attributes["Style"] = "display:none";
                    Divfil1.Attributes["Style"] = "display:none";
                }
                else if (hdnSuccess.Value == "Fail1")
                {
                   


                    Divsuc.Attributes["Style"] = "display:none";
                    DivSignup.Attributes["Style"] = "display:none";

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
            cmd.CommandText = "select * from events where date='" +eventdate.Value.Trim()  + "' and fromhour >='" + feventtime.Value.Trim() + "' and  tohour <='" + teventtime.Value.Trim() + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            if (dt.Rows.Count!= 0 )
            {
                hdnSuccess.Value = "Fail1";



                Divsuc.Attributes["Style"] = "display:none";
                DivSignup.Attributes["Style"] = "display:none";
                
                Divfil.Attributes["Style"] = "display:block";
                Divfil1.Attributes["Style"] = "display:none";
                Response.Redirect("/WebForm2.aspx");
            }
            else
            {
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Insert into Events ([CusID],[EventName],[Date],[FromHour],[ToHour],[Paidstaus],[Remarks]) values ('" + Session["id"].ToString().Trim() + "', '" + eventname.Value.ToString().Trim() + "', '" + eventdate.Value.ToString().Trim() + "', '" + feventtime.Value.ToString().Trim() + "','" + teventtime.Value.ToString().Trim() + "','N','" + remarks.Value.ToString().Trim() + "')";
                cmd.ExecuteNonQuery();
                hdnSuccess.Value = "Succ1";

              
                Response.Redirect("/WebForm2.aspx");

              Divsuc.Attributes["Style"] = "display:block";
                //DivSignup.Attributes["Style"] = "display:none";
                //DivLogin.Attributes["Style"] = "display:block";
                //Divfil.Attributes["Style"] = "display:none";
                //Divfil1.Attributes["Style"] = "display:none";

            }
        }

        private void loadGrid() {
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
            cmd.CommandText = "select  [eventname] as [Event Name],[date] as [Event Date],[fromhour] as [Starts at],[tohour] as [Ends at],[Paidstaus] as [Paid Status],[remarks] as [Remarks] from events where cusid='" + Session["id"].ToString().Trim() + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gridView.DataSource = dt;
            gridView.DataBind();

        }
    }
}