using System;
using System.Configuration;
using System.IO;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       

    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        WriteToCsv(txt_call_id.Text, "1", rbtn_q1_option.SelectedItem.Value,txt_q1_comment.Text);
        WriteToCsv(txt_call_id.Text, "2", rbtn_q2_option.SelectedItem.Value, txt_q2_comment.Text);
        WriteToCsv(txt_call_id.Text, "3", rbtn_q3_option.SelectedItem.Value, txt_q3_comment.Text);
        WriteToCsv(txt_call_id.Text, "4", rbtn_q4_option.SelectedItem.Value, txt_q4_comment.Text);
        WriteToCsv(txt_call_id.Text, "5", rbtn_q5_option.SelectedItem.Value, txt_q5_comment.Text);
    }

    private void WriteToCsv(string fileName, string header, string messsage, string comment)
    {
        try
        {
            string PathtoWrite = ConfigurationSettings.AppSettings["filepath"].ToString();
            if (!Directory.Exists(PathtoWrite))
            {
                Directory.CreateDirectory(PathtoWrite);
            }
            String filePath = PathtoWrite + "\\" + fileName + ".txt";
            if (!File.Exists(filePath) && header == "1")
            {
                System.IO.File.WriteAllText(filePath, "");
                FileStream file = new FileStream(filePath, FileMode.Append, FileAccess.Write, FileShare.None);
                StreamWriter log = new StreamWriter(file);
                log.AutoFlush = true;
                log.WriteLine(fileName + "|" + header + "|" + messsage + "|" + comment);
                log.Close();
                log.Dispose();
                file.Close();
            }
            else
            {

                FileStream file = new FileStream(filePath, FileMode.Append, FileAccess.Write, FileShare.None);

                StreamWriter log = new StreamWriter(file);
                log.AutoFlush = true;

                log.WriteLine(fileName + "|" + header + "|" + messsage + "|" + comment);

                log.Close();
                log.Dispose();
                file.Close();

            }
        }
        catch (Exception ex)
        {
        }

    }
}