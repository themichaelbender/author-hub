New-AzResourceGroup -name 'demo-rg' -tag 'demo' -Location 'Central US'
 # for looper 

New-AzVM `
    -ResourceGroupName 'demo-rg' `
    -name 'demo-1' `
    -Location 'Central US' `
    -VirtualNetworkName 'demo-vnet' `
    -SubnetName 'demo-sn' `
    -PublicIpAddressName 'myPubIP' `
    -Size 'Standard_B1S'  #Critical parameter. If not specified, will use default size $$



New-AzVM `
    -ResourceGroupName 'demo-rg' `
    -name 'demo-2' `
    -Location 'Central US' `
    -VirtualNetworkName 'demo-vnet' `
    -SubnetName 'demo-sn' `
    -PublicIpAddressName 'myPubIP2' `
    -Size 'Standard_B1S'  #Critical parameter. If not specified, will use default size $$


Get-AzResourceGroup -name 'mt-rg' | Remove-AzResourceGroup



