# Entities API



## GET /entities/:id/letters?relation=:relation&amp;page=:page&amp;per_page=:per_page

### GET entities/:id/letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| relation | relation | false | 
| page | Page of results. | false | 
| per_page | Number of records per response. | false | 

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET entities/bf8cc4d8-2355-452c-a777-3c3fc4570457/letters?relation=mention&amp;page=2&amp;per_page=2</pre>

#### Query Parameters

<pre>relation: mention
page: 2
per_page: 2</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;76a0a8eb1c24773be85eac5f5efbf435&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 55faec25-3caa-4fa9-ad31-0a98f1b0ce05
X-Runtime: 2.040433
Vary: Origin
Content-Length: 425</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1950-04-18",
  "max_date": "1986-01-25",
  "total_pages": 5,
  "letters": [
    {
      "id": "0a4a1671-859e-43da-943f-16b1dbebc1b9",
      "label": "11 November 1954 - Braun, Monte",
      "recipient": "Braun, Monte",
      "repository": "Rolfson Academy",
      "date": "11 November 1954"
    },
    {
      "id": "025bcb67-e6e8-48c0-9c73-ff53a6d1dd02",
      "label": "27 December 1954 - Bode, Otto",
      "recipient": "Bode, Otto",
      "repository": "South Schaden Institute",
      "date": "27 December 1954"
    }
  ]
}
~~~

