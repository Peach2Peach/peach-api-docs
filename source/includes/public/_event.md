# Events

## Get Events
Get all bitcoin events collaborating with Peach

```shell
curl https://api.peachbitcoin.com/v1/events
```

> The above command returns JSON structured like this:

```json
[
  "id": "lv.riga.baltic-honeybadger",
  "featured": true,
  "superFeatured": true,
  "currencies": [
    "EUR"
  ],
  "country": "LV",
  "city": "Riga",
  "shortName": "Baltic Honeybadger",
  "longName": "Baltic Honeybadger",
  "url": "https://baltichoneybadger.com/",
  "frequency": "September 2-3, 2023",
  "logo": "/v1/events/logo/baltic.jpg"
}
]
```

### HTTP Request
`GET /v1/events`
