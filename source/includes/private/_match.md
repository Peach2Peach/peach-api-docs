# Trade request (Private)

## Get buy offer trade requests
Get trade requests for a buy offer.

```shell
curl -X GET https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestReceived/`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```
> The above command returns a response like this:

```json
{
  "offerId": "115",
  "matches": [{
    "creationDate": "2023-08-22T15:35:56.772Z",
    "lastModified": "2023-08-22T15:35:56.772Z",
    "user": {
      "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
      ...
    },
    "offerId": "107",
    "prices": { "EUR": 77.67 },
    "amount": 300000,
    "premium": 8,
    "escrow": "bcrt1q8u4al33hrayyqrnyxu5ut8l644lgtw6mxey77v9n8jqj0awkywws6fr47p",
    "matchedPrice": null,
    "meansOfPayment": {
      "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
    },
    "paymentData": {
      "cash.lv.riga.baltic-honeybadger": {
        "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"],
        "country": "LV"
      },
      "paypal": {
        "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
      }
    },
    "selectedCurrency": null,
    "selectedPaymentMethod": null,
    "symmetricKeyEncrypted": "",
    "symmetricKeySignature": "",
    "matched": false,
    "unavailable": {
      "exceedsLimit": []
    }
  }],
  "totalMatches": 1
}
```

### HTTP Request
`GET /v069/buyOffer/:buyOfferId/tradeRequestReceived`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`buyOfferId` | `string` | yes | ID of the buy offer trade requests you want to retrive

## Get sell offer trade requests
Get trade requests for a sell offer.

```shell
curl -X GET https://api.peachbitcoin.com/v069/sellOffer/115/tradeRequestReceived/`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{
  "offerId": "115",
  "matches": [{
    "creationDate": "2023-08-22T15:35:56.772Z",
    "lastModified": "2023-08-22T15:35:56.772Z",
    "user": {
      "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
      ...
    },
    "offerId": "107",
    "prices": { "EUR": 77.67 },
    "amount": 300000,
    "premium": 8,
    "escrow": "bcrt1q8u4al33hrayyqrnyxu5ut8l644lgtw6mxey77v9n8jqj0awkywws6fr47p",
    "matchedPrice": null,
    "meansOfPayment": {
      "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
    },
    "paymentData": {
      "cash.lv.riga.baltic-honeybadger": {
        "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"],
        "country": "LV"
      },
      "paypal": {
        "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
      }
    },
    "selectedCurrency": null,
    "selectedPaymentMethod": null,
    "symmetricKeyEncrypted": "",
    "symmetricKeySignature": "",
    "matched": false,
    "unavailable": {
      "exceedsLimit": []
    }
  }],
  "totalMatches": 1
}
```

### HTTP Request
`GET /v069/sellOffer/:sellOfferId/tradeRequestReceived`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`sellOfferId` | `string` | yes | ID of the sell offer trade requests you want to retrive

## Get buy offer trade request from a specific user 
Get trade requests for a buy offer from a specific user.

```shell
curl -X GET https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestReceived/03ed7b4d4f969d959c6e22f23202252a5dc7da5ca6e1204cd332dde89190c8d5ac`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{
  "offerId": "115",
  "matches": [{
    "creationDate": "2023-08-22T15:35:56.772Z",
    "lastModified": "2023-08-22T15:35:56.772Z",
    "user": {
      "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
      ...
    },
    "offerId": "107",
    "prices": { "EUR": 77.67 },
    "amount": 300000,
    "premium": 8,
    "escrow": "bcrt1q8u4al33hrayyqrnyxu5ut8l644lgtw6mxey77v9n8jqj0awkywws6fr47p",
    "matchedPrice": null,
    "meansOfPayment": {
      "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
    },
    "paymentData": {
      "cash.lv.riga.baltic-honeybadger": {
        "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"],
        "country": "LV"
      },
      "paypal": {
        "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
      }
    },
    "selectedCurrency": null,
    "selectedPaymentMethod": null,
    "symmetricKeyEncrypted": "",
    "symmetricKeySignature": "",
    "matched": false,
    "unavailable": {
      "exceedsLimit": []
    }
  }],
  "totalMatches": 1
}
```

### HTTP Request
`GET /v069/buyOffer/:buyOfferId/tradeRequestReceived/:userId`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`buyOfferId` | `string` | yes | ID of the buy offer trade requests you want to retrive
`userId` | `string` | yes | ID of the specific user you want to retrive

## Get sell offer trade request from a specific user
Get trade requests for a sell offer from a specific user.

