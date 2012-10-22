﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for NameService
/// </summary>
[WebService(Namespace = "http://estcab/dev.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class NameService : System.Web.Services.WebService {

    public NameService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld(string yourName) {
        return string.Format("Hello {0}", yourName);
    }
    
}
