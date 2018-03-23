# ------------------------------------------------------------------------------
# HELM TLS CONFIG
# ------------------------------------------------------------------------------

# By default ca.cert.pem, helm.cert.pem, and helm.key.pem will be sourced from
# ${secrets_dir}/${tiller_namespace}/helm-tiller/*.pem
variable "secrets_dir" {
  description = "The directory for storing secrets for the project"
}

variable "tiller_namespace" {
  default = "kube-system"
}

# Set this if TLS assets are in directory other than ${tiller_namespace}
# i.e. ${secrets_dir}/${custom_tls_dir}/helm-tiller/*.pem
variable "custom_tls_dir" {
  default = ""
}

# ------------------------------------------------------------------------------
# Helm release specification
# ------------------------------------------------------------------------------

variable "release_spec" {
  type = "map"

  default = {
    enabled        = false
    chart_repo     = ""
    namespace      = "default"
    chart_name     = ""
    chart_version  = ""
    release_name   = ""
    release_values = "values.yaml"

    domain_name = ""
  }
}

# ------------------------------------------------------------------------------
# Pre-hook and post-hook, to be run before creation and after release creation
# ------------------------------------------------------------------------------

variable "pre_hook" {
  type = "map"

  default = {
    command = "echo hello from pre_hook"
  }
}

variable "post_hook" {
  type = "map"

  default = {
    command = "echo hello from post_hook"
  }
}

# ------------------------------------------------------------------------------
# Allows to easily create a basic auth secret to use for ingress
# ------------------------------------------------------------------------------

variable "ingress_basic_auth" {
  type = "map"

  default = {
    username    = ""
    password    = ""
    secret_name = ""
  }
}