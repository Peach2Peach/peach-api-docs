# Offer (Private)

## Get Offer Details
Get details of an offer you own.

```shell
curl -X GET https://api.peachbitcoin.com/v1/offer/114/details
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{
  "id": "115",
  "user": {
    "id": "02c3f68178d567253170cd47c896c5e4045e40026ef6f1e2e361d968552dc02496",
    ...
  },
  "type": "bid",
  "amount": [ 50000, 2560000 ],
  "meansOfPayment": {
    "EUR": [
      "cash.lv.riga.baltic-honeybadger",
      "paypal"
    ]
  },
  "tradeStatus": "searchingForPeer"
}
```

### HTTP Request

`GET /v1/offer/:offerId/details`

## Get all Offers
List all offers you own

```shell
curl -X GET https://api.peachbitcoin.com/v1/offers
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{
  "amount": [50000, 2300000],
  "creationDate": "2023-08-22T12:49:58.434Z",
  "doubleMatched": false,
  "freeTrade": false,
  "id": "79",
  "lastModified": "2023-08-22T12:49:58.434Z",
  "matches": [],
  "maxPremium": null,
  "meansOfPayment": {
    "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
  },
  "message": "I confirm that only I, peach03a73739, control the address bcrt1qzd4zfctml24e6jwsjc7sd4t98euv6tc5pprmyf",
  "messageSignature": "IP3YBkHGd...bcltUY8=",
  "online": true,
  "paymentData": {
    "cash.lv.riga.baltic-honeybadger": {
      "country": "LV",
      "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"]
    },
    "paypal": {
      "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
    }
  },
  "publishingDate": "2023-08-22T12:49:58.434Z",
  "releaseAddress": "bcrt1qzd4zfctml24e6jwsjc7sd4t98euv6tc5pprmyf",
  "tradeStatus": "searchingForPeer",
  "type": "bid",
  "user": {
    "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
    ...
  }
}
```

### HTTP Request

`GET /v1/offers`

## Get Offers Summaries
List all offers summaries.

```shell
curl -X GET https://api.peachbitcoin.com/v1/offers/summary
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
[
  {
    "id": "1",
    "type": "ask",
    "contractId": "1-22",
    "lastModified": "2023-08-11T09:38:01.154Z",
    "creationDate": "2023-08-10T09:50:41.716Z",
    "amount": 50000,
    "matches": [],
    "prices": {
      "EUR": 13.04
    },
    "tradeStatus": "tradeCompleted",
    "fundingTxId": "841b151c1c9c5edb8bfe57df43f1580b6357023582e20a971ca9a0d557ba1e05"
  },
  ...
  {
    "id": "115",
    "type": "bid",
    "lastModified": "2023-08-22T15:35:24.650Z",
    "creationDate": "2023-08-22T15:35:24.650Z",
    "amount": [50000, 2560000],
    "matches": [],
    "tradeStatus": "searchingForPeer"
  }
]
```

### HTTP Request

`GET /v1/offers/summary`

## Post Buy Offer
Post a new buy offer.

```shell
curl --request POST \
  --url "https://api.peachbitcoin.com/v069/buyOffer" \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
  --data '{
	"amount": 20000,
	"meansOfPayment": {"EUR":["wise"]},
	"paymentData": {"wise":{"hashes":["f94ac0146ae1cb24fecf96063d79fca3d7d71df52afccd7c75e68804b3c57f27"]}},
	"releaseAddress":"bcrt1qj90g6y20rey56ywthyz8lj9cqq3glyvyu6g66v",
	"releaseAddressMessageSignature":"AkcwRAIgKcCi+0ZiHJzGCNtnq2UoFpkAbfI0JLMLTnhtgusZLqQCICZvuVGvS6lXKW22wvzmHl4Ndcu2oZtkoPPM0+N+ekQHASECYkq9MFDh+A2hcGRglcSiqyWmsm7KygwmU9QT3KjG8bs=" ,
	"premium": 2,
	"minReputation": 4
}'
```


> The above command returns a response like this:

