# Errors

The Peach API uses the following error codes:

Error Code | ID                            | Description
-----------|-------------------------------|------------
400        | BAD_REQUEST                   | Your request is invalid.
400        | FORM_INVALID                  | The form data is invalid.
400        | INVALID_PGP_SIGNATURE         | The PGP signature is invalid.
400        | INVALID_SIGNATURE             | The signature is invalid.
400        | TRANSACTION_INVALID           | The transaction is invalid.
401        | AUTHENTICATION_FAILED         | Authentication failed.
401        | CANCELED                      | The operation was canceled.
401        | CANNOT_DOUBLEMATCH            | Unable to double match.
401        | CANNOT_MATCH                  | Unable to match.
401        | CONTRACT_EXISTS               | Contract already exists.
401        | NOT_ENOUGH_POINTS             | Not enough points for the operation.
401        | OFFER_TAKEN                   | Offer has already been taken.
401        | PAYMENT_HASH_INVALID          | Invalid payment hash.
401        | PGP_MISSING                   | PGP key is missing.
401        | TRADING_LIMIT_REACHED         | Trading limit has been reached.
401        | UNAUTHORIZED                  | Unauthorized access.
401        | USER_EXISTS                   | User already exists.
403        | ACCOUNT_BANNED                | Account is banned.
404        | NOT_FOUND                     | The requested resource was not found.
409        | ALREADY_TAKEN                 | The resource is already taken.
409        | DUPLICATE                     | Duplicate resource found.
429        | TOO_MANY_REQUESTS             | Too many requests.
451        | UNAVAILABLE_FOR_LEGAL_REASONS | Unavailable due to legal reasons (i.e. you request from a country peach does not offer it's services to)
500        | AUTHENTICATION_FAILURE        | Internal authentication error.
500        | INTERNAL_SERVER_ERROR         | Internal server error.
503        | SERVICE_UNAVAILABLE           | The service is currently unavailable.