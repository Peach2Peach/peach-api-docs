
# Registration and Authentication

Private API endpoints are used to access user specific resources.

In order to access the private API endpoints a user is required request an auth token.
Auth tokens can be acquired by authentication of public keys.

When successfully requesting a token, the public key is automatically registered if it does not exist in the system.

If you want to retrive your existing account info from the file backup, check [this repo](https://github.com/Peach2Peach/decrypt-peach-file-backup).

## Register or just Get Access Token

Use this endpoint to get auth token by sending public key, challenge and signed message.
The received token is valid for 60 minutes.

Note that the first time for a new account you'll need to call `/v1/user/register/`
Once registered use `/v1/user/auth/` going forward. The request and response parameters are identical.

```shell
## Example request here
curl -X POST "https://api.peachbitcoin.com/v1/user/auth/"
-H 'Content-Type: application/json' \
--data-raw '{
    "publicKey": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
    "message": "Peach Registration 1231006505000",
    "signature": "H7vbUS+FJRddsZjWp4SjxPLMh2JcjfuR6wz5n/S4Pd44MxZ2epPH0AaZlVWxk0q68t1fFYdt5xruNok30I5c0Pg="
}'
```

> The above command returns a response with the token:

```json
{
  "expiry": 1631987976268,
  "accessToken": "5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28"
}
```

### HTTP Request

`POST /v1/user/register/`
`POST /v1/user/auth/`

### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`publicKey` | `string` | yes | Public key of user account (recommended to use 1st public key, path m/48'/0'/0'/0')
`message` | `string` | yes | Message to sign containing current timestamp. <br>Use the following pattern: `Peach Registration ${CURRENT_TIMESTAMP}`
`signature` | `string` | yes | Hex encoded signature* of message, message is hashed by SHA256 algorithm and signed with the corresponding private key using ECDSA.<br/>Used to verify user is indeed owner of private key which is associate to the public key.
`uniqueId` | `string` | no | A unique identifier you wish to associate with your account. Used to take over reputation from one account to another.

\* base64 encoding support is planned for a future release.

## Using the Access Token

Once acquired, the access token is passed through the request headers `Authorization`