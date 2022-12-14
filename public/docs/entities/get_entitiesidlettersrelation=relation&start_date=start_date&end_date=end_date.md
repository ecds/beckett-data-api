# Entities API



## GET /entities/:id/letters?relation=:relation&amp;start_date=:start_date&amp;end_date=:end_date

### GET entities/:id/letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| relation | relation | false | 
| page | Page of results. | false | 
| per_page | Number of records per response. | false | 
| start_date | Date filter start. | false | 
| end_date | Date filter end. | false | 

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET entities/23c54bb6-8970-4383-b487-24e747d75916/letters?relation=mention&amp;start_date=1963-01-01&amp;end_date=1964-12-30</pre>

#### Query Parameters

<pre>relation: mention
start_date: 1963-01-01
end_date: 1964-12-30</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e11e63f1ecf14afa3350dcc1cac13998&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5f9e9994-46ab-4d1a-89aa-7d8429cf8d4c
X-Runtime: 2.299247
Vary: Origin
Content-Length: 601</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1962-03-19",
  "max_date": "1965-12-18",
  "total_pages": 1,
  "letters": [
    {
      "id": "f86ef791-1975-4acd-8c0c-5038d1d91a7f",
      "label": "07 April 1963 - Collier, Vella",
      "recipient": "Collier, Vella",
      "repository": "North Bayer",
      "date": "07 April 1963"
    },
    {
      "id": "061ab0e0-42dd-4ea5-9791-6f6e35b6a5ec",
      "label": "25 September 1963 - Gorczany, Allen",
      "recipient": "Gorczany, Allen",
      "repository": "Eastern Kreiger",
      "date": "25 September 1963"
    },
    {
      "id": "eef8d629-75be-4157-9d14-4a4f705bb45c",
      "label": "25 December 1963 - Kris, Merle",
      "recipient": "Kris, Merle",
      "repository": "North Florida Institute",
      "date": "25 December 1963"
    }
  ]
}
~~~

