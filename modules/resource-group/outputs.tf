output "rgprod_name" {  
  description = "name of the prod resource group"  
        value = "${azurerm_resource_group.prod.name}"  
}

output "rgprod_id" {  
 description = "id of the resource group provisioned"  
       value = "${azurerm_resource_group.prod.id}"  
}  

output "rgstaging_name" {  
  description = "name of the staging resource group"  
        value = "${azurerm_resource_group.staging.name}"  
}

output "rgstaging_id" {  
 description = "id of the staging resource group"  
       value = "${azurerm_resource_group.staging.id}"  
}  
