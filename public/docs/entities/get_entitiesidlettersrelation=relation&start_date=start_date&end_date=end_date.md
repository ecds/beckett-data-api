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

<pre>GET entities/6450aced-eb63-4e82-bc39-386d3ccb58e2/letters?relation=mention&amp;start_date=1963-01-01&amp;end_date=1964-12-30</pre>

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
ETag: W/&quot;ed00d33ad1d2787111a8379421a70ac9&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 10ea1423-0916-4dd9-96cf-d7fe6ce146e0
X-Runtime: 1.649424
Vary: Origin
Content-Length: 616</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1962-02-15",
  "max_date": "1965-10-01",
  "total_pages": 1,
  "letters": [
    {
      "id": "25555e00-7cb0-4a58-b7df-39c9cf8179e9",
      "label": "13 February 1963 - Batz, Lavonda",
      "recipient": "Batz, Lavonda",
      "repository": "East Nebraska Institute",
      "date": "13 February 1963"
    },
    {
      "id": "bc1637de-27a4-49a2-9585-b89207f134d0",
      "label": "30 June 1963 - Flatley, Roberto",
      "recipient": "Flatley, Roberto",
      "repository": "East Washington University",
      "date": "30 June 1963"
    },
    {
      "id": "576106ea-09b1-4054-a480-4bc0f2c45a67",
      "label": "02 August 1964 - Leuschke, Judy",
      "recipient": "Leuschke, Judy",
      "repository": "The Zieme Academy",
      "date": "02 August 1964"
    }
  ]
}
~~~

