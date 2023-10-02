# Default namespace
path "secret/metadata/*" {
  capabilities = ["list"] 
}

path "secret/data/+/dev" {
  capabilities = ["create", "read", "update", "patch", "delete"]
}

# All child namespaces
path "+/sys/capabilities-self" {
  capabilities = ["update"]
}

# Development1
path "development1/secret/metadata/*" {
	capabilities = ["list"]
}

path "development1/secret/data/*" {
  capabilities = ["create", "read", "update", "patch", "delete"]
}

path "development1/secret/data/Managed_by_Terraform/*" {
  capabilities = ["read"]
}

path "development1/secret/data/DevOps" {
  capabilities = ["deny"]
}



