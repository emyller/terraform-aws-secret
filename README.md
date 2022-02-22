# secret

A Terraform module to manage a secret and, optionally, is contents.


## Usage example

### Automatically generated value

```hcl
module "app_key_secret" {
  source = "emyller/secret/aws"
  version = "~> 1.0"
  name = "/production/app_name/SECRET_KEY"
  generate = true
  length = 40
}
```


### Already existing value

```hcl
module "api_key_secret" {
  source = "emyller/secret/aws"
  version = "~> 1.0"
  name = "/production/app_name/API_KEY"
  contents = var.api_key
}
```
