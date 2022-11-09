# Entities API



## GET /entities/:id/letters?relation=origin

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

<pre>GET entities/c63ec52b-0870-4aa2-9059-1624b5c1dec3/letters?relation=origin</pre>

#### Query Parameters

<pre>relation: origin</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ebd3ac480d19fb012c2ddaf8dd505dd3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b4cb7b61-9ccf-48fe-8079-0e229762d06d
X-Runtime: 2.353883
Vary: Origin
Content-Length: 254</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1973-05-31",
  "max_date": "1973-05-31",
  "total_pages": 1,
  "letters": [
    {
      "id": "51836398-ddaa-4f92-8395-ecbf5c855168",
      "label": "31 May 1973 - Gislason, Migdalia",
      "recipient": "Gislason, Migdalia",
      "repository": "North Mann Academy",
      "date": "31 May 1973"
    }
  ]
}
~~~

