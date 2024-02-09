# Market

## Market price
Get average market price of given pair

```shell
curl https://api.peachbitcoin.com/v1/market/price/BTCEUR
```

> The above command returns JSON structured like this:

```json
{
  "pair": "BTCEUR",
  "price": 27455.04,
  "date": "2023-04-18T15:28:35.525Z"
}
```

### HTTP Request
`GET /v1/market/price/:pair/`

## Market prices
Get average market prices of all trading pairs

```shell
curl https://api.peachbitcoin.com/v1/market/prices
```

> The above command returns JSON structured like this:

```json
{
  "EUR": 27498.77,
  "CHF": 27191.85,
  "GBP": 24226.61,
  "CZK": 642058.31,
  "DKK": 204269.47,
  "HUF": 10183871.09,
  "PLN": 127195.74,
  "NOK": 315166.26,
  "SEK": 309890.83,
  "BGN": 53293.11,
  "ISK": 4098123.85,
  "RON": 135766.28
}
```

### HTTP Request
`GET /v1/market/prices`

## Peach Market stats
Get all the current buy and sell offers and the average premium

```shell
curl https://api.peachbitcoin.com/v1/market/offers/stats
```

> The above command returns JSON structured like this:

```json
{
  "buy":
  {
    "open":2593
  },
  "sell":
  {
    "open":6942,
    "avgPremium":2.14
  }
}
```

### HTTP Request
`GET /v1/market/offers/stats`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`matchingOfferId` | `string` | yes | ID of offer you want to match
`currency` | `string` | yes | The currency to match with
`paymentMethod` | `string` | yes |  The payment method to match with
`premium` | `string` | no | Send the premium to ensure you match with the expected premium (in case the seller just changes it)
`symmetricKeyEncrypted` | `string` | yes | PGP encrypted symmetric key. Ensure that the symmetric key is random and of sufficient entropy
`symmetricKeySignature` | `string` | yes | PGP signature of symmetric key for verification
