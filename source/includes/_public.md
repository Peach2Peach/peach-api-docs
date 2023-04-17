# Public API

# System

## Status

Get system status related information.


```shell
curl "https://api.peachtopeach.com/v1/system/status"
```

> The above command returns JSON structured like this:

```json
{
  "status": "online",
  "date": "2021-09-17T14:41:41.605Z"
}
```
### HTTP Request

`GET /v1/system/status`


# Market
## Market price

Get average market price of given pair



```shell
curl "https://api.peachtopeach.com/v1/market/BTCEUR"
```

> The above command returns JSON structured like this:

```json
{
  "pair": "BTCEUR",
  "price": 40503.32
}
```

### HTTP Request

`GET /v1/market/price/:pair/`


## Order book

Get the order book for a given pair. bucket.



```shell
curl "https://api.peachtopeach.com/v1/market/orderbook"
```

> The above command returns JSON structured like this:

```json
[
  {
    "offerId": 20219948,
    "amount": 1000000,
    "prices": {
      "EUR": 40563.34,
      "CHF": 44332.08
    },
    "rating": 0.75,
    "kyc": false
  },
  {
    "offerId": 20219953,
    "amount": 1000000,
    "prices": {
      "EUR": 40863.34
    },
    "rating": 0.85,
    "kyc": false
  },
  ...
],

```
### HTTP Request

`GET /v1/market/orderbook/?type=ask&bucket=1M&currencies=EUR,CHF&paymentmethods=sepa,paypal&kyc=false&page=0`


### URL Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
type | string | yes | `ask` or `bid`
amount | string | yes | Amount in sats <br/> Possible values: `250k` `500k` `1M` `2M` `5M`
currencies | string | yes | Show offers of specific currency. Can be comma separated list <br />Possible values: `EUR` `CHF` `GBP` `SEK`
paymentmethods | string | yes | Show offers for specific paymentmethods. Can be comma separated list <br />Possible values: `sepa`
kyc | boolean | no | If true, show KYC offers as well
page | number | no | Paginate results, each page shows 100 offers




## Get offer

Get information of an offer.



```shell
curl "https://api.peachtopeach.com/v1/offer/20219953"
```

> The above command returns a response like this:

```json
{
  "offerId": 20219953,
  "type": "ask",
  "amount": 1000000,
  "prices": {
    "EUR": 40563.34,
    "CHF": 44332.08
  },
  "currencies": ["EUR"],
  "paymentMethods": ["sepa", "paypal"],
  "kyc": false,
  "rating": 0.75
}
{
  "paymentMethods": [
    "sepa"
  ],
  "currencies": [
    "EUR"
  ],
  "escrow": "bc1qj03pwvza7yeere53pmq97nqdt4skqrquljyz26l9f6ygak9vcrpqkd4lgk",
  "premium": "5",
  "kyc": "false",
  "amount": "1M",
  "offerId": "9",
  "returnAddress": "1BitcoinEaterAddressDontSendf59kuE",
  "type": "bid"
}
```

### HTTP Request

`GET /v1/offer/:offerId`

# Ratings

Detailed ratings can be called separately.
## Rating

Get public rating information



```shell
curl "https://api.peachtopeach.com/v1/rating/03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80"
```

> The above command returns JSON structured like this:

```json
{
  "id": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
  "rating": 0.4
}
```

### HTTP Request

`GET /v1/rating/:userid`


# Users

## User

Get public user information



```shell
curl "https://api.peachtopeach.com/v1/user/123456789"
```

> The above command returns JSON structured like this:

```json
{
  "id": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
  "rating": 0.4
}
```

### HTTP Request
`GET /v1/orderbook/user/:userid`

