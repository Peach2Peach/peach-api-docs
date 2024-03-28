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

## Peach Market Stats History
Get the history of the buy and sell offers

```shell
curl https://api.peachbitcoin.com/v1/market/offers/stats/history
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
`POST /v1/market/offers/stats/history`


## Peach last trade
Get the price, amount, timestamp, and payment method of the last Peach trade, by market pair

```shell
curl https://api.peachbitcoin.com/v1/market/tick/BTCEUR
```

> The above command returns JSON structured like this:

```json
{
  "pair":"BTCEUR",
  "timestamp":1709290090559,
  "price":903.35,
  "amount":1500000,
  "paymentMethod":"revolut"
}
```
### HTTP Request
`GET /v1/market/tick/:pair/`

## Peach last trade by PM
Get the price, amount, and timestamp of the last Peach trade, by market pair AND Payment Method

```shell
curl https://api.peachbitcoin.com/v1/market/tick/BTCEUR/revolut
```

> The above command returns JSON structured like this:

```json
{
  "pair":"BTCEUR",
  "timestamp":1709290090559,
  "price":903.35,
  "amount":1500000,
  "paymentMethod":"revolut"
}
```
### HTTP Request
`GET /v1/market/tick/:pair/:paymentMethod/`


## Peach trade history
Get the price, amount, timestamp, and payment method of all Peach trades, by market pair

```shell
curl https://api.peachbitcoin.com/v1/market/ticks/BTCEUR
```

> The above command returns JSON structured like this:

```json
[
  {
    "pair":"BTCEUR",
    "timestamp":1654767685033,
    "price":15.52,
    "amount":50000,
    "paymentMethod":"paypal"
  },
  {
    "pair":"BTCEUR",
    "timestamp":1654768431373,
    "price":14.71,
    "amount":50000,
    "paymentMethod":"paypal"
  },
  [...]
]
```
### HTTP Request
`GET /v1/market/ticks/:pair/`

## Peach trade history by PM
Get the price, amount, and timestamp of all Peach trades, by market pair AND Payment Method

```shell
curl https://api.peachbitcoin.com/v1/market/ticks/BTCEUR/revolut
```

> The above command returns JSON structured like this:

```json
[
  {
    "pair":"BTCEUR",
    "timestamp":1655473494948,
    "price":11.96,
    "amount":50000,
    "paymentMethod":"revolut"
  },
  {
    "pair":"BTCEUR",
    "timestamp":1655489083690,
    "price":9.79,
    "amount":50000,
    "paymentMethod":"revolut"
  },
  {
    "pair":"BTCEUR",
    "timestamp":1656911075585,
    "price":11.07,
    "amount":50000,
    "paymentMethod":"revolut"
  },
  [...]
]
```
### HTTP Request
`GET /v1/market/tick/:pair/:paymentMethod/`


