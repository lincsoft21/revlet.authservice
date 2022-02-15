# Revlet Auth Service

## Cognito
Users are authenticated using Amazon AWS Cognito. Users will be required to have an Identity or Access token to make particular API requests to Revlet. 

Authorizer Access [docs](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-integrate-with-cognito.html)


## Testing Authentication

### Generate Secret Hash
Will need:

- App Client ID
- App Client Secret
- Test User

Run the following script:

```
python3 scripts/secret_hash.py USERNAME CLIENT_ID CLIENT_HASH
```

This will return a Secret hash that can be used to authenticate with Cognito.


### Get ID Token
Run the following command to Authenticate with Cognito to get an ID token to test with:

```
aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id CLIENT_ID --auth-parameters USERNAME=...,PASSWORD=...,SECRET_HASH=...
```

### SDP Auth Flow