```shell
curl -X GET https://api.peachbitcoin.com/v069/sellOffer/115/tradeRequestReceived/03ed7b4d4f969d959c6e22f23202252a5dc7da5ca6e1204cd332dde89190c8d5ac`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{
  "offerId": "115",
  "matches": [{
    "creationDate": "2023-08-22T15:35:56.772Z",
    "lastModified": "2023-08-22T15:35:56.772Z",
    "user": {
      "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
      ...
    },
    "offerId": "107",
    "prices": { "EUR": 77.67 },
    "amount": 300000,
    "premium": 8,
    "escrow": "bcrt1q8u4al33hrayyqrnyxu5ut8l644lgtw6mxey77v9n8jqj0awkywws6fr47p",
    "matchedPrice": null,
    "meansOfPayment": {
      "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
    },
    "paymentData": {
      "cash.lv.riga.baltic-honeybadger": {
        "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"],
        "country": "LV"
      },
      "paypal": {
        "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
      }
    },
    "selectedCurrency": null,
    "selectedPaymentMethod": null,
    "symmetricKeyEncrypted": "",
    "symmetricKeySignature": "",
    "matched": false,
    "unavailable": {
      "exceedsLimit": []
    }
  }],
  "totalMatches": 1
}
```

### HTTP Request
`GET /v069/sellOffer/:sellOfferId/tradeRequestReceived/:userId`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`sellOfferId` | `string` | yes | ID of the sell offer trade requests you want to retrive
`userId` | `string` | yes | ID of the specific user you want to retrive

## Accept buy offer trade request 
Accept trade request for a buy offer.

```shell
curl -X POST https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestReceived/03ed7b4d4f969d959c6e22f23202252a5dc7da5ca6e1204cd332dde89190c8d5ac/accept`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "paymentDataEncrypted": "",
  "paymentDataSignature": "IIu4bJMZBNO9MCL5et8KRKvg/BxoUZPyS+tuQIUWrPkEGJp2BvUMdiCBGyITD6X0vvFNUzc1eMkO7OA2FxOizoM="
}'
```

> The above command returns a response like this:

```json
```

### HTTP Request
`POST /v069/buyOffer/:buyOfferId/tradeRequestReceived/:userId/accept`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`buyOfferId` | `string` | yes | ID of the buy offer trade requests you want to retrive
`userId` | `string` | yes | ID of the specific user you want to retrive

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`paymentDataEncrypted` | `string` | yes | PGP encrypted JSON stringified payment data
`paymentDataSignature` | `string` | yes | PGP signature of JSON stringified payment data

## Accept sell offer trade request
Accept trade request for a sell offer.

```shell
curl -X POST https://api.peachbitcoin.com/v069/sellOffer/115/tradeRequestReceived/03ed7b4d4f969d959c6e22f23202252a5dc7da5ca6e1204cd332dde89190c8d5ac/accept`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "paymentDataEncrypted": "",
  "paymentDataSignature": "IIu4bJMZBNO9MCL5et8KRKvg/BxoUZPyS+tuQIUWrPkEGJp2BvUMdiCBGyITD6X0vvFNUzc1eMkO7OA2FxOizoM="
}'
```
> The above command returns a response like this:

```json
```

### HTTP Request
`GET /v069/sellOffer/:sellOfferId/tradeRequestReceived/:userId/accept`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`sellOfferId` | `string` | yes | ID of the sell offer trade requests you want to retrive
`userId` | `string` | yes | ID of the specific user you want to retrive

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`paymentDataEncrypted` | `string` | yes | PGP encrypted JSON stringified payment data
`paymentDataSignature` | `string` | yes | PGP signature of JSON stringified payment data


## Perform buy offer trade request
Create a trade request for a buy offer

```shell
curl -X POST https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestPerformed`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "currency": "EUR",
  "paymentMethod": "paypal",
  "paymentDataEncrypted": "",
  "paymentDataSignature": "IIu4bJMZBNO9MCL5et8KRKvg/BxoUZPyS+tuQIUWrPkEGJp2BvUMdiCBGyITD6X0vvFNUzc1eMkO7OA2FxOizoM=",
  "symmetricKeyEncrypted": "-----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
  "symmetricKeySignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----",
  "maxMiningFeeRate": 1,
  "returnAddress": "1FWQiwK27EnGXb6BiBMRLJvunJQZZPMcGd"
}'
```
> The above command returns a response like this:

```json
```

