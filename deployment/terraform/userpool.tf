resource "aws_cognito_user_pool" "revlet_userpool" {
  name = format("revlet-%s-userpool", var.ENVIRONMENT)
}

resource "aws_cognito_user_pool" "revlet_admin_userpool" {
  name = format("revlet-%s-admin-userpool", var.ENVIRONMENT)
}