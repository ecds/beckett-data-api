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

<pre>GET entities/588defda-5cf8-4b29-9f1a-e1143fc8b1d1/letters?relation=origin</pre>

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
ETag: W/&quot;13ade926d11f2e795be1eb94c02d9287&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1639c6e8-e57d-47aa-a942-d8bda77d16fd
X-Runtime: 1.879596
Vary: Origin
Content-Length: 431</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1955-06-09",
  "max_date": "1982-12-04",
  "total_pages": 1,
  "letters": [
    {
      "id": "2170b8ab-13e1-4ebc-b7cf-b4689e4e3f06",
      "label": "09 June 1955 - Schuster, Thersa",
      "recipient": "Schuster, Thersa",
      "repository": "Southern Wolff",
      "date": "09 June 1955"
    },
    {
      "id": "1284b14b-bf7d-4f5c-aa5e-c0ae9d903d0a",
      "label": "04 December 1982 - McKenzie, Keren",
      "recipient": "McKenzie, Keren",
      "repository": "Wilkinson University",
      "date": "04 December 1982"
    }
  ]
}
~~~

