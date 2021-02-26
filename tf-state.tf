terraform {
  backend "s3" {
    bucket   = "sim"                                   # FIXME hardcoded
    endpoint = "https://s3.nl-ams.scw.cloud"           # FIXME hardcoded
    key      = "gitlab-com-simy-infra/tfstate.tfstate" # FIXME hardcoded
    region   = "nl-ams"                                # FIXME hardcoded

    skip_credentials_validation = true
    skip_region_validation      = true
  }
}
