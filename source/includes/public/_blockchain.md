# Blockchain

## Get Transaction
Get transaction data

```shell
curl https://api.peachbitcoin.com/v1/tx/4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b
```

> The above command returns JSON structured like this:

```json
{
  "txid": "4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b",
  "version": 1,
  "locktime": 0,
  "vin": [{
    "txid": "0000000000000000000000000000000000000000000000000000000000000000",
    "vout": 4294967295,
    "prevout": null,
    "scriptsig": "04ffff001d0104455468652054696d65732030332f4a616e2f32303039204368616e63656c6c6f72206f6e206272696e6b206f66207365636f6e64206261696c6f757420666f722062616e6b73",
    "scriptsig_asm": "OP_PUSHBYTES_4 ffff001d OP_PUSHBYTES_1 04 OP_PUSHBYTES_69 5468652054696d65732030332f4a616e2f32303039204368616e63656c6c6f72206f6e206272696e6b206f66207365636f6e64206261696c6f757420666f722062616e6b73",
    "is_coinbase": true,
    "sequence": 4294967295
  }],
  "vout": [{
    "scriptpubkey": "4104678afdb0fe5548271967f1a67130b7105cd6a828e03909a67962e0ea1f61deb649f6bc3f4cef38c4f35504e51ec112de5c384df7ba0b8d578a4c702b6bf11d5fac",
    "scriptpubkey_asm": "OP_PUSHBYTES_65 04678afdb0fe5548271967f1a67130b7105cd6a828e03909a67962e0ea1f61deb649f6bc3f4cef38c4f35504e51ec112de5c384df7ba0b8d578a4c702b6bf11d5f OP_CHECKSIG",
    "scriptpubkey_type": "p2pk",
    "value": 5000000000
  }],
  "size": 204,
  "weight": 816,
  "fee": 0,
  "status": {
    "confirmed": true,
    "block_height": 0,
    "block_hash": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f",
    "block_time": 1231006505
  }
}
```

### HTTP Request
`GET /v1/tx/:txId`


## Post Transaction
Get transaction data

```shell
curl -X POST -sSLd "01000000010000000000000000000000000000000000000000000000000000000000000000ffffffff4d04ffff001d0104455468652054696d65732030332f4a616e2f32303039204368616e63656c6c6f72206f6e206272696e6b206f66207365636f6e64206261696c6f757420666f722062616e6b73ffffffff0100f2052a01000000434104678afdb0fe5548271967f1a67130b7105cd6a828e03909a67962e0ea1f61deb649f6bc3f4cef38c4f35504e51ec112de5c384df7ba0b8d578a4c702b6bf11d5fac00000000" https://api.peachbitcoin.com/v1/tx
```

> The above command returns the txId if successful

```json
4a5e1e4baab89f3a32518a88c31bc87f618f76673e2cc77ab2127b7afdeda33b
```

### HTTP Request
`POST /v1/tx`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`tx` | `string` | yes | The transaction as hex

## Get Fee Estimates
Get the currently suggested fees for a new transaction

```shell
curl https://api.peachbitcoin.com/v1/estimateFees
```

> The above command returns JSON structured like this:

```json
{
  "fastestFee": 7,
  "halfHourFee": 7,
  "hourFee": 6.5,
  "economyFee": 6.2,
  "minimumFee": 6
}
```

### HTTP Request
`GET /v1/estimateFees`

