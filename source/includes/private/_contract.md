# Contract (Private)

## Contract Details
Get details of a specific contract

```shell
curl https://api.peachbitcoin.com/v1/contract/123-456
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns JSON structured like this:

```json
{
  "amount": 90000,
  "batchId": "26dc44bbe...f5de2",
  "batchReleasePsbt": "cHNid...sAAA=",
  "batchRevocationToken": "b9743b241f72484a8d77bb0b83b1a16e",
  "buyer": {
    "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
    ...
  },
  "buyerFee": 0.02,
  "cancelationRequested": false,
  "canceled": false,
  "country": "LV",
  "creationDate": "2023-08-17T07:57:41.789Z",
  "currency": "EUR",
  "disputeAcknowledgedByCounterParty": false,
  "disputeActive": false,
  "disputeDate": null,
  "disputeOutcomeAcknowledged": false,
  "disputeOutcomeAcknowledgedBy": [],
  "disputeResolvedDate": null,
  "escrow": "bc1qlhq...6u2vd",
  "hashedPaymentData": ["e1155ed7332cbe829987d033a0266f6278067969db76cfe7448388a193ba2cf6"],
  "id": "57-51",
  "isChatActive": true,
  "isEmailRequired": false,
  "lastModified": "2023-08-17T07:58:51.007Z",
  "messages": 0,
  "paymentConfirmed": "2023-08-17T07:57:54.663Z",
  "paymentDataEncrypted": "-----BEGIN PGP MESSAGE-----...----END PGP MESSAGE-----",
  "paymentDataSignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----",
  "paymentExpectedBy": "2137-12-20T23:00:00.000Z",
  "paymentMade": "2023-08-17T07:57:50.640Z",
  "paymentMethod": "cash.lv.riga.baltic-honeybadger",
  "premium": 4,
  "price": 25,
  "priceCHF": 23.94,
  "ratingBuyer": 1,
  "ratingSeller": 1,
  "releaseAddress": "bcrt1qzvle5erusx9lsqmpgq4ej5rfjdp94r04jnaj07",
  "releasePsbt": "cHNidP8...sAAAA",
  "releaseTransaction": "02000000000...028de75fd2ff22ac00000000",
  "releaseTxId": "24efff....46164",
  "seller": {
    "id": "02c3f68178d567253170cd47c896c5e4045e40026ef6f1e2e361d968552dc02496",
    ...
  },
  "sellerFee": 0,
  "symmetricKeyEncrypted": "-----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
  "symmetricKeySignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----",
  "tradeStatus": "tradeCompleted",
  "unreadMessages": 0
}
```

### HTTP Request
`GET /v1/contract/:contractId`

## Contract Summaries
Get summaries of a all user contracts

```shell
curl https://api.peachbitcoin.com/v1/contracts/summary
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns JSON structured like this:

```json
[{
  "amount": 50000,
  "contractId": "1-22",
  "creationDate": "2023-08-10T09:50:41.716Z",
  "fundingTxId": "841b15...1e05",
  "id": "1",
  "lastModified": "2023-08-11T09:38:01.154Z",
  "matches": [],
  "prices": {
    "EUR": 13.03
  },
  "tradeStatus": "tradeCompleted",
  "type": "ask"
}, {
  "amount": 50000,
  "contractId": "2-24",
  "creationDate": "2023-08-10T09:50:41.716Z",
  "fundingTxId": "841b15...1e05",
  "id": "2",
  "lastModified": "2023-08-11T09:43:26.043Z",
  "matches": [],
  "prices": {
    "EUR": 13.03
  },
  "tradeStatus": "tradeCompleted",
  "type": "ask"
}]
```

### HTTP Request
`GET /v1/contracts/summary`

## Contracts
Get details of a all user contracts

