# ------------------------------------------------------------------------------
# Istio framework: ingress-controller + monitoring
# ------------------------------------------------------------------------------

istio = {
  enabled = false
}

# ------------------------------------------------------------------------------
# A sample Drupal app
# ------------------------------------------------------------------------------

drupal = {
  enabled     = true
  domain_name = "drupal-app.flexeption.pw"
}

# ------------------------------------------------------------------------------
# A sample Wordpress app
# ------------------------------------------------------------------------------

wordpress = {
  enabled     = true
  domain_name = "wordpress-app.flexeption.pw"
}
