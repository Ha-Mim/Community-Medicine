using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using MedicalAutomationCommunity.BLL;
using MedicalAutomationCommunity.DAO;

namespace MedicalCommunityAutomation.HeadOffice
{
    public partial class ShowStory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ViewManager aViewManager=new ViewManager();
        protected void showButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            List<ViewStrory> viewHistories = new List<ViewStrory>();
            viewHistories = aViewManager.ShowStory(name);
            showHistoryGridView.DataSource = viewHistories;
            showHistoryGridView.DataBind();
        }

        protected void printButton_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=MedicalStory.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            showHistoryGridView.RenderBeginTag(hw);
            showHistoryGridView.HeaderRow.RenderControl(hw);
            foreach (GridViewRow row in showHistoryGridView.Rows)
            {
                row.RenderControl(hw);
            }
            showHistoryGridView.FooterRow.RenderControl(hw);
            showHistoryGridView.RenderEndTag(hw);

            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            showHistoryGridView.AllowPaging = true;
            showHistoryGridView.DataBind();
        }

        protected void showDBuetailsButton_Click(object sender, EventArgs e)
        {
            string id = voterIdTextBox.Text;
            XmlDocument xml = new XmlDocument();
            String URLString = "http://nerdcastlebd.com/web_service/voterdb/index.php/voters/voter/" + id;
            xml.Load(URLString);
            XmlNode name = xml.SelectSingleNode("xml/voter/name");
            nameTextBox.Text = name.InnerText;
            XmlNode address = xml.SelectSingleNode("xml/voter/address");
            addressTextBox.Text = address.InnerText;
        }
    }
}