## User (private)

`POST /v1/user/register`
`POST /v1/user/auth`

### Title
Get current user's info.

```shell
curl -X GET "https://api.peachbitcoin.com/v1/user/me"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```json
{
  "id": "02d6...fda",
  "linkedIds": [],
  "disabled": false,
  "creationDate": "2023-07-05T15:40:49.931Z",
  "lastModified": "2023-06-03T13:55:32.109Z",
  "trades": 1,
  "kyc": false,
  "rating": 1,
  "peachRating": 1,
  "userRating": 1,
  "historyRating": 1,
  "recentRating": 1,
  "ratingCount": 1,
  "medals": ["superTrader"],
  "pgpPublicKey": "-----BEGIN PGP PUBLIC KEY BLOCK-----...-----END PGP PUBLIC KEY BLOCK-----",
  "pgpPublicKeyProof": "0bc8c45148d9...960e5e",
  "fcmToken": "the fcm token",
  "uniqueId": "e3b0c44298fc...b855",
  "referralCode": "PEACH",
  "usedReferralCode": "SATOSHI",
  "referredTradingAmount": 21000000,
  "bonusPoints": 2100,
  "disputes": {
    "opened": 0,
    "won": 0,
    "lost": 0
  },
  "feeRate": 1,
  "freeTrades": 0,
  "maxFreeTrades": 0
}
```

#### HTTP Request

`GET /v1/user/me`




### Trading limit
Get your current trading limits.

```shell
curl -X GET "https://api.peachbitcoin.com/v1/user/tradingLimit"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```json
{
  "daily": 1000,
  "dailyAmount": 21,
  "yearly": 100000,
  "yearlyAmount": 615,
  "monthlyAnonymous": 1000,
  "monthlyAnonymousAmount": 0
}
```

#### HTTP Request

`GET /v1/user/tradingLimit`

### Update user
Update your pgp keys, fcmToken (push notifications), used referral code and fee rate.

```shell
curl -X PATH "https://api.peachbitcoin.com/v1/user"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```json
{ "success": true }
```

#### HTTP Request

`PATCH /v1/user`

#### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`pgpPublicKey` | `string` | no | PGP public key to set
`message` | `string` | yes if `pgpPublicKey` is passed | Message to be signed with secret PGP keys
`pgpSignature` | `string` | yes if `pgpPublicKey` is passed | Signature for message
`signature` | `string` | yes if `pgpPublicKey` is passed | Signature by the peach account of the new `pgpPublicKey` as message
`fcmToken` | `string` | no | token for receiving push notifications
`referralCode` | `string` | no | Used referral code
`feeRate` | `string|number` | no | Can be a fixed fee rate if passed as `number`. But also the following enums are allowed: 'fastestFee' | 'halfHourFee' | 'hourFee' | 'economyFee' | 'minimumFee'



### Logout
Logout consist of unregistering for push notifications.

```shell
curl -X PATH "https://api.peachbitcoin.com/v1/user/logout"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```json
{ "success": true }
```

#### HTTP Request

`PATCH /v1/user/logout`

#### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
name | type | yes|no | description


### Redeem custom referral code
Redeem peach bonus points and register a new referral code to shill. Old referral codes keep working.

```shell
curl -X PATCH "https://api.peachbitcoin.com/v1/user/referral/redeem/referralCode"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```json
{
  "success": true,
  "bonusPoints": 21
}
```

#### HTTP Request

`PATCH /v1/user/referral/redeem/referralCode`

#### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
code | string | yes | Alphanumeric referral code to register


### Redeem free trades
Redeem peach bonus points and receive free trades credited onto your peach account

```shell
curl -X PATCH "https://api.peachbitcoin.com//v1/user/referral/redeem/fiveFreeTrades"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```json
{
  "success": true,
  "bonusPoints": 21
}
```

`PATCH /v1/user/referral/redeem/fiveFreeTrades`