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
