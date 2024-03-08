# System

## Status

Get system status related information.

```shell
curl https://api.peachbitcoin.com/v1/system/status
```

> The above command returns JSON structured like this:

```json
{
  "error": null,
  "status": "online",
  "serverTime": 1692788403879
}
```

### HTTP Request

`GET /v1/system/status`

## Info

Retrieve information about the Peach API

```shell
curl https://api.peachbitcoin.com/v1/info
```

> The above command returns JSON structured like this:

```json
{
  "peach": {
    "pgpPublicKey": "-----BEGIN PGP PUBLIC KEY BLOCK-----\n\nxjMEY...3kzT\n-----END PGP PUBLIC KEY BLOCK-----\n"
  },
  "fees": {
    "escrow": 0.02
  },
  "paymentMethods": [{
    "id": "sepa",
    "currencies": ["EUR"],
    "anonymous": false
  }, {
    "id": "instantSepa",
    "currencies": ["EUR"],
    "anonymous": false
  }, {
    "id": "paypal",
    "currencies": ["EUR", "CHF", "GBP", "CZK", "DKK", "HUF", "PLN", "NOK", "SEK"],
    "anonymous": false
  },
  ...
  ],
  "minAppVersion": "0.2.8",
  "latestAppVersion": "0.2.12"
}
```

### HTTP Request

`GET /v1/info`

## News

Get the current news popup displayed in the Peach app

```shell
curl https://api.peachbitcoin.com/V1/info/news
```

> The above command returns JSON structure like this:

```json
[
  {
    "text": "Orange pill a woman today! Best gift you can give for International Women Day! ",
    "shareText": "Orange pill a woman today! Best gift you can give for International Women Day! ",
    "url": "https://peachbitcoin.com/"
  }
]
```

### HTTP Request

`GET /v1/info/news`

## Payment Methods Info

Retrieve information about supported payment methods and their payment data fields templates

Note that the mandatory fields are arranged logically to express whether all are mandatory or either/or.

So following the example structure, the fields could be expressed as following logical operators:

- paypal: `userName || email || phone`
- sepa: `beneficiary && iban && bic`
- nationalTransfer: `beneficiary && ((iban && bic) || accountNumber)`

```shell
curl https://api.peachbitcoin.com/v1/info/paymentMethods
```

> The above command returns JSON structured like this:

```json
[
  {
    "id":"sepa",
    "fields": {
      "mandatory": [
        [["beneficiary"]],[["iban"]],[["bic"]]
      ],
      "optional": ["reference"]
    },
    "currencies": ["EUR"],
    "anonymous": false
  },
  {
    "id":"instantSepa",
    "fields": {
      "mandatory": [
        [["beneficiary"]],[["iban"]],[["bic"]]
      ],
      "optional": ["reference"]
    },
    "currencies": ["EUR"],
    "anonymous": false
  },
  {
    "id":"paypal",
    "fields": {
      "mandatory": [
        [["userName"],["email"],["phone"]]
      ],
      "optional": ["reference"]
    },
    "currencies": ["EUR","CHF","GBP","CZK","DKK","HUF","PLN","NOK","SEK"],
    "anonymous": false
  },
  [...]
]
```

### HTTP Request

`GET /v1/info/paymentMethods`

## Single Payment Method info

Retrieve information about a specific Payment Method.
Note that the mandatory fields are arranged logically to express whether all are mandatory or either/or.

So following the example structure, the fields could be expressed as following logical operators:

- paypal: `userName || email || phone`
- sepa: `beneficiary && iban && bic`
- nationalTransfer: `beneficiary && ((iban && bic) || accountNumber)`

```shell
curl https://api.peachbitcoin.com/v1/info/paymentMethod/paypal
```

> The above command returns JSON structured like this:

```json
{
  "id":"paypal",
  "fields":{
    "mandatory": [
      [["userName"],["email"],["phone"]]
    ],
    "optional": ["reference"]
  },
  "currencies": ["EUR","CHF","GBP","CZK","DKK","HUF","PLN","NOK","SEK"],
  "anonymous":false
}
```

### HTTP Request

`GET /v1/info/paymentMethod/:paymentMethod`

## Captcha Challenge

Retrieves a captcha challenge to be solved by the user.

Peach app uses this endpoint from a webview when Cloudflare denies access to the Peach API.


```shell
curl https://api.peachbitcoin.com/v1/human/verify
```

> The above command returns HTML structured like this:

```html
<html>
    <body>
    <script>
          if (window.ReactNativeWebView) window.ReactNativeWebView.postMessage(JSON.stringify({
            userAgent: window.navigator.userAgent,
            cfClearance: "undefined"
          }))
        </script>
    </body>
</html>
```

### HTTP Request
`GET /v1/human/verify`
