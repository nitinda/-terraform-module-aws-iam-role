# _Terraform Module: terraform-module-aws-iam-role_
_Terraform module Provides an_ **_IAM Role_** _resource in_ **_AWS_** _cloud provider._

<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)

>

---
<!--END STABILITY BANNER-->


## _General_

_This module may be used to create_ **_IAM Role_** _resources in AWS cloud provider....._

---


## _Prerequisites_

_This module needs_ **_Terraform 0.12.18_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._

---

## _Features_

_Below we are able to check the resources that are being created as part of this module call:_


* **_IAM Role_**


---


## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "iam_role" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-role.git?ref=master"

  providers = {
    aws  = aws.services
  }

  ## Tags
  tags = "var.tags"
  
  ## IAM Role
  name                  = "iam-role-test"
  assume_role_policy    = "var.assume_role_policy"
}
```

```tf
module "iam_role" {
  source = "git::https://github.com/nitinda/terraform-module-aws-iam-role.git?ref=master"

  providers = {
    aws  = aws.services
  }

  ## Tags
  tags = "var.tags"
  
  ## IAM Role
  name                  = "iam-role-test"
  assume_role_policy    = "var.assume_role_policy"
  description           = "IAM Role assumed by Service"
  path                  = "var.path"
  force_detach_policies = "var.force_detach_policies"
}
```
---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_name_** | _The name of the role_ | _string_ | **_Optional_** | **_null_** |
| **_name\_prefix_** | _Creates a unique name beginning <br/> with the specified prefix_ | _string_ | **_Optional_** | **_null_** |
| **_assume\_role\_policy_** | _The policy that grants an entity <br/>permission to assume the role_ | _string_ | **_Required_** |  |
| **_force\_detach\_policies_** | _Specifies to force detaching_ | _boolean_ | **_Optional_** | **_false_** |
| **_path_** | _The path to the role_ | _string_ | **_Optional_** | **_null_** |
| **_description_** | _The description of the role_ | _string_ | **_Optional_** | **_null_** |
| **_max\_session\_duration_** | _The maximum session duration (in seconds) <br/>that you want to set for the specified role_ | _number_ | **_Optional_** | **_null_** |
| **_permissions\_boundary_** | _The ARN of the policy that is used to set the <br/>permissions boundary for the role_ | _string_ | **_Optional_** | **_null_** |
| **_tags_** | _Key-value mapping of tags for the IAM role_ | _map(string)_ | **_Optional_** | **_{}_** |


---

## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**
* **_arn_**
* **_name_**

---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---

## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**