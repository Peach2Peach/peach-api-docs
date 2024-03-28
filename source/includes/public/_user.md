# Users

## User
Get public user information

```shell
curl https://api.peachbitcoin.com/v1/user/0213583209ada26c16e5c3157d86809f8fd46e602936a4e3d51cd988a42ebe19f3
```

> The above command returns JSON structured like this:

```json
{
  "id": "0213583209ada26c16e5c3157d86809f8fd46e602936a4e3d51cd988a42ebe19f3",
  "creationDate": "2023-03-01T13:39:55.942Z",
  "trades": 1738,
  "rating": 0.946,
  "historyRating": 0.975,
  "ratingCount": 45,
  "peachRating": 0.924,
  "userRating": 1,
  "recentRating": 0.926,
  "medals": [
    "superTrader",
    "ambassador"
  ],
  "disputes": {
    "opened": 4,
    "won": 1,
    "lost": 1
  },
  "pgpPublicKey": "-----BEGIN PGP PUBLIC KEY BLOCK-----...-----END PGP PUBLIC KEY BLOCK-----",
  "pgpPublicKeyProof": "3b55cc1bf439d4...acf36ae",
  "pgpPublicKeys": [
    {
      "publicKey": "-----BEGIN PGP PUBLIC KEY BLOCK-----...-----END PGP PUBLIC KEY BLOCK-----",
      "proof": "3b55cc1bf439d4...acf36ae"
    }
  ]
}
```

### HTTP Request
`GET /v1/user/:userId`


## Rating
Get public user rating information

```shell
curl https://api.peachbitcoin.com/v1/user/03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80/ratings
```

> The above command returns JSON structured like this:

```json
[
  {
    "creationDate": "2023-03-01T13:53:40.403Z",
    "rating": 1,
    "ratedBy": "030d2971c1aef59ab5d6ca64e24a2381ebfe7e54066986dc713dd14e294dfed9ee",
    "signature": "8605755dd0f5b41e13ec82e1086d8c4e27db721acf89f7648e5e0947e0003de15d0b6f8958b363cba3904073e2cd88ab3cb6c05d5e875655334902a40f18aeb5"
  }
]
```

### HTTP Request
`GET /v1/user/:userId/ratings`

## Referral code
Check if referral code exists

```shell
curl https://api.peachbitcoin.com/v1/user/referral?code=SATOSHI
```

> The above command returns JSON structured like this:

```json
{
  "valid": true
}
```

### HTTP Request
`GET /v1/user/referral?code=SATOSHI`

### Query Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`code` | `string` | yes | Referral code to check
