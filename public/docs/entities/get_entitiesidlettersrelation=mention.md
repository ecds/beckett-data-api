# Entities API



## GET /entities/:id/letters?relation=mention

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

<pre>GET entities/129d5ee2-ddcb-4aed-9570-e939a44c9854/letters?relation=mention</pre>

#### Query Parameters

<pre>relation: mention</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;313e09f1bcf11584d96b3e346a400c33&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 748b508d-9901-4527-bb33-4ca5f1a2fbc4
X-Runtime: 1.896511
Vary: Origin
Content-Length: 609</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1981-07-11",
  "max_date": "1988-12-22",
  "total_pages": 1,
  "letters": [
    {
      "id": "be7ef08e-ca4b-46a8-a9b5-57db01f4e914",
      "label": "11 July 1981 - Roob, Romeo",
      "recipient": "Roob, Romeo",
      "repository": "Southern New Jersey University",
      "date": "11 July 1981"
    },
    {
      "id": "4a01fbaf-0646-4b50-8f01-5a2a02e24e05",
      "label": "11 November 1983 - Feil, Filiberto",
      "recipient": "Feil, Filiberto",
      "repository": "East Corwin College",
      "date": "11 November 1983"
    },
    {
      "id": "5c9d7e48-c3a4-46e7-b9e5-76fc15b2488c",
      "label": "22 December 1988 - Haley, Bryce",
      "recipient": "Haley, Bryce",
      "repository": "Schinner College",
      "date": "22 December 1988"
    }
  ]
}
~~~

