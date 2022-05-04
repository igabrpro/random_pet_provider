# **random_pet_provider**


#### This repo is a guideline on HOW to use null provider with random_pet in terraform using Ubuntu.

# **Repo content**
```main.tf``` - Terraform configuration file

# **PreRequsits**
#### You need to have terraform cli instaled 
#### [download link](https://www.terraform.io/downloads)

# **How to use**
```
    Download the repo igabrpro/random_pet_provider git clone https://github.com/igabrpro/random_pet_provider.git
    Change to Count_null_provider: cd Count_null_provider
    Type in your terminal terraform init in order to be downloaded required providers
    Type in your terminal terraform plan in order to see the changes which terraform is going to be made
    Type in your terminal terraform apply execute changes bases on our code(main.tf) 
```
    
    
# **Expected results**
```
random_pet.server: Creating...
random_pet.server: Creation complete after 0s [id=logical-katydid]
null_resource.igabr: Creating...
null_resource.igabr: Provisioning with 'local-exec'...
null_resource.igabr (local-exec): Executing: ["/bin/sh" "-c" "echo resource name logical-katydid"]
null_resource.igabr (local-exec): resource name logical-katydid
null_resource.igabr: Creation complete after 0s [id=2121992795701726026]
```
# **Example**

```
Execute terraform show to check the created objects

# null_resource.igabr:
resource "null_resource" "igabr" {
    id       = "2121992795701726026"
    triggers = {
        "build_number" = "Object logical-katydid"
    }
}

# random_pet.server:
resource "random_pet" "server" {
    id        = "logical-katydid"
    length    = 2
    separator = "-"
}
```
