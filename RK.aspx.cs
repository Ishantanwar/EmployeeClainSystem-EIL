using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Data.OracleClient;

public partial class RK : System.Web.UI.Page
{

    BindControls bc = new BindControls();
    protected void Button1_Click(object sender, EventArgs e)
    {
        string empName = TextBox1.Text;
        int empId = int.Parse(TextBox2.Text);
        string email = TextBox3.Text;
        string pwd = TextBox4.Text;
        string confirmPwd = TextBox5.Text;

        string connectionString = ConfigurationManager.ConnectionStrings["connAMS_ODP"].ConnectionString;
        string insertQuery = "INSERT INTO LOGIN_PAGE (E_NAME, E_ID, EMAIL ) VALUES (:empName, :empId, :email)";


        using (OracleConnection connection = new OracleConnection(connectionString))
        {
            using (OracleCommand command = new OracleCommand(insertQuery, connection))
            {
                command.Parameters.Add(new OracleParameter(":empName", empName));
                command.Parameters.Add(new OracleParameter(":empId", empId));
                command.Parameters.Add(new OracleParameter(":email", email));
                //command.Parameters.Add(new OracleParameter(":pwd", pwd));
                //command.Parameters.Add(new OracleParameter(":confirmPwd", confirmPwd));


                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        message.Text = "Data saved successfully!";
                    }
                    else
                    {
                        message.Text = "Data could not be saved. Please try again.";
                    }
                }
                catch (Exception ex)
                {
                    message.Text = "An error occurred: " + ex.Message;

                }


            }
        }
    }
}
        
