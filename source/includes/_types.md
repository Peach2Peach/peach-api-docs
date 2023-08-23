# Data Types

To ensure effective communication and compatibility between the API and its clients, a set of defined data types is used. These data types establish a consistent format for data exchange, reducing the risk of misunderstandings and errors. This section outlines the different data types employed in the system and their corresponding descriptions, serving as a quick reference for developers working with the API.

## PaymentMethod

All available payment methods can be requested via [System Info](#info).

## PaymentData

Payment data is a simple JSON object that contains the `type` which is the [`PaymentMethod`](#PaymentMethod) and payment fields + their value.


```typescript
type PaymentData = {
  type: PaymentMethod
  [key: string]: any
}
```

> Example

```json
{
  "type": "paypal",
  "email": "satoshi@gmx.com",
  "phone": "",
  "reference": "",
  "userName": ""
}
```

Payment Method        | Required Fields                  | Optional Fields
----------------------|----------------------------------|------------
`airtelMoney`         | `phone`                          | `reference`
`alias`               | `beneficiary`<br>`accountNumber` | `reference`
`bancolombia`         | `beneficiary`<br>`accountNumber` | `reference`
`bizum`               | `beneficiary`<br>`phone`         | `reference`
`blik`                | `beneficiary`<br>`phone`         | `reference`
`cbu`                 | `beneficiary`<br>`accountNumber` | `reference`
`chippercash`         | `userName`                       | `reference`
`cvu`                 | `beneficiary`<br>`accountNumber` | `reference`
`eversend`            | `userName`                       | `reference`
`fasterPayments`      | `beneficiary`<br>`ukBankAccount`<br>`ukSortCode` | `reference`
`friends24`           | `beneficiary`<br>`phone`         | `reference`
`giftCard.amazon.XZY` | `beneficiary`<br>`email`         | `reference`
`instantSepa`         | `beneficiary`<br>`iban`<br>`bic` | `reference`
`iris`                | `beneficiary`<br>`phone`         | `reference`
`keksPay`             | `beneficiary`<br>`phone`         | `reference`
`liquid`              | `receiveAddress`                 |
`lnurl`               | `lnurlAddress`                   |
`lydia`               | `beneficiary`<br>`phone`         | `reference`
`m-pesa`              | `phone`                          | `reference`
`mbWay`               | `beneficiary`<br>`phone`         | `reference`
`mercadoPago`         | At least one:<br>`phone`<br>`email` | `reference`
`mobilePay`           | `beneficiary`<br>`phone`         | `reference`
`moov`                | `phone`                          | `reference`
`mtn`                 | `phone`                          | `reference`
`n26`                 | `userName`<br>`email`<br>`phone` | `reference`
`nationalTransferBG`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferCZ`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferDK`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferHU`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferNO`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferPL`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferRO`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferTR`  | `beneficiary`<br>`iban` OR `accountNumber`<br>`bic` | `reference`
`nationalTransferNG`  | `beneficiary`<br>`accountNumber` | `reference`
`nequi`               | `beneficiary`<br>`phone`         | `reference`
`neteller`            | `beneficiary`<br>`email`         | `reference`
`orangeMoney`         | `phone`                          | `reference`
`papara`              | `beneficiary`<br>`phone`         | `reference`
`payday`              | `userName`                       | `reference`
`paylib`              | `beneficiary`<br>`phone`         | `reference`
`paypal`              | At least one:<br>`userName`<br>`email`<br>`phone` | `reference`
`paysera`             | `beneficiary`<br>`phone`         | `reference`
`rappipay`            | `phone`                          | `reference`
`revolut`             | `userName`<br>`email`<br>`phone` | `reference`
`satispay`            | `beneficiary`<br>`phone`         | `reference`
`sepa`                | `beneficiary`<br>`iban`<br>`bic` | `reference`
`sinpe`               | `beneficiary`<br>`iban`<br>`bic` | `reference`
`sinpeMovil`          | `beneficiary`<br>`phone`         | `reference`
`skrill`              | `beneficiary`<br>`email`         | `reference`
`straksbetaling`      | `beneficiary`<br>`accountNumber` | `reference`
`swish`               | `beneficiary`<br>`phone`         | `reference`
`twint`               | `beneficiary`<br>`phone`         | `reference`
`verse`               | `beneficiary`<br>`phone`         | `reference`
`vipps`               | `beneficiary`<br>`phone`         | `reference`
`wave`                | `phone`                          | `reference`
`wise`                | At least one:<br>`userName`<br>`email`<br>`phone` | `reference`

## MeansOfPayment

The means of payment are a map of currencies and [`PaymentMethod`](#PaymentMethod).

```typescript
type MeansOfPayment = {
  [key?: Currency]: PaymentMethod[]
}
```

> Example

```json
{
  "EUR": ["sepa", "paypal"],
  "CHF": ["twint", "paypal"]
}
```
