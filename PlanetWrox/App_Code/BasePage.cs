using System;
using System.Web;

public class BasePage : System.Web.UI.Page
{
    public BasePage()
    {
        this.PreRender += new EventHandler(BasePage_PreRender);
    }

    private void BasePage_PreRender(object sender, EventArgs e)
    {
        if (this.Title == "Untitled Page" || string.IsNullOrEmpty(this.Title))
        {
            throw new Exception(
                "Page title cannot be \"Untitled Page\" or an empty string.");
        }
        
    }
}