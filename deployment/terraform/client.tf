# App Client for client-based access
resource "aws_cognito_user_pool_client" "client" {
  name = "revlet-client"

  user_pool_id = aws_cognito_user_pool.revlet_userpool.id

  generate_secret     = false
  explicit_auth_flows = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH"]
}
