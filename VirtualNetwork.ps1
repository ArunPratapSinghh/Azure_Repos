##Virtual Network + Subnet###

Write-Host "Create Virtual Network" -ForgroundColor Green

$subnet = New-AzVirtualNetworkSubnetConfig -Name "Subnet01" -AddressPrefix "10.0.1.0/24"
$vnet = New-AzVirtualNetwork -Name "VNet-Demo" -ResourceGroupName "RG-DemoApp-EastUS" -Location "EastUS" -AddressPrefix "10.0.0.0/16" -Subnet $subnet

Write-Host "Delete Virtual Network" -ForgroundColor Green
Remove-AzVirtualNetwork -Name "VNet-Demo" -ResourceGroupName "RG-DemoApp-EastUS" –Force
