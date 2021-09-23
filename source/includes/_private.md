# Private API

# Authentication

Private API endpoints are used to access user specific resources.

In order to access the private API endpoints a user is required request an auth token.
Auth tokens can be acquired by authentication of public keys.

When successfully requesting a token, the public key is automatically registered if it does not exist in the system.

## Get token

Use this endpoint to get auth token by sending public key, challenge and signed message.
When requesting the token, it is recommend to add a random nonce to the message to decrease potential attack vectors.

The received token is valid for 60 minutes.

Weight: 1


```shell
# Example request here
curl -X POST "https://api.peachtopeach.com/v1/auth/"
-H 'Content-Type: application/json' \
--data-raw '{
    "publicKey": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
    "challenge": "Peach of cake! I confirm I am the owner of this public key. 84fd5c01c7f7d4dcc856de11d36892d97dd7c789",
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

`POST /v1/auth/`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
publicKey | string | yes | Public key of user account (recommended to use 1st public key, path m/45'/0/0/0)
message | string | yes | Message to sign. Recommend to add random nonce.
signature | string | yes | Signature of serialized request <br/>Used to verify user is indeed owner of private key which is associate to the public key


# Offer

## List offers

Get funding status of escrow.

Weight: 1


```shell
curl -X GET "https://api.peachtopeach.com/v1/offers"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```


> The above command returns a response like this:

```json
[
  {
    "offerId": 20219953,
    "amount": 1000000,
    "escrow": "bc1qc7tswqccdmzxnqych8rm9uam7zav7ufvsnyk72tsynl9vvwt20ssgqe9nz",
    "funding": "NULL|MEMPOOL|FUNDED",
    "confirmations": 0
  }
]
```

### HTTP Request

`GET /v1/offers`

## Post offer

Post a new offer.

Weight: 1


```shell
curl -X POST "https://api.peachtopeach.com/v1/offer/"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "type": "ask",
  "amount": "1M",
  "premium: 5,
  "currencies": ["EUR"],
  "paymentMethods": ["sepa", "paypal"],
  "kyc": false
}'
```


> The above command returns a response like this:

```json
{
  "offerId": 20219953,
  "escrow": "bc1qc7tswqccdmzxnqych8rm9uam7zav7ufvsnyk72tsynl9vvwt20ssgqe9nz",
  "funding": "NULL",
  "confirmations": 0
}
```

### HTTP Request

`POST /v1/offer/`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
type | string | yes | `ask` or `bid`
amount | string | yes | Amount in sats <br/> Possible values: `250k` `500k` `1M` `2M` `5M`
premium | number | no | Premium in % (default: 0)
currencies | string | yes | Show offers of specific currency. Can be comma separated list <br />Possible values: `EUR` `CHF` `GBP` `SEK`
paymentmethods | string | yes | Show offers for specific paymentmethods. Can be comma separated list <br />Possible values: `sepa`
kyc | boolean | no | If `true`, show KYC offers as well
returnAddress | string | no | Bitcoin address to return funds to in case of cancellation. If not set, funds will be returned to sender address.


## Get funding status

Get funding status of escrow.

Weight: 1


```shell
curl -X GET "https://api.peachtopeach.com/v1/offer/20219953/escrow"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```


> The above command returns a response like this:

```json
{
  "offerId": 20219953,
  "escrow": "bc1qc7tswqccdmzxnqych8rm9uam7zav7ufvsnyk72tsynl9vvwt20ssgqe9nz",
  "funding": "NULL|MEMPOOL|FUNDED",
  "confirmations": 0
}
```

### HTTP Request

`GET /v1/offer/:offerId/escrow`


## Update offer

Update an offer.

Only transmitted parameters will be updated, other data will remain untouched.

Weight: 1


```shell
curl -X PATCH "https://api.peachtopeach.com/v1/offer/20219953"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "currencies": ["EUR", "CHF"],
}'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`PATCH /v1/offer/:offerId`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
premium | number | no | Premium in % (default: 0)
currencies | string | no | Show offers of specific currency. Can be comma separated list <br />Possible values: `EUR` `CHF` `GBP` `SEK`
paymentmethods | st
ring | no | Show offers for specific paymentmethods. Can be comma separated list <br />Possible values: `sepa`
kyc | boolean | no | If `true`, show KYC offers as well


