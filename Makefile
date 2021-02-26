init:
	terraform init
plan:
	terraform plan
apply:
	terraform apply -auto-approve -parallelism=50
secret:
	sh ./hack/secret
