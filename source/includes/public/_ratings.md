## Ratings
Detailed ratings can be called separately.

#### Rating
Get public rating information

```shell
curl "https://api.peachtopeach.com/v1/rating/03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80"
```

> The above command returns JSON structured like this:

```json
{
  "id": "03e448b2397c1880e39853371af5346e7e7972c9d6e26dbbb39ff6c2227aa19c80",
  "rating": 0.4
}
```

##### HTTP Request
`GET /v1/rating/:userid`