```json
{
	"id": 1,
	"amountSats": 20000,
	"userId": "03b096a65acbcf4ebe6b9ce5a639216487e3cf4f5d0b2a9b5b6fa05be6888ae738",
	"status": "active",
	"releaseAddress": "bcrt1qj90g6y20rey56ywthyz8lj9cqq3glyvyu6g66v",
	"minReputation": 4,
	"premium": 2,
	"freeTrade": false,
	"releaseAddressMessage": "I confirm that only I, peach03b096a6, control the address bcrt1qj90g6y20rey56ywthyz8lj9cqq3glyvyu6g66v",
	"paymentData": {
		"wise": {
			"hashes": [
				"f94ac0146ae1cb24fecf96063d79fca3d7d71df52afccd7c75e68804b3c57f27"
			]
		}
	},
	"meansOfPayment": {
		"EUR": [
			"wise"
		]
	},
	"releaseAddressMessageSignature": "AkcwRAIgKcCi+0ZiHJzGCNtnq2UoFpkAbfI0JLMLTnhtgusZLqQCICZvuVGvS6lXKW22wvzmHl4Ndcu2oZtkoPPM0+N+ekQHASECYkq9MFDh+A2hcGRglcSiqyWmsm7KygwmU9QT3KjG8bs=",
	"creationDate": "2025-07-04T10:06:24.618Z"
}
```

### HTTP Request
`POST /v069/buyOffer/`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`amount` | `[number, number]` | yes | Range within you want to buy sats
`premium` | `number` | no | The premium you are willing to pay
`meansOfPayment` | [`MeansOfPayment`](#meansofpayment) | yes | Object with `Currency` as keys and array of [`paymentMethod`](#paymentmethod) ids as values
`paymentData`| [`OfferPaymentData`](#paymentdata)  | yes | Object with `paymentMethod` ids as keys and object with payment data hashes as values.<br/>Payment data hashes are sha256 hashes and are based on the each original payment data fields. Each field must be hashed individually.
`releaseAddress` | `string` | yes | Bitcoin address to release funds to complete trade.
`releaseAddressMessageSignature` | `string` | yes | As a buyer you must sign the following message template with the corresponding private keys of your `releaseAddress`:<br />`I confirm that only I, peach<YOUR_ID>, control the address <RELEASE_ADDRESS>`


## Post Sell Offer
Post a new sell offer.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "premium": 8,
  "type": "ask",
  "amount": 300000,
  "meansOfPayment": {
    "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
  },
  "paymentData": {
    "cash.lv.riga.baltic-honeybadger": {
      "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"],
    },
    "paypal": {
      "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
    }
  },
  "returnAddress": "bcrt1qlwpcjuude4mlmnvpfhenkwh7rcw06xkcp3d8ds"
}'
```


> The above command returns a response like this:

```json
{
  "amount": 300000,
  "creationDate": "2023-08-22T15:23:20.475Z",
  "doubleMatched": false,
  "escrowFee": 0,
  "escrowNotifiedUser": false,
  "freeTrade": false,
  "funding": {
    "amounts": [],
    "confirmations": 0,
    "expiry": 4320,
    "status": "NULL",
    "txIds": [],
    "vouts": []
  },
  "fundingAmountDifferent": false,
  "id": "114",
  "lastModified": 2023 - 08 - 22 T15: 23: 20.475 Z,
  "matches": [],
  "meansOfPayment": {
    "EUR": ["cash.lv.riga.baltic-honeybadger", "paypal"]
  },
  "online": false,
  "paymentData": {
    "cash.lv.riga.baltic-honeybadger": {
      "hashes": ["2312b8c8bcc4c5e8541893b5e3bc88d165ba83ea6f19fc747a5e1874226c1f08"]
    },
    "paypal": {
      "hashes": ["fda659c82ae97ce2c4b26665e558a97796951f7691f85e97d693425a1eaeae21"]
    }
  },
  "premium": 8,
  "prices": { "EUR": 77.69 },
  "publishingDate": null,
  "refunded": false,
  "released": false,
  "returnAddress": "bcrt1qlwpcjuude4mlmnvpfhenkwh7rcw06xkcp3d8ds",
  "type": "ask",
  "user": {
    "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
    ...
  }
}
```

### HTTP Request
`POST /v1/offer/`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`type` | `string` | yes | `ask`
`amount` | `number` | yes | The amount in sats you want to sell or buy
`premium` | `number` | no | The premium you are selling or buying for
`meansOfPayment` | [`MeansOfPayment`](#meansofpayment) | yes | Object with `Currency` as keys and array of [`paymentMethod`](#paymentmethod) ids as values
`paymentData` | [`OfferPaymentData`](#paymentdata)  | yes | Object with `paymentMethod` ids as keys and object with payment data hashes as values.<br/>Payment data hashes are sha256 hashes and are based on the each original payment data fields. Each field must be hashed individually.
`returnAddress` | `string` | yes for sell | Bitcoin address to return funds to in case of a canceled trade.


## Create Escrow
Post a create escrow
for offer.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/114"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "publicKey": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80"
}'
```

