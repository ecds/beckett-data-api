# Entities API



## GET /entities/:id/letters?relation=destination

### GET entities/:id/letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| relation | relation | false | 
| relation | relation | false | 
| relation | relation | false | 
| relation | relation | false | 
| relation | relation | false | 

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET entities/8f6afe52-73de-45f7-b176-1e38c5b7d20a/letters?relation=destination</pre>

#### Query Parameters

<pre>relation: destination</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;bbeb67347056c280d50ea0cccc6c8fb5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ddf889bf-cb04-4992-acec-610448faa767
X-Runtime: 1.977747
Vary: Origin
Content-Length: 786</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1958-04-27",
  "max_date": "1972-10-12",
  "total_pages": 1,
  "letters": [
    {
      "id": "3a2f3bf3-d64e-4248-82ff-39d7874aa450",
      "label": "27 April 1958 - Lubowitz, Katelyn",
      "recipient": "Lubowitz, Katelyn",
      "repository": "South Welch College",
      "date": "27 April 1958"
    },
    {
      "id": "f83f1e76-b3ea-47ae-b9cf-edf650310458",
      "label": "16 March 1964 - Shanahan, Peggy",
      "recipient": "Shanahan, Peggy",
      "repository": "Western Littel Institute",
      "date": "16 March 1964"
    },
    {
      "id": "c0bf3478-e10e-46a0-a4a5-1cb700742443",
      "label": "29 January 1967 - Tromp, Michael",
      "recipient": "Tromp, Michael",
      "repository": "Eastern Ward",
      "date": "29 January 1967"
    },
    {
      "id": "e2347488-270e-48d5-9802-fe03aab42aec",
      "label": "12 October 1972 - Strosin, Taylor",
      "recipient": "Strosin, Taylor",
      "repository": "Skiles Institute",
      "date": "12 October 1972"
    }
  ]
}
~~~

