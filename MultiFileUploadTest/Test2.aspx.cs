using MultiFileUploadTest.DosyAAktarim;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MultiFileUploadTest
{
    public partial class Test2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string CallAktarim(string data,string name)
        {

            DosyAAktarim.TeknoserDosyaAktarimSoapClient client = new DosyAAktarim.TeknoserDosyaAktarimSoapClient();
            RequestAttachSaveFOLDER req = new RequestAttachSaveFOLDER();
            req.ATTACH = Convert.FromBase64String(data);
            req.APPLICATIONNAME = ApplicationName.TEKNODESK;
            req.ISCONTROL = false;
            req.VENDORFILECODE = "";
            req.ORJINALFILENAME = name;
            req.CREATEDUSER = "2";
            req.BILDIRIMNO = "1";
            req.RECORD_DATE = DateTime.Now;

          var result =   client.ATTACHSAVEFOLDER_NEW(req);


            return result.RESULTCODE;
        }

    }
}