> The above command returns a response like this:

```json
{
  "escrow": "bcrt1q3urn30702x7m2mdqwavf295esde83m9hf25ykk49025mgxgpe6vqmxh700",
  "funding": {
    "confirmations": 0,
    "status": "NULL"
  },
  "offerId": "114"
}
```

### HTTP Request
`POST /v1/offer/:offerId/escrow`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`publicKey` | `string` | yes | Seller public key needed to create the multisig between seller and Peach


## Get Funding Status
Get funding status of escrow.

```shell
curl -X GET https://api.peachbitcoin.com/v1/offer/114/escrow
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```


> The above command returns a response like this:

```json
{
  "escrow": "bcrt1q3urn30702x7m2mdqwavf295esde83m9hf25ykk49025mgxgpe6vqmxh700",
  "funding": {
    "amounts": [],
    "confirmations": 0,
    "derivationPath": "m/48'/0'/0'/0/114",
    "expiry": 576,
    "status": "NULL",
    "txIds": [],
    "vouts": []
  },
  "offerId": "114",
  "returnAddress": "bcrt1qlwpcjuude4mlmnvpfhenkwh7rcw06xkcp3d8ds",
  "userConfirmationRequired": false
}
```

### HTTP Request
`GET /v1/offer/:offerId/escrow`

## Confirm Escrow Funding
If you sent a different amount to the escrow address and `userConfirmationRequired` on the `FundingStatus` is `true` you'll have to confirm the funding amount through this endpoint.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/114/escrow/confirm"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{ "success": true }
```

### HTTP Request
`POST /v1/offer/:offerId/escrow/confirm`


## Update Buy Offer
Update buy offer preferences

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/123"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "maxPremium": 10
}'
```


> The above command returns a response like this:

```json
{ "success": true }
```

### HTTP Request
`PATCH /v1/offer/:offerId`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`maxPremium` | `number` | no | The maximum premium you are willing to pay

## Update Sell Offer
Update sell offer preferences

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/123"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json' \
--data-raw '{
  "refundTx": "cHNidP8...sAAAA",
  "premium": 8,
}'
```


> The above command returns a response like this:

```json
{ "success": true }
```

### HTTP Request
`PATCH /v1/offer/:offerId`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`premium` | `number` | no | The premium you want to sell for
`refundTx` | `string` | no | Presigned refund transaction which is base64 encoded. Used when requesting trade cancelation to get refunded as soon as buyer accepts.


## Cancel Offer
You can cancel your offer as long as it's not in a trade.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/offer/114/cancel"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> For buy offers, the above command returns a response like this:

```json
{ "success": true }
```

> For sell offers, the above command returns a response like this:

```json
{
  "psbt": "cHNidP8BAFIC...GHdkZrAAA",
  "returnAddress": "bcrt1qthgtaqk8473rsta5a459h64qtj8ntgj0k74sk3",
  "amount": 285900,
  "fees": 14100,
  "satsPerByte": 100
}
```

### HTTP Request
`POST /v1/offer/:offerId/cancel`


## Get Refund PSBT
Once you canceled your sell offer, you can request the cancelation PSBT again to complete the refund

```shell
curl -X GET "https://api.peachbitcoin.com/v1/offer/114/refundPSBT"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{
  "psbt": "cHNidP8BAFIC...GHdkZrAAA",
  "returnAddress": "bcrt1qthgtaqk8473rsta5a459h64qtj8ntgj0k74sk3",
  "amount": 285900,
  "fees": 14100,
  "satsPerByte": 100
}
```


### HTTP Request
`GET /v1/offer/:offerId/refundPSBT`




## Refund Sell Offer
Finalize sell offer refunding

```shell
curl -X GET "https://api.peachbitcoin.com/v1/offer/114/refund"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
-H 'Content-Type: application/json' \
--data-raw '{
  "tx": "02000000000...028de75fd2ff22ac00000000",
}'
```

> The above command returns a response like this:

```json
{ "success": true }
```


### HTTP Request
`POST /v1/offer/:offerId/refund`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`tx` | `string` | yes | The release transaction to be broadcasted

## Re-publish Sell Offer
When your trade got canceled, you have the option to re-publish your sell offer.

```shell
curl -X GET "https://api.peachbitcoin.com/v1/offer/114/revive"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{ "newOfferId": "120" }
```


### HTTP Request
`POST /v1/offer/:offerId/revive`