### HTTP Request
`POST /v069/buyOffer/:buyOfferId/tradeRequestPerformed`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`buyOfferId` | `string` | yes | ID of the buy offer you want to request the trade

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`paymentMethod` | `string` | yes | the payment method selected for the trade between the one available in the offer
`currency` |  `string` | yes | the currency selected for the trade between the one available in the offer
`paymentDataHashed` | `string` | yes | the hash of the payment details
`paymentDataEncrypted` | `string` | yes | PGP encrypted JSON stringified payment data
`paymentDataSignature` | `string` | yes | PGP signature of JSON stringified payment data
`symmetricKeyEncrypted` | `string` | yes | PGP encrypted symmetric key. Ensure that the symmetric key is random and of sufficient entropy
`symmetricKeySignature` | `string` | yes | PGP signature of symmetric key for verification
`maxMiningFeeRate` | `number` | yes | the max network fee rateto pay in case of refund
`returnAddress` | `string` | yes | the btc address to return the funds in case of refund

## Perform sell offer trade request
Create a trade request for a sell offer

```shell
curl -X POST https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestPerformed`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "currency": "EUR",
  "paymentMethod": "paypal",
  "paymentDataEncrypted": "",
  "paymentDataSignature": "IIu4bJMZBNO9MCL5et8KRKvg/BxoUZPyS+tuQIUWrPkEGJp2BvUMdiCBGyITD6X0vvFNUzc1eMkO7OA2FxOizoM=",
  "symmetricKeyEncrypted": "-----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
  "symmetricKeySignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----",
  "maxMiningFeeRate": 1,
  "releaseAddress": "1FWQiwK27EnGXb6BiBMRLJvunJQZZPMcGd"
}'
```
> The above command returns a response like this:

```json
```

### HTTP Request
`POST /v069/sellOffer/:sellOfferId/tradeRequestPerformed`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`sellOfferId` | `string` | yes | ID of the buy offer you want to request the trade

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`paymentMethod` | `string` | yes | the payment method selected for the trade between the one available in the offer
`currency` |  `string` | yes | the currency selected for the trade between the one available in the offer
`paymentDataHashed` | `string` | yes | the hash of the payment details
`paymentDataEncrypted` | `string` | yes | PGP encrypted JSON stringified payment data
`paymentDataSignature` | `string` | yes | PGP signature of JSON stringified payment data
`symmetricKeyEncrypted` | `string` | yes | PGP encrypted symmetric key. Ensure that the symmetric key is random and of sufficient entropy
`symmetricKeySignature` | `string` | yes | PGP signature of symmetric key for verification
`maxMiningFeeRate` | `number` | yes | the max network fee rate to pay for the release transaction
`releaseAddress` | `string` | yes | the btc address for the escrow release
`releaseAddressMessageSignature` | `string` | yes | the signed message with release address private key

## Reject buy offer trade request
Reject a trade request from a specific user on a buy offer

```shell
curl -X DELETE https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestReceived/03ed7b4d4f969d959c6e22f23202252a5dc7da5ca6e1204cd332dde89190c8d5ac`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
```

### HTTP Request
`DELETE /v069/buyOffer/:buyOfferId/tradeRequestReceived/:userId`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`buyOfferId` | `string` | yes | ID of the buy offer trade requests you want to retrive
`userId` | `string` | yes | ID of the specific user you want to reject

## Reject sell offer trade request
Reject a trade request from a specific user on a sell offer

```shell
curl -X DELETE https://api.peachbitcoin.com/v069/sellOffer/115/tradeRequestReceived/03ed7b4d4f969d959c6e22f23202252a5dc7da5ca6e1204cd332dde89190c8d5ac`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
```

### HTTP Request
`DELETE /v069/sellOffer/:sellOfferId/tradeRequestReceived/:userId`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`sellOfferId` | `string` | yes | ID of the buy offer trade requests you want to retrive
`userId` | `string` | yes | ID of the specific user you want to reject

## Remove performed buy offer trade request
Remove own trade request on a buy offer

```shell
curl -X DELETE https://api.peachbitcoin.com/v069/buyOffer/115/tradeRequestPerformed`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
```

### HTTP Request
`DELETE /v069/buyOffer/:buyOfferId/tradeRequestPerformed`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`buyOfferId` | `string` | yes | ID of the buy offer trade requests you want to remove

## Remove performed sell offer trade request
Remove own trade request on a sell offer

```shell
curl -X DELETE https://api.peachbitcoin.com/v069/sellOffer/115/tradeRequestPerformed`
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
```

### HTTP Request
`DELETE /v069/sellOffer/:sellOfferId/tradeRequestPerformed`

### Path Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`sellOfferId` | `string` | yes | ID of the sell offer trade requests you want to romve
