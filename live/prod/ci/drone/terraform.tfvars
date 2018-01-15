# ------------------------------------------------------------------------------
# Terragrunt configuration
# ------------------------------------------------------------------------------

terragrunt = {
  terraform {
    source = "/exekube/modules//xk-release"
  }

  dependencies {
    paths = [
      "../../gcp-project",
      "../../core/ingress-controller",
      "../../core/kube-lego",
    ]
  }

  include = {
    path = "${find_in_parent_folders()}"
  }
}