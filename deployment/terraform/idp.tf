# Identify Provider configuration for Cognito
# resource "aws_cognito_identity_provider" "google_provider" {
#   user_pool_id  = aws_cognito_user_pool.revlet_userpool.id
#   provider_name = "Google"
#   provider_type = "Google"

#   provider_details = {
#     authorize_scopes = "email"
#     client_id        = ""
#     client_secret    = ""
#   }

#   attribute_mapping = {
#     email      = "email"
#     given_name = "given_name"
#     birthdate  = "birthdays"
#   }
# }
