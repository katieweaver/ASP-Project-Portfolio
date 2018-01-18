using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Weaver_KatieAssignment2
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void btnGet_Click(object sender, EventArgs e)
        {
            HttpWebRequest request = WebRequest.CreateHttp("http://www.webservicex.net/country.asmx/GetCurrencyByCountry?CountryName=" + txtURL.Text);
            request.Method = "GET";
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            string output = "";
            using (StreamReader sr = new StreamReader(response.GetResponseStream()))
            {
                output = sr.ReadToEnd();
                sr.Close();
            }


            string stringWanted = output.Replace("&lt;", "<").Replace("&gt;",">");

            txtResults.Text = stringWanted;



        System.Xml.XmlDocument xmlDoc = new System.Xml.XmlDocument();
        xmlDoc.LoadXml(stringWanted);

        System.Xml.XmlNodeList nl;
            System.Xml.XmlNodeList nl2;
            System.Xml.XmlNodeList nl3;
            System.Xml.XmlNodeList nl4;
            System.Xml.XmlNodeList nl5;


        nl = xmlDoc.GetElementsByTagName("string");
            nl2 = xmlDoc.GetElementsByTagName("CountryCode");
            nl3 = xmlDoc.GetElementsByTagName("Currency");
            nl4 = xmlDoc.GetElementsByTagName("Name");
            nl5 = xmlDoc.GetElementsByTagName("CurrencyCode");

        foreach (System.Xml.XmlNode n in nl)
        {
            System.Xml.XmlElement xe;
            xe = (System.Xml.XmlElement)n;
        }

            foreach (System.Xml.XmlNode n in nl4)
            {
                System.Xml.XmlElement xe;
                xe = (System.Xml.XmlElement)n;
                txtCountry.Text = xe.InnerText;

                TableRow country = new TableRow();
                TableCell countryName = new TableCell();
                countryName.Controls.Add(new LiteralControl("Country: "));
                TableCell inputCountry = new TableCell();
                inputCountry.Controls.Add(new LiteralControl(xe.InnerText));

                country.Cells.Add(countryName);
                country.Cells.Add(inputCountry);

                tblOutput.Rows.Add(country);
            }

            //

            foreach (System.Xml.XmlNode n in nl2)
            {
                System.Xml.XmlElement xe;
                xe = (System.Xml.XmlElement)n;
                txtCountryCode.Text = xe.InnerText;

                TableRow countryCode = new TableRow();
                TableCell countryCodelbl = new TableCell();
                countryCodelbl.Controls.Add(new LiteralControl("Country Code: "));
                TableCell parseCountryCode = new TableCell();
                parseCountryCode.Controls.Add(new LiteralControl(xe.InnerText));

                countryCode.Cells.Add(countryCodelbl);
                countryCode.Cells.Add(parseCountryCode);

                tblOutput.Rows.Add(countryCode);

            }

            //

        foreach (System.Xml.XmlNode n in nl3)
            {
                System.Xml.XmlElement xe;
                xe = (System.Xml.XmlElement)n;
                txtCurrency.Text = xe.InnerText;

                TableRow currency = new TableRow();
                TableCell currencylbl = new TableCell();
                currencylbl.Controls.Add(new LiteralControl("Currency: "));
                TableCell parseCurrency = new TableCell();
                parseCurrency.Controls.Add(new LiteralControl(xe.InnerText));

                currency.Cells.Add(currencylbl);
                currency.Cells.Add(parseCurrency);

                tblOutput.Rows.Add(currency);

            }

        foreach (System.Xml.XmlNode n in nl5)
            {
                System.Xml.XmlElement xe;
                xe = (System.Xml.XmlElement)n;
                txtCurrencyCode.Text = xe.InnerText;

                TableRow currencyCode = new TableRow();
                TableCell currencyCodelbl = new TableCell();
                currencyCodelbl.Controls.Add(new LiteralControl("Currency Code:"));
                TableCell parseCurrencyCode = new TableCell();
                parseCurrencyCode.Controls.Add(new LiteralControl(xe.InnerText));

                currencyCode.Cells.Add(currencyCodelbl);
                currencyCode.Cells.Add(parseCurrencyCode);

                tblOutput.Rows.Add(currencyCode);
            }


    }
}


    }
