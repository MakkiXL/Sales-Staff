Public Class dataBasePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click
        'redirects back to the main page
        Response.Redirect("default.aspx")
    End Sub
End Class