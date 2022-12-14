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

<pre>GET entities/4b7dc13d-a666-4f47-897f-a5b9c9c03070/letters?relation=mention&amp;page=2&amp;per_page=2</pre>

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
ETag: W/&quot;be80e93d6681d8f328f7bf1bed7e049b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c48651cd-7cd4-4078-9625-644c4ee71ff6
X-Runtime: 2.099915
Vary: Origin
Content-Length: 411</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1952-06-26",
  "max_date": "1985-11-27",
  "total_pages": 5,
  "letters": [
    {
      "id": "434fe361-143b-4521-b6d2-ca2be5e342fc",
      "label": "01 August 1958 - Hahn, Alesha",
      "recipient": "Hahn, Alesha",
      "repository": "Kreiger University",
      "date": "01 August 1958"
    },
    {
      "id": "7389a034-7161-45d0-98ea-a79671f9cf32",
      "label": "19 May 1964 - Wunsch, Son",
      "recipient": "Wunsch, Son",
      "repository": "East Boyer College",
      "date": "19 May 1964"
    }
  ]
}
~~~

