# App Client for client-based access
resource "aws_cognito_user_pool_client" "authservice_client" {
  name = "revlet-authservice-client"

  user_pool_id = aws_cognito_user_pool.revlet_userpool.id
}
