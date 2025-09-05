##################
Write-host "Public IP Address"

New-AzPublicIpAddress -Name "PIP-Demo" -ResourceGroupName "RG-DemoApp-EastUS" -Location "EastUS" -AllocationMethod Static -Sku Standard

Write-host "Network Interface"

New-AzNetworkInterface -Name "NIC-DemoVM" -ResourceGroupName "RG-DemoApp-EastUS" -Location "EastUS" -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -NetworkSecurityGroupId $nsg.Id
