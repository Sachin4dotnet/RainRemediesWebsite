Imports System.Net
Imports System.Net.Mail

Partial Class Order
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try

            Dim mailsub As String = ""
            mailsub += "<table width=100%>"
            mailsub += "<tr><td colspan=2>Order From Website </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"

            'mailsub += "<tr><td>Full Name : -</td><td> " + txtName.Value + " </td></tr>"
            mailsub += "<tr><td width='150px'>Full Name : -</td><td> " + txtName.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Email : -</td><td> " + txtEmail.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Telephone No. : -</td><td> " + txtPhone.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>City : -</td><td> " + txtCity.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>State : -</td><td> " + txtState.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Zip : -</td><td> " + txtZip.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Order Description : -</td><td> " + txtComments.Value + " </td></tr>"

            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "</table>"
            SendMail(mailsub)

            Response.Write("<script>alert('Thank you for your interest in our products. We will contact you as soon as possible.');</script>")
            txtName.Value = ""
            txtEmail.Value = ""
            txtPhone.Value = ""
            txtComments.Value = ""
            txtCity.Value = ""
            txtState.Value = ""
            txtZip.Value = ""
        Catch ex As Exception
            lblerrordetail.Text = ex.Message
            Response.Write("<script>alert('Some Problem occured. Please try again.');</script>")

        End Try


    End Sub

    Private Sub SendMail(ByVal mailsub As String)

        Dim mail As New Net.Mail.MailMessage()

        mail.To.Add("rainremedies@gmail.com")
        mail.From = New MailAddress("info@rainremedies.com", "RainRemedies.com")

        mail.IsBodyHtml = True
        mail.Subject = "Order mail from website"

        mail.Body = "<div style=""font: 15px trebuchet ms, Calibri, arial; width: 100%; margin: 20px; background-color: #e7e7e7; "">"
        mail.Body += "<br><br>"
        mail.Body += mailsub
        mail.Body += "<br><br>"
        mail.Body += "Regards,....<br><br>"
        mail.Body += "Rain Remedies"

        Dim smtpClient As New SmtpClient()
        Dim mailAuthentication As System.Net.NetworkCredential = New System.Net.NetworkCredential(ConfigurationManager.AppSettings("mailid"), ConfigurationManager.AppSettings("mailpswd"))
        smtpClient.Host = CStr(ConfigurationManager.AppSettings("smtp"))
        smtpClient.Port = CInt(ConfigurationManager.AppSettings("port"))
        smtpClient.EnableSsl = CBool(ConfigurationManager.AppSettings("ssl"))

        smtpClient.Credentials = mailAuthentication
        smtpClient.Send(mail)

    End Sub

End Class
