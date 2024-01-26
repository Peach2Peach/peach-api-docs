# Offer

## Get Offer
Get offer details as long as the offer is online

```shell
curl -X GET https://api.peachbitcoin.com/v1/offer/114
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
  }
}
```

### HTTP Request

`GET /v1/offer/:offerId`



## Search Offers
Search offer through offer preferences

```shell
curl -X POST https://api.peachbitcoin.com/v1/offer/search?page=0&size=10&sortBy=lowestPremium
-H 'Content-Type: application/json' \
--data-raw '{
  "type": "ask",
  "amount": [30000, 2000000],
  "meansOfPayment": { "EUR": ["sepa"] },
  "maxPremium": 10,
  "minReputation": 0.5
}'
```

> The above command returns a response like this:

```json
{
  "offers": [{
      "id": "123456",
      "type": "ask",
      "user": {
        "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
        ...
      },
      "amount": 1000000,
      "meansOfPayment": { "EUR": [ "sepa" ] },
      "online": true,
      "publishingDate": "2024-01-25T16:22:01.202Z",
      "premium": 10,
      "prices": {
        "EUR": 407.77
      },
      "escrow": "bc1q...5al"
    },
    ...
  ],
  "total": 32,
  "remaining": 22
}
```

### HTTP Request

`POST /v1/offer/search`


### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`type` | `string` | no | The offer type to filter for: `ask|bid`
`amount` | <code>number&#124;[number,number]</code> | no | The offer amount or a range to filter for
`meansOfPayment` | [`MeansOfPayment`](#meansofpayment) | no | Object with `Currency` as keys and array of [`paymentMethod`](#paymentmethod) ids as values
`maxPremium` | `number` | no | The maximum premium sell offers should show for
`minReputation` | `number` | no | The minimum reputation the users need to have (it is a number between `-1` and `1`)




### Query Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`page` | `string` | no | The page number for paginated results
`size` | `string` | no | The page size
`sortBy` | `string` | no | Comma separated list of sorting rules (`bestReputation`, `highestAmount`, `highestPrice`, `lowestPremium`)




