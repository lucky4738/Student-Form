using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Protocols;

namespace Music_Store
{
    public partial class About : Page
    {
        DataTable gdt;
       private DataTable GenerateTable()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Student Name");
            dt.Columns.Add("Roll No");
            dt.Columns.Add("DOB");
            dt.Columns.Add("Class");
            dt.Columns.Add("Section");
            dt.Columns.Add("Class Teacher");
            dt.Columns.Add("Address");
            dt.Columns.Add("Mobile No");
            dt.Columns.Add("Email");
            dt.Columns.Add("Date of Admission");
            dt.Columns.Add("Adhaar No");
            return dt;
        }
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
            gdt = GenerateTable();
        }
        private void SaveGrid()
        {
            DataTable gdt;
            if(ViewState["dt"]==null)
            {
                gdt = GenerateTable();

            }else
                gdt=((DataTable)ViewState["dt"]);

            object[] row = new object[11];
            row[0] = Convert.ToString(txtName.Text);
            row[1] = Convert.ToString(txtRollNo.Text);
            row[2] = Convert.ToString(txtDOB.Text);
            row[3] = Convert.ToString(txtClass.Text);
            row[4] = Convert.ToString(txtSection.Text);
            row[5] = Convert.ToString(txtClassTeacher.Text);
            row[6] = Convert.ToString(txtAddress.Text);
            row[7] = Convert.ToString(txtMobileNo.Text);
            row[8] = Convert.ToString(txtEmail.Text);
            row[9] = Convert.ToString(txtDateOfAdmission.Text);
            row[10] = Convert.ToString(txtAdhaar.Text);



            gdt.Rows.Add(row);

            ViewState["dt"] = gdt;
            dgrd.DataSource = gdt;
            dgrd.DataBind();


        }
        private void WriteToFile()
        {
            FileInfo fl = new FileInfo("D:\\Espire\\C#\\Student\\progfile.txt");
            
            FileStream fs = fl.Open(FileMode.Open, FileAccess.ReadWrite, FileShare.ReadWrite); 

            object[] obj = new object[11];
            obj[0] = Convert.ToString(txtName.Text);
            obj[1] = Convert.ToString(txtRollNo.Text);
            obj[2] = Convert.ToString(txtDOB.Text);
            obj[3] = Convert.ToString(txtClass.Text);
            obj[4] = Convert.ToString(txtSection.Text);
            obj[5] = Convert.ToString(txtClassTeacher.Text);
            obj[6] = Convert.ToString(txtAddress.Text);
            obj[7] = Convert.ToString(txtMobileNo.Text);
            obj[8] = Convert.ToString(txtEmail.Text);
            obj[9] = Convert.ToString(txtDateOfAdmission.Text);
            obj[10] = Convert.ToString(txtAdhaar.Text);

            StreamWriter s = new StreamWriter(fs);
            s.WriteLine(obj[0].ToString());
            s.WriteLine(obj[1].ToString());
            s.WriteLine(obj[2].ToString());
            s.WriteLine(obj[3].ToString());
            s.WriteLine(obj[4].ToString());
            s.WriteLine(obj[5].ToString());
            s.WriteLine(obj[6].ToString());
            s.WriteLine(obj[7].ToString());
            s.WriteLine(obj[8].ToString());
            s.WriteLine(obj[9].ToString());
            s.WriteLine(obj[10].ToString());
            s.Close();

        }
       /* private void ReadDataFromFile(string fileName)
        {
            FileInfo fl = new FileInfo("D:\\Espire\\C#\\Student\\progfile.txt");

            FileStream fs = fl.Open(FileMode.Open, FileAccess.Read, FileShare.Read);

            StreamReader sr = new StreamReader(fs);
            while(!sr.EndOfStream)
            {
                string s = sr.ReadLine();
                Response.Write(s);
            }
            sr.Close();
        }*/



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                WriteToFile();
            }
            catch(Exception a)
            {
                Response.Write(a.Message);
            }
            finally
            {
                Response.Write("finally Block");
            }

        }

        

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                object[] row = new object[11];
                row[0] = Convert.ToString(txtName.Text);
                row[1] = Convert.ToString(txtRollNo.Text);
                row[2] = Convert.ToString(txtDOB.Text);
                row[3] = Convert.ToString(txtClass.Text);
                row[4] = Convert.ToString(txtSection.Text);
                row[5] = Convert.ToString(txtClassTeacher.Text);
                row[6] = Convert.ToString(txtAddress.Text);
                row[7] = Convert.ToString(txtMobileNo.Text);
                row[8] = Convert.ToString(txtEmail.Text);
                row[9] = Convert.ToString(txtDateOfAdmission.Text);
                row[10] = Convert.ToString(txtAdhaar.Text);



                gdt.Rows.Add(row);

                dgrd.DataSource = gdt;
                dgrd.DataBind();
            }
            catch(Exception a)
            {
                Response.Write(a.Message);
               
            }
            finally
            {
                Response.Write("finally Block");
            }

        }

       
    }
}