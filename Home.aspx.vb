Imports System.Net
Imports System.Net.Mail

Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try

            Dim mailsub As String = ""
            mailsub += "<table width=100%>"
            mailsub += "<tr><td colspan=2>Inquirer Information</td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"

            mailsub += "<tr><td width='150px'>Full Name : -</td><td> " + txtName.Value + " </td></tr>"
            'mailsub += "<tr><td>Full Name : -</td><td> " + txtName.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Email : -</td><td> " + txtEmail.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Telephone No. : -</td><td> " + txtPhone.Value + " </td></tr>"
            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "<tr><td>Comments : -</td><td> " + txtComments.Value + " </td></tr>"

            mailsub += "<tr><td colspan=2>&nbsp;</td></tr>"
            mailsub += "</table>"
            SendMail(mailsub)

            Response.Write("<script>alert('Thank you. Your Inquiry has been sent to authorised person.');</script>")
            txtName.Value = ""
            txtEmail.Value = ""
            txtPhone.Value = ""
            txtComments.Value = ""

        Catch ex As Exception
            lblerrordetail.Text = ex.Message
            Response.Write("<script>alert('Some Problem occured. Please try again.');</script>")

        End Try


    End Sub

    Private Sub SendMail(ByVal mailsub As String)

        'Dim fromAddress As New MailAddress("sac4temp@gmail.com", "RainRemedies.com")
        'Dim toAddress As New MailAddress("rainremedies@gmail.com", "Rain Remedies")
        'Dim fromPassword As String = "########"
        'Dim subject As String = "Inquiry mail from website"
        'Dim body As String = "Body"
        'body = "<div style=""font: 15px Calibri, arial; width: 100%; margin: 20px; background-color: #e7e7e7; "">"
        'body += "<br><br>"
        'body += mailsub
        'body += "<br><br>"
        'body += "Regards,....<br><br>"
        'body += "Rain Remedies"

        'Dim smtp = New SmtpClient() With { _
        ' .Host = "smtp.gmail.com", _
        ' .Port = 587, _
        ' .EnableSsl = True, _
        ' .DeliveryMethod = SmtpDeliveryMethod.Network, _
        ' .UseDefaultCredentials = False, _
        ' .Credentials = New NetworkCredential(fromAddress.Address, fromPassword) _
        '}
        'Using message = New MailMessage(fromAddress, toAddress) With { _
        ' .Subject = subject, _
        ' .Body = body _
        '}
        '    smtp.Send(message)
        'End Using

        '============================================================================

        Dim mail As New Net.Mail.MailMessage()

        'mail.To.Add("sachin4dotnet@gmail.com")
        'mail.To.Add("rainremedies@gmail.com")
        mail.To.Add("sachin.patel@devitpl.com")
        mail.From = New MailAddress("sac4temp@gmail.com", "RainRemedies.com")
        'mail.From = New MailAddress("info@rainremedies.com", "RainRemedies.com")
        'mail.From = New MailAddress("rainremedies@gmail.com", "RainRemedies.com")

        mail.IsBodyHtml = True

        Dim smtpClient As New SmtpClient()

        mail.Subject = "Inquiry mail from website"

        mail.Body = "<div style=""font: 15px trebuchet ms, Calibri, arial; width: 100%; margin: 20px; background-color: #e7e7e7; "">"
        mail.Body += "<br><br>"
        mail.Body += mailsub
        mail.Body += "<br><br>"
        mail.Body += "Regards,....<br><br>"
        mail.Body += "Rain Remedies"

        Dim mailAuthentication As System.Net.NetworkCredential = New System.Net.NetworkCredential(ConfigurationManager.AppSettings("mailid"), ConfigurationManager.AppSettings("mailpswd"))

        'smtpClient.Host = "smtp.gmail.com"
        'smtpClient.Port = 587
        'smtpClient.EnableSsl = True
        smtpClient.Host = CStr(ConfigurationManager.AppSettings("smtp"))
        smtpClient.Port = CInt(ConfigurationManager.AppSettings("port"))
        smtpClient.EnableSsl = CBool(ConfigurationManager.AppSettings("ssl"))

        smtpClient.Credentials = mailAuthentication
        smtpClient.Send(mail)

    End Sub

    'Private Sub SendClick()
    '    Dim mailMsg As New Web.Mail.MailMessage()
    '    Try
    '        mailMsg.To = "rainremedies@gmail.com"
    '        mailMsg.From = "info@rainremedies.com"
    '        'mailMsg.BodyFormat = MailFormat.Text 'optional for sending text in body
    '        mailMsg.BodyFormat = MailFormat.Html
    '        mailMsg.Subject = "Statistics Report"
    '        mailMsg.Body = "<html><body><Table><tr><td>Hi,</td></tr><tr><td>Details of the Statistics :</td></tr></Table></body></html><html><body>" & "sometext" & _
    '        "</body></html><html><body><Table><tr><td> </td></tr><tr><td>NOTE: This is an automated mail. Please, do not reply.</td></tr>" & _
    '        "<tr><td>*Green coloured rows indicates temporary demos</td></tr>" & _
    '        "<tr><td>**All statistics are based on the page naming conventions Eg., 22_10_2005_</td></tr>" & _
    '        "<tr><td> </td></tr><tr><td>Regards,</td></tr><tr><td>some text,</td></tr><tr><td>some text,</td></tr>" & _
    '        "<tr><td> Some text </td></tr></table></body></html>"
    '        SmtpMail.SmtpServer = ConfigurationSettings.AppSettings("SmtpServer")
    '        SmtpMail.Send(mailMsg)
    '        'xm.InnerHtml = "Your message has been sent"
    '    Catch ex As Exception
    '        Response.Write(ex.Message)
    '    End Try
    'End Sub
End Class
