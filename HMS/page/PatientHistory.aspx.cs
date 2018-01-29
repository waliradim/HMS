using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HMS.EntityLayer;
using HMS.BusinessLayer;
using System.Data;


namespace HMS.page
{
    public partial class PatientHistory : System.Web.UI.Page
    {
        DataSet dataset = new DataSet();
        BusinessClass objbusiness = new BusinessClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            GridView.Visible = true;
            if (txtId.Text == "" && txtname.Text == "")
            {
                lblshow.Text = "Enter Patient ID or Name";
                
            }
            else if (txtId.Text !="" && txtname.Text=="")
            {
                lblshow.Text = "";
                patientID();
            }
            else if (txtId.Text=="" && txtname.Text !="")
            {
                lblshow.Text = "";
                srcPatientFname();
            }
            
        }

        public void patientID()
        {
            try {
                EntityClass objEntityClass = new EntityClass();
                objEntityClass.patientID = Convert.ToInt32(txtId.Text);
                dataset  = objbusiness.SearchByID(objEntityClass);
                if (dataset.Tables[0].Rows.Count==0)
                {
                    lblshow.Text = "Record Not Found";
                    GridView.Visible = false;
                }
                else
                {
                    GridView.DataSource = dataset;
                    GridView.DataBind();
                }

                

            }
            catch (Exception ex) {
                lblshow.Text = ex.Message;

            }
        }


        public void srcPatientFname()
        {
            try
            {
                PatientbyName objPatiwentName = new PatientbyName();
                objPatiwentName.patientName = txtname.Text;
                dataset = objbusiness.SearchByFname(objPatiwentName);
                if (dataset.Tables[0].Rows.Count == 0)
                {
                    lblshow.Text = "Record Not Found";
                    GridView.Visible = false;
                }
                else
                {
                    GridView.DataSource = dataset;
                    GridView.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblshow.Text = ex.Message;

            }

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            GridView.Visible = false;
            txtId.Text = "";
            txtname.Text = "";
            lblshow.Text = "";
        }
    }
}