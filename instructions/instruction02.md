Open Google Cloud Shell editor with code of previous example already cloned in it thank to the button below:  
[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/corentinl/terraform-gcp-example-buildinfra.git)

# Prerequisites

In `provider.tf`:
- Make sure to replace <REPLACE_ME_WITH_SERVICE_ACCOUNT_KEY_PATH> with the path to the service account key file you downloaded
- Make sure to replace <REPLACE_ME_WITH_GCP_PROJECT_ID>" with your project's ID

# Goals
For this exercise we want to define 2 output:
- The local ip of our compute engine instance
- The public ip of our compute instance.

The Terraform documentation on output is the following:
- [outputs](https://www.terraform.io/language/values/outputs)

Available output of the resource `google_compute_instance`
- [google_compute_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance)



# Write some tf configuration

Open outputs.tf (or create it if non existent) in your text editor, and write the 2 required output
```hcl
output "internal_instance_ip_addr" {
  //value = ?????
}

output "external_instance_ip_addr" {
  //value = ?????
}


```

Complete this configuration appropriately.

# Execute Terraform

### Initialize Terraform  
(dl required dependencies, init backend conf)  
Not useful if already done on previous lab
```bash
terraform init
```

### Plan
```bash
terraform plan -out theplan
```
Verify that 2 resources will be provisioned only


### Apply  
When satisfy with the plan run the apply command
```bash
terraform apply theplan
```

Check that the ouput you required is well printed on your terminal.

### Destroy (Optional)   
To get rid of all previously provisioned resources run
```bash
terraform destroy
```