## Delete offer

Delete an offer.

Weight: 1


```shell
curl -X DELETE "https://api.peachtopeach.com/v1/offer/20219953"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`PATCH /v1/offer/:offerId`


# Contract

## Accept offer

Accept an offer.

Weight: 1

```shell
curl -X POST "https://api.peachtopeach.com/v1/offer/20219953/accept"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
-H 'Content-Type: application/json' \
--data-raw '{
  "offerId": 20219949,
}'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/offer/:offerId/accept`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
offerId | number | yes | The offer id that will be matched with


## Send KYC

Buyer: send KYC information


Weight: 1


```shell
curl -X POST "https://api.peachtopeach.com/v1/contract/20219953/kyc"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: multipart/form-data' \
-F 'name="Hal Finney "' \
-F 'data="IBAN Number"' \
-F '=@"kyc-image.png"'
```


> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/kyc`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
name | string | yes/no | Real name of user
data | string | yes/no | Additional data such as IBAN
file | image | yes/no | Image of Government ID if required


## Accept KYC

Seller: Accept KYC information

Weight: 1


```shell
curl -X POST "https://api.peachtopeach.com/v1/contract/20219953/kyc/accept"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/kyc/accept`


## Decline KYC

Seller: Decline KYC in case of invalid or unreadable data.

Weight: 1


```shell
curl -X POST "https://api.peachtopeach.com/v1/contract/20219953/kyc/decline"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/kyc/decline`


## Send Payment Data

Seller: Send payment instructions to buyer.

Weight: 1

```shell
curl -X PUT "https://api.peachtopeach.com/v1/contract/20219953/payment"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
-H 'Content-Type: application/json' \
--data-raw '{
  "paymentData": "----BEGIN PGP MESSAGE-----\nVersion: openpgp-mobile\n\nwcBMA87af...aVDdeLlS0at\n4R9lAA==\n=7wbG\n-----END PGP MESSAGE-----",
}'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/payment`
### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
paymentData | string | yes | Send encrypted payment data

## Payment made

Buyer: confirm that payment has been made.

Weight: 1


```shell
curl -X POST "https://api.peachtopeach.com/v1/contract/20219953/payment"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/payment`


## Confirm Payment Received

Confirm a payment has been made.

Weight: 1

```shell
curl -X POST "https://api.peachtopeach.com/v1/contract/20219953/payment/confirm"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/payment/confirm`

## Chat log

Receive chat history. Specificy end date as unix timestamp and receive the last 50 messages from that point.

Weight: 1


```shell
curl -X GET "https://api.peachtopeach.com/v1/contract/20219953/chat"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json'
```

> The above command returns a response like this:

```json
[
  {
    "date": "2021-09-17T14:41:41.605Z",
    "message": "----BEGIN PGP MESSAGE-----\nVersion: openpgp-mobile\n\nwcBMA87af...aVDdeLlS0at\n4R9lAA==\n=7wbG\n-----END PGP MESSAGE-----",
    "attachments": [
      "https://peachtopeach.com/path/to/resource.png"
    ]
  }
  {
    "date": "2021-09-17T14:42:14.2345Z",
    "message": "----BEGIN PGP MESSAGE-----\nVersion: openpgp-mobile\n\nwcBMA87af...aVDdeLlS0at\n4R9lAA==\n=7wbG\n-----END PGP MESSAGE-----",
    "attachments": []
  }
]
```

### HTTP Request

`GET /v1/contract/:contractId/chat`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
to | number | no | unix timestamp to


## Post chat message

Send a message via chat

Weight: 1


```shell
curl -X GET "https://api.peachtopeach.com/v1/contract/20219953/chat"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: multipart/form-data' \
-F 'message="Here is the proof of payment "' \
-F '=@"payment-proof.png"'
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/chat`

### Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
message | string | yes | The message to be sent
peachOnly | boolean | no | If true, only Peach Support Team can read the message
attachment | image | no | Image to attach

## Start a dispute

Start a dispute

Weight: 1


```shell
curl -X GET "https://api.peachtopeach.com/v1/contract/20219953/dispute"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```
200 OK
```

### HTTP Request

`POST /v1/contract/:contractId/dispute`
