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


## Payment Method Info
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
{
  "paypal": {
    "mandatory": [
      [["userName"], ["email"], ["phone"]]
    ],
    "optional": ["reference"]
  },
  "sepa": {
    "mandatory": [
      [["beneficiary"]],
      [["iban"]],
      [["bic"]]
    ],
    "optional": ["reference"]
  },
  "nationalTransfer": {
    "mandatory": [
      [["beneficiary"]],
      [["iban", "bic"], ["accountNumber"]]
    ],
    "optional": ["reference"]
  }
}
```

### HTTP Request
`GET /v1/info`
