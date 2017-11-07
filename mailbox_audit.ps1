$servername = hostname
$filename = $servername + "_mailbox.txt"

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010

echo "Get-TransportServer" >> $filename
echo "Get-TransportServer"
Get-TransportServer >> $filename

echo "Get-MailboxDatabase" >> $filename
echo "Get-MailboxDatabase"
Get-MailboxDatabase | fl -property Identity,IssueWarningQuota,ProhibitSendReceiveQuota,ProhibitSendQuota,MailboxRetention,RetainDeletedItemsUntilBackup,DeletedItemRetention,DeletedItemRetention >> $filename