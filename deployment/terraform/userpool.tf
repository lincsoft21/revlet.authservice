locals {
  required_attributes = {
    "given_name" = {
      type = "String"
      contstraints = {

      }
    }
    "birthdate" = {
      type = "DateTime"
    }
  }
}

resource "aws_cognito_user_pool" "revlet_userpool" {
  name             = format("revlet-%s-userpool", var.ENVIRONMENT)
  alias_attributes = ["email"]

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }

  dynamic "schema" {
    for_each = local.required_attributes

    content {
      name                = schema.key
      attribute_data_type = schema.value.type
      mutable             = true
      required            = true
    }
  }

  tags = {
    env     = var.ENVIRONMENT
    service = "authservice"
  }
}

# resource "aws_cognito_user_pool" "revlet_admin_userpool" {
#   name             = format("revlet-%s-admin-userpool", var.ENVIRONMENT)
#   alias_attributes = ["email", "phone_number"]

#   mfa_configuration = "ON"
#   sms_configuration {
#     enabled = true
#   }

#   tags = {
#     env     = var.ENVIRONMENT
#     service = "propertyservice"
#   }
# }
