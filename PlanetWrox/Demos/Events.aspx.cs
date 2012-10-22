using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Events : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WriteMessage("Page_Load");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        WriteMessage("Button1_Click");
    }
    protected void GridView1_Sorted(object sender, EventArgs e)
    {
        WriteMessage("GridView1_Sorted");
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        WriteMessage("GridView1_Sorting");
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        WriteMessage("GridView1_RowCreated");
    }
    protected void GridView1_DataBinding(object sender, EventArgs e)
    {
        WriteMessage("GridView1_DataBinding");
    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        WriteMessage("GridView1_DataBound");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        WriteMessage("GridView1_RowDataBound");
    }
    protected void EntityDataSource1_ContextCreating(object sender, EntityDataSourceContextCreatingEventArgs e)
    {
        WriteMessage("ntityDataSource1_ContextCreating");
    }
    protected void EntityDataSource1_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
    {
        WriteMessage("EntityDataSource1_Selecting");
    }

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        WriteMessage("Page_PreRenderComplete<br />-----------------");
    }

    private void WriteMessage(string handlerName)
    {
        if (Page.IsPostBack)
        {
            PostBack.Text += handlerName + "<br />";
        }
        else
        {
            NoPostBack.Text += handlerName + "<br />";
        }
    }
}