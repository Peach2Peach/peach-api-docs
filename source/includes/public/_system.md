# System
## Status
Get system status related information.

```shell
curl https://api.peachbitcoin.com/v1/system/status
```

> The above command returns JSON structured like this:

```json
{
  "status": "online",
  "date": "2021-09-17T14:41:41.605Z",
  "serverTime": 1681831663815
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
`GET /v1/system/info`
