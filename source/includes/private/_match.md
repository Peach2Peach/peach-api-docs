# Match (Private)

## Get Matches
Get matches for an offer.

```shell
curl -X GET https://api.peachbitcoin.com/v1/offer/114/matches
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
`GET /v1/offer/:offerId/matches`


## Match a Sell Offer
Match a sell offer

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/match"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "matchingOfferId": "116",
  "currency": "EUR",
  "paymentMethod": "paypal",
  "price": 77.32,
  "premium": 8,
  "symmetricKeyEncrypted": "-----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
  "symmetricKeySignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----"
}'
```


> The above command returns a response like this:

```json
{ "matchedPrice": 77.33 }
```

### HTTP Request
`POST /v1/offer/:offerId/match`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`matchingOfferId` | `string` | yes | ID of offer you want to match
`currency` | `string` | yes | The currency to match with
`paymentMethod` | `string` | yes |  The payment method to match with
`premium` | `string` | no | Send the premium to ensure you match with the expected premium (in case the seller just changes it)
`symmetricKeyEncrypted` | `string` | yes | PGP encrypted symmetric key. Ensure that the symmetric key is random and of sufficient entropy
`symmetricKeySignature` | `string` | yes | PGP signature of symmetric key for verification

## Unmatch a Sell Offer
Unmatch a sell offer

```shell
curl -X DELETE "https://api.peachbitcoin.com/v1/offer/match"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "matchingOfferId": "116"
}'
```


> The above command returns a response like this:

```json
{ "success": true }
```

### HTTP Request
`DELETE /v1/offer/:offerId/match`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`matchingOfferId` | `string` | yes | ID of offer you want to unmatch

## Doublematch a buy Offer
Doublematch a buy offer

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/match"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "matchingOfferId": "115",
  "currency": "EUR",
  "paymentMethod": "paypal",
  "price": 77.33,
  "premium": 8.06,
  "paymentDataEncrypted": "-----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
  "paymentDataSignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----"
}'
```


> The above command returns a response like this:

```json
{ 
  "success": true,
  "contractId": "116-115"
}
```

### HTTP Request
`POST /v1/offer/:offerId/match`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`matchingOfferId` | `string` | yes | ID of offer you want to match
`currency` | `string` | yes | The currency to match with
`paymentMethod` | `string` | yes |  The payment method to match with
`paymentDataEncrypted` | `string` | yes | PGP encrypted JSON stringified payment data
`paymentDataSignature` | `string` | yes | PGP signature of JSON stringified payment data