```shell
curl https://api.peachbitcoin.com/v1/contracts
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns JSON structured like this:

```json
[{
  "amount": 90000,
  "batchId": "26dc44bbe...f5de2",
  "batchReleasePsbt": "cHNid...sAAA=",
  "batchRevocationToken": "b9743b241f72484a8d77bb0b83b1a16e",
  "buyer": {
    "id": "03a73739b3f005fccb3f02ebeb2eae41b5d5c0c7dd3d448a00185c2c07f2b55dd1",
    ...
  },
  "buyerFee": 0.02,
  "cancelationRequested": false,
  "canceled": false,
  "country": "LV",
  "creationDate": "2023-08-17T07:57:41.789Z",
  "currency": "EUR",
  "disputeAcknowledgedByCounterParty": false,
  "disputeActive": false,
  "disputeDate": null,
  "disputeOutcomeAcknowledged": false,
  "disputeOutcomeAcknowledgedBy": [],
  "disputeResolvedDate": null,
  "escrow": "bc1qlhq...6u2vd",
  "hashedPaymentData": ["e1155ed7332cbe829987d033a0266f6278067969db76cfe7448388a193ba2cf6"],
  "id": "57-51",
  "isChatActive": true,
  "isEmailRequired": false,
  "lastModified": "2023-08-17T07:58:51.007Z",
  "messages": 0,
  "paymentConfirmed": "2023-08-17T07:57:54.663Z",
  "paymentDataEncrypted": "-----BEGIN PGP MESSAGE-----...----END PGP MESSAGE-----",
  "paymentDataSignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----",
  "paymentExpectedBy": "2137-12-20T23:00:00.000Z",
  "paymentMade": "2023-08-17T07:57:50.640Z",
  "paymentMethod": "cash.lv.riga.baltic-honeybadger",
  "premium": 4,
  "price": 25,
  "priceCHF": 23.94,
  "ratingBuyer": 1,
  "ratingSeller": 1,
  "releaseAddress": "bcrt1qzvle5erusx9lsqmpgq4ej5rfjdp94r04jnaj07",
  "releasePsbt": "cHNidP8...sAAAA",
  "releaseTransaction": "02000000000...028de75fd2ff22ac00000000",
  "releaseTxId": "24efff....46164",
  "seller": {
    "id": "02c3f68178d567253170cd47c896c5e4045e40026ef6f1e2e361d968552dc02496",
    ...
  },
  "sellerFee": 0,
  "symmetricKeyEncrypted": "-----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
  "symmetricKeySignature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----",
  "tradeStatus": "tradeCompleted",
  "unreadMessages": 0
}]
```

### HTTP Request
`GET /v1/contracts`

## Confirm Payment Made
Buyer: confirm that payment has been made.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/payment/confirm"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{ "success": true}
```

### HTTP Request
`POST /v1/contract/:contractId/payment/confirm`


## Confirm Payment Received
Confirm a payment has been made.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/payment/confirm"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{ "txId": "24efff...46164" }
```

### HTTP Request
`POST /v1/contract/:contractId/payment/confirm`



## Rate Counterparty
After a trade has been completed, you can rate your counterparty.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/user/rate"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
{ "success": true }
```

### HTTP Request
`POST /v1/contract/:contractId/user/rate`


### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`rating` | `-1` or `1` | yes | The rating to give your counterparty. -1 = 👎 and 1 = 👍
`signature` | `string` | yes | The signature of the sha256 hash of the counter party's user id signed with the corresponding private key of your user id.



## Cancel Contract
Cancels a contract as long as payment has not yet been made or at any time during cash trades. You cannot cancel while a dispute is active.

As a seller, this will request contract cancelation unless it's a cash trade or the time to make the payment has run out for the buyer.


