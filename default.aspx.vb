Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        'redirects to the database page after validator requirment have been met
        Response.Redirect("dataBasePage.aspx")
    End Sub
End Class