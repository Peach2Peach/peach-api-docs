## System
### Status
Get system status related information.

```shell
curl "https://api.peachbitcoin.com/v1/system/status"
```

> The above command returns JSON structured like this:

```json
{
  "status": "online",
  "date": "2021-09-17T14:41:41.605Z",
  "serverTime": 1681831663815
}
```

#### HTTP Request
`GET /v1/system/status`
