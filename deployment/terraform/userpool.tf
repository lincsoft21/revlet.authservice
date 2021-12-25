resource "aws_cognito_user_pool" "revlet_userpool" {
  name = "revlet-userpool"
}

resource "aws_cognito_user_pool" "revlet_admin_userpool" {
  name = "revlet-admin-userpool"
}