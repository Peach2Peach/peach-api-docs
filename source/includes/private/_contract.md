## Contract

### Send Payment Data
Seller: Send payment instructions to buyer.


```shell
curl -X PUT "https://api.peachbitcoin.com/v1/contract/12355/payment"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
-H 'Content-Type: application/json' \
--data-raw '{
  "paymentData": "----BEGIN PGP MESSAGE-----\nVersion: openpgp-mobile\n\nwcBMA87af...aVDdeLlS0at\n4R9lAA==\n=7wbG\n-----END PGP MESSAGE-----",
}'
```

> The above command returns a response like this:

```
200 OK
```

#### HTTP Request

`POST /v1/contract/:contractId/payment`
#### Body Parameters

Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
paymentData | string | yes | Send encrypted payment data

### Payment made
Buyer: confirm that payment has been made.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/12355/payment"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

#### HTTP Request
`POST /v1/contract/:contractId/payment`


### Confirm Payment Received
Confirm a payment has been made.

```shell
curl -X POST "https://api.peachbitcoin.com/v1/contract/12355/payment/confirm"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28'
```

> The above command returns a response like this:

```
200 OK
```

#### HTTP Request
`POST /v1/contract/:contractId/payment/confirm`

### Chat log
Receive chat history. Specificy end date as unix timestamp and receive the last 50 messages from that point.

```shell
curl -X GET "https://api.peachbitcoin.com/v1/contract/12355/chat"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: application/json'
```

> The above command returns a response like this:

```json
[
  {
    "date": "2021-09-17T14:41:41.605Z",
    "message": "----BEGIN PGP MESSAGE-----\nVersion: openpgp-mobile\n\nwcBMA87af...aVDdeLlS0at\n4R9lAA==\n=7wbG\n-----END PGP MESSAGE-----",
    "attachments": [
      "https://peachtopeach.com/path/to/resource.png"
    ]
  }
  {
    "date": "2021-09-17T14:42:14.2345Z",
    "message": "----BEGIN PGP MESSAGE-----\nVersion: openpgp-mobile\n\nwcBMA87af...aVDdeLlS0at\n4R9lAA==\n=7wbG\n-----END PGP MESSAGE-----",
    "attachments": []
  }
]
```

#### HTTP Request
`GET /v1/contract/:contractId/chat`

#### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
to | number | no | unix timestamp to


### Post chat message
Send a message via chat

```shell
curl -X GET "https://api.peachbitcoin.com/v1/contract/12355/chat"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
-H 'Content-Type: multipart/form-data' \
-F 'message="Here is the proof of payment "' \
-F '=@"payment-proof.png"'
```

> The above command returns a response like this:

```
200 OK
```

#### HTTP Request
`POST /v1/contract/:contractId/chat`

#### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
message | string | yes | The message to be sent
peachOnly | boolean | no | If true, only Peach Support Team can read the message
attachment | image | no | Image to attach

### Start a dispute
Start a dispute

```shell
curl -X GET "https://api.peachbitcoin.com/v1/contract/12355/dispute"
-H 'Authorization: Bearer 5294ed7a-18dd-4ce7-ab9e-3ecda4c54f28' \
```

> The above command returns a response like this:

```
200 OK
```

#### HTTP Request
`POST /v1/contract/:contractId/dispute`
