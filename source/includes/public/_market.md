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
