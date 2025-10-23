 variable "rg_list" {
            type = map(object({
            name = string
            location  = string
            tags =map(string)
            }))
         
     }

resource "azurerm_resource_group" "rg" {
    //rg_list  = ["vinod" ,"kumar" ,"vaish"]
    //count = length(var.rg_list)
    //for_each = toset(var.rg_list)
    for_each = var.rg_list
    //name = "vinod-rg1-${each.value}"
    name = each.value.name
    location = each.value.location
    //created_by = " terraform-${each.value}"
    tags =  each.value.tags
}

 