# Entities API



## GET /entities/:id/letters?relation=desination

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

<pre>GET entities/1580cb93-4463-484d-9724-2bc7eb5f9d94/letters?relation=desination</pre>

#### Query Parameters

<pre>relation: desination</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;421ef4fb650650ea0a40a895db99806c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8f9ae52d-6cea-437d-94ca-3c55c612ac3f
X-Runtime: 1.954775
Vary: Origin
Content-Length: 803</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1958-07-26",
  "max_date": "1967-01-13",
  "total_pages": 1,
  "letters": [
    {
      "id": "000a9ea5-05dc-4d61-ae10-f8af56ae68e4",
      "label": "26 July 1958 - Christiansen, Latrice",
      "recipient": "Christiansen, Latrice",
      "repository": "Eastern Georgia College",
      "date": "26 July 1958"
    },
    {
      "id": "800127ca-1827-4b76-a381-3cac66f0815c",
      "label": "15 June 1959 - Rutherford, Dusty",
      "recipient": "Rutherford, Dusty",
      "repository": "Gibson Academy",
      "date": "15 June 1959"
    },
    {
      "id": "8362ece5-1484-46bf-ab8b-d17c3c803b42",
      "label": "28 November 1965 - Feest, Niesha",
      "recipient": "Feest, Niesha",
      "repository": "Southern Schumm College",
      "date": "28 November 1965"
    },
    {
      "id": "f0659b6e-7cc8-44c7-91c2-6156ce7a5c6c",
      "label": "13 January 1967 - Turner, Ulysses",
      "recipient": "Turner, Ulysses",
      "repository": "Cummerata University",
      "date": "13 January 1967"
    }
  ]
}
~~~

