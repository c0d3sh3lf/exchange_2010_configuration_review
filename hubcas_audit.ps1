$servername = hostname
$filename = $servername + "_hubcas.txt"

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010

echo "get-sendconnector" >> $filename
echo "get-sendconnector"
get-sendconnector | fl -Property Identity,MaxMessageSize,DNSRoutingEnabled,IgnoreSTARTTLS,ProtocolLoggingLevel,DomainSecureEnabled >> $filename

echo "Get-TransportConfig" >> $filename
echo "Get-TransportConfig"
Get-TransportConfig | fl -property Identity,MaxReceiveSize,InternalSMTPServers,InternalSMTPServers,MaxSendSize >> $filename

echo "Get-SenderFilterConfig" >> $filename
echo "Get-SenderFilterConfig"
Get-SenderFilterConfig | fl -property Identity,Enabled >> $filename

echo "Get-SenderReputationConfig" >> $filename
echo "Get-SenderReputationConfig"
Get-SenderReputationConfig >> $filename

echo "Get-TransportServer" >> $filename
echo "Get-TransportServer"
Get-TransportServer | fl Identity,MessageTrackingLogEnabled,ConnectivityLogEnabled >> $filename

echo "Get-PopSettings" >> $filename
echo "Get-PopSettings"
Get-PopSettings  | fl -property Identity,LoginType >> $filename

echo "Get-ReceiveConnector" >> $filename
echo "Get-ReceiveConnector"
Get-ReceiveConnector | fl -property Identity,MaxMessageSize,ProtocolLoggingLevel >> $filename

echo "Get-ImapSettings" >> $filename
echo "Get-ImapSettings"
Get-ImapSettings | fl -property Identity,LoginType >> $filename

echo "Get-ActiveSyncMailboxPolicy" >> $filename
echo "Get-ActiveSyncMailboxPolicy"
Get-ActiveSyncMailboxPolicy | fl -property Identity,AllowSimpleDevicePassword,DevicePasswordHistory,MinDevicePasswordLength,DevicePolicyRefreshInterval,AllowNonProvisionableDevices,RequireDeviceEncryption,MaxInactivityTimeDeviceLock,AlphanumericDevicePasswordRequired,MaxDevicePasswordFailedAttempts,DevicePasswordEnabled >> $filename

echo "Get-CASMailbox" >> $filename
echo "Get-CASMailbox"
Get-CASMailbox | fl -property Identity,MAPIEnabled >> $filename

echo "Get-ExecutionPolicy | fl -property  RemoteSigned" >> $filename
echo "Get-ExecutionPolicy | fl -property  RemoteSigned"
Get-ExecutionPolicy | fl -property  RemoteSigned >> $filename

echo "Get-AdminAuditLogConfig | fl -property AdminAuditLogEnabled" >> $filename
echo "Get-AdminAuditLogConfig | fl -property AdminAuditLogEnabled" 
Get-AdminAuditLogConfig | fl -property AdminAuditLogEnabled >> $filename

echo "Get-RemoteDomain" >> $filename
echo "Get-RemoteDomain"
Get-RemoteDomain | fl -property Identity,AutoReplyEnabled,NDREnabled,AllowedOOFType,AutoForwardEnabled >> $filename

echo "Get-OwaVirtualDirectory" >>$filename
echo "Get-OwaVirtualDirectory"
Get-OwaVirtualDirectory | fl -property Identity,BasicAuthentication,SMimeEnabled >> $filename

echo "Output written to file" + $filename