```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/cancel"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this if you are the buyer:

```json
{ "success": true }
```

> If you are the seller, and you can cancel right away, you'll receive a presigned PSBT for refund. The above command returns a response like this 

```json
{ "psbt": "cHNidP8...sAAAA" }
```

### HTTP Request
`POST /v1/contract/:contractId/cancel`


## Confirm Cancelation Request
After a seller requests cancelation, this endpoint will confirm and effectively cancel the contract.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/cancel/confirm"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this if you are the buyer:

```json
{ "success": true }
```


### HTTP Request
`POST /v1/contract/:contractId/cancel/confirm`



## Reject Cancelation Request
After a seller requests cancelation, this endpoint will reject the request and the trade will continue

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/cancel/reject"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this if you are the buyer:

```json
{ "success": true }
```


### HTTP Request
`POST /v1/contract/:contractId/cancel/reject`


## Extend Payment Time
As a seller you have to wait up to 12 hours for the buyer to claim that the payment has been made. After this time runs out, you have the choice to extend the time or cancel the trade. This endpoint allows you to extend the timer by another 12 hours

```shell
curl -X PATCH https://api.peachbitcoin.com/v1/contract/123-456/cancel/extendTime
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this if you are the buyer:

```json
{ "success": true }
```


### HTTP Request
`POST /v1/contract/:contractId/cancel/extendTime`


## Chat Log
Receive chat history.

```shell
curl -X GET https://api.peachbitcoin.com/v1/contract/123-456/chat
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```json
[
  {
    "date": "2021-09-17T14:41:41.605Z",
    "from": "26dc...5de2",
    "message": "----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
    "readBy": ["26dc...5de2"],
    "roomid": "123-456",
    "signature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----"
  }
  {
    "date": "2021-09-17T14:42:14.2345Z",
    "from": "26dc...5de2",
    "message": "----BEGIN PGP MESSAGE-----...-----END PGP MESSAGE-----",
    "readBy": ["26dc...5de2"],
    "roomid": "123-456",
    "signature": "-----BEGIN PGP SIGNATURE-----...-----END PGP SIGNATURE-----"
  }
]
```

### HTTP Request
`GET /v1/contract/:contractId/chat`

### Query Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`page` | `number` | no | The page of the chat history. Each page contains 21 messages


## Post Chat Message
Send a message via chat

```shell
curl -X GET https://api.peachbitcoin.com/v1/contract/123-456/chat
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: multipart/form-data' \
-F 'message="Here is the proof of payment "'
```

> The above command returns a response like this:

```
{ "success": true }
```

### HTTP Request
`POST /v1/contract/:contractId/chat`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`message` | `string` | yes | The message to be sent (encrypted with `symmetricKey`)
`signature` | `string` | yes | The PGP signature of the message

## Set Chat Message Read
Tell server that messages have been read

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/123-456/chat/received"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
{ "success": true }
```

### HTTP Request
`POST /v1/contract/:contractId/chat/received`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`start` | `number` | yes | The starting index of read messages
`end` | `number` | yes | The last index of read messages

## Raise a Dispute
Raise a dispute

```shell
curl -X GET https://api.peachbitcoin.com/v1/contract/123-456/dispute
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
{ "success": true }
```

### HTTP Request
`POST /v1/contract/:contractId/dispute`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`email` | `string` | depends | The email to get in touch with, required when reason is `noPayment.seller` or `noPayment.buyer`
`reason` | `string` | yes | The reason for the dispute: `noPayment.seller`,`noPayment.buyer`, `unresponsive.seller`, `unresponsive.buyer`, `abusive`,`other`
`message` | `string` | no | A short description as to why the dispute has been raised
`symmetricKeyEncrypted` | `string` | yes | The symmetric key used to share secrets with counter party. Encrypt this key with the public PGP key.



## Acknowledge a Dispute
Acknowlegde a dispute when it has been raised against you

```shell
curl -X GET https://api.peachbitcoin.com/v1/contract/123-456/dispute/acknowledge
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
{ "success": true }
```

### HTTP Request
`POST /v1/contract/:contractId/dispute/acknowledge`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`email` | `string` | depends | The email to get in touch with, required when reason is `noPayment.seller` or `noPayment.buyer`


## Acknowledge a Dispute Outcome
Inform peach and counterparty that you have acknowledged the dispute outcome

```shell
curl -X GET https://api.peachbitcoin.com/v1/contract/123-456/dispute/acknowledgeOutcome
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
{ "success": true }
```

### HTTP Request
`POST /v1/contract/:contractId/dispute/acknowledgeOutcome`

