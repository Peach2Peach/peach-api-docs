# Offer

## List offers

List all offers created by the user.



```shell
curl -X GET "https://api.peachtopeach.com/v1/offers"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```


> The above command returns a response like this:

```json
[
  {
    "paymentMethods": [
      "sepa"
    ],
    "userId": "032d2cd006ce42bb6ba5d934343cfb526cc396038390a4dc29b08fb8ac571fcfe7",
    "currencies": [
      "CHF"
    ],
    "type": "bid",
    "kyc": "true",
    "premium": "3",
    "offerId": "11",
    "amount": "2M",
    "returnAddress": "1BitcoinEaterAddressDontSendf59kuE",
    "funding": {
      "status": "NULL",
      "confirmations": 0
    }
  },
  {
    "offerId": "10",
    "amount": "1M",
    "paymentMethods": [
      "sepa"
    ],
    "publicKey": "032d2cd006ce42bb6ba5d934343cfb526cc396038390a4dc29b08fb8ac571fcfe7",
    "userId": "032d2cd006ce42bb6ba5d934343cfb526cc396038390a4dc29b08fb8ac571fcfe7",
    "currencies": [
      "EUR"
    ],
    "escrow": "bc1qh74f9595lc4cm0yt43snxargjyqf4dkx3dvyr7gdfchenwxpv67s3q6ud0",
    "premium": "5",
    "kyc": "false",
    "returnAddress": "1BitcoinEaterAddressDontSendf59kuE",
    "type": "bid",
    "funding": {
      "status": "NULL",
      "confirmations": 0
    }
  }
]
```

### HTTP Request

`GET /v1/offers`

## Post offer

Post a new offer.



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
}
```

### HTTP Request

`POST /v1/offer/`

### Parameters

Name | Type | Required | Description
-- -- -- -- - | -- -- -- -- -- - | -- -- -- -- -- - | -- -- -- -- -- -
type | string | yes | `ask` or `bid`
amount | string | yes | Amount in sats <br/> Possible values: `250k` `500k` `1M` `2M` `5M`
premium | number | no | Premium in % (default: 0)
currencies | string | yes | Show offers of specific currency.Can be comma separated list <br/> Possible values: `EUR` `CHF` `GBP` `SEK`
paymentMethods | string | yes | Show offers for specific payment methods.Can be comma separated list <br/> Possible values: `sepa`
kyc | boolean | no | If `true`, show KYC offers as well
returnAddress | string | no | Bitcoin address to return funds to in case ofcancellation.If not set, funds will be returned to sender address.


## Create Escrow

Post a create escrow
for offer.



```shell
curl -X POST "https://api.peachtopeach.com/v1/offer/20219953"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "publicKey": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80"
}'
```


> The above command returns a response like this:

```json
{
  "offerId": 20219953,
  "escrow": "bc1qc7tswqccdmzxnqych8rm9uam7zav7ufvsnyk72tsynl9vvwt20ssgqe9nz",
  "funding": {
    "status": "NULL",
    "confirmations": 0
  }
}
```

### HTTP Request

`POST /v1/offer/:offerId/escrow`

### Parameters

Name | Type | Required | Description
-- -- -- -- - | -- -- -- -- -- - | -- -- -- -- -- - | -- -- -- -- -- -
publicKey | string | yes | Seller public key needed for verifying seller signature for release transaction


## Get funding status

Get funding status of escrow.



```shell
curl -X GET "https://api.peachtopeach.com/v1/offer/20219953/escrow"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```


> The above command returns a response like this:

```json
{
  "offerId": 20219953,
  "escrow": "bc1qc7tswqccdmzxnqych8rm9uam7zav7ufvsnyk72tsynl9vvwt20ssgqe9nz",
  "funding": {
    "status": "NULL|MEMPOOL|FUNDED"
    "confirmations": 0
  }
}
```

### HTTP Request

`GET /v1/offer/:offerId/escrow`


## Get matches

Get matches for an offer.



```shell
curl -X GET "https://api.peachtopeach.com/v1/offer/20219953/matches"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```


> The above command returns a response like this:

```json
{
  "offerId": 20219953,
  "matches": [{
    "user": {
      "id": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
      "rating": 0.7
    },
    "price": 954.32,
    "currency": "EUR"
  },
  {
    "user": {
      "id": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
      "rating": 0.67
    },
    "price": 952.75,
    "currency": "EUR"
  }]
}
```

### HTTP Request

`GET /v1/offer/:offerId/escrow`


## Update offer

Update an offer.

Only transmitted parameters will be updated, other data will remain untouched.



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
-- -- -- -- - | -- -- -- -- -- - | -- -- -- -- -- - | -- -- -- -- -- -
premium | number | no | Premium in % (default: 0)
currencies | string | no | Show offers of specific currency.Can be comma separated list <br/> Possible values: `EUR` `CHF` `GBP` `SEK`
paymentMethods | string | no | Show offers for specific payment methods. Can be comma separated list <br/> Possible values: `sepa`
kyc | boolean | no | If `true`, show KYC offers as well


## Delete offer

Delete an offer.



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


## Accept offer

Accept an offer.


```shell
curl -X POST "https://api.peachtopeach.com/v1/offer/20219953/accept"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
-H 'Content-Type: application/json' \
```

> The above command returns a response like this:

```json
{
  "contractId": 12355
}
```

### HTTP Request

`POST /v1/offer/:offerId/accept`