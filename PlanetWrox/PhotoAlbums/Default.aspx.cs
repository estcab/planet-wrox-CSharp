using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhotoAlbums_Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            EditLink.NavigateUrl = string.Format(
            "~/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", DropDownList1.SelectedValue);
            EditLink.Visible = true;
        }
        else
        {
            EditLink.Visible = false;
        }
    }
}