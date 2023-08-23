# Contact
## Report
Send a report to customer support

```shell
curl https://api.peachbitcoin.com/v1/contact/report
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request
`POST /v1/contact/report`

### Body Parameters
Name | Type | Required | Description
--------- | ----------- | ----------- | -----------
`email` | `string` | yes | Your email to get in touch with
`topic` | `string` | yes | What the report is about
`reason` | `string` | yes | The reason for the report
`message` | `string` | yes | Message