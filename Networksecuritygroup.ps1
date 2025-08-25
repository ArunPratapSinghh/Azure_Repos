#####Network Security Group (NSG)####
Write-host "Create Network security Group" -Forgroundcolor Cyna

$nsgRule = New-AzNetworkSecurityRuleConfig -Name "Allow-RDP" -Protocol "Tcp" -Direction "Inbound" -Priority 100 -SourceAddressPrefix "*" -SourcePortRange "*" -DestinationAddressPrefix "*" -DestinationPortRange "3389" -Access "Allow"


$nsg = New-AzNetworkSecurityGroup -ResourceGroupName "RG-DemoApp-EastUS" -Location "EastUS" -Name "NSG-Demo" -SecurityRules $nsgRule
