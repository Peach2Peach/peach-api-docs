# Private API

## Authentication

Private API endpoints are used to access user specific resources.

In order to access the private API endpoints a user is required request an auth token.
Auth tokens can be acquired by authentication of public keys.

When successfully requesting a token, the public key is automatically registered if it does not exist in the system.

### Get token

Use this endpoint to get auth token by sending public key, challenge and signed message.
When requesting the token, it is recommended to add a random nonce to the message to decrease potential attack vectors.

The received token is valid for 60 minutes.



```shell
## Example request here
curl -X POST "https://api.peachbitcoin.com/v1/user/auth/"
-H 'Content-Type: application/json' \
--data-raw '{
    "publicKey": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
    "message": "Peach of cake! I confirm I am the owner of this public key. 84fd5c01c7f7d4dcc856de11d36892d97dd7c789",
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

#### HTTP Request

`POST /v1/user/auth/`

#### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
publicKey | string | yes | Public key of user account (recommended to use 1st public key, path m/45'/0/0/0)
message | string | yes | Message to sign. Recommended to add random nonce.
signature | string | yes | Signature of message, message is hashed by SHA256 algorithm.<br/>Used to verify user is indeed owner of private key which is associate to the public key

## Profile

### Get token

Use this endpoint to get auth token by sending public key, challenge and signed message.
When requesting the token, it is recommended to add a random nonce to the message to decrease potential attack vectors.

The received token is valid for 60 minutes.



```shell
## Example request here
curl -X POST "https://api.peachbitcoin.com/v1/user/auth/"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
--data-raw '-----BEGIN PGP PUBLIC KEY BLOCK-----
mQINBGF...
...aId08+mxh=0Byt
-----END PGP PUBLIC KEY BLOCK-----'
```

> The above command returns a response like this:

```
200 OK
```

#### HTTP Request

`PUT /v1/user/gpg/`