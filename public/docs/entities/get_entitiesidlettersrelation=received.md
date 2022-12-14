# Entities API



## GET /entities/:id/letters?relation=received

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

<pre>GET entities/e2adc524-34dc-4e0f-bd7b-f9b85a69ae81/letters?relation=received</pre>

#### Query Parameters

<pre>relation: received</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;17adcf50b84150aee2030dbbcfe1939b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ba9de95c-6a79-4519-b8e9-ce5279f65a48
X-Runtime: 2.049738
Vary: Origin
Content-Length: 509</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1953-11-17",
  "max_date": "1967-06-15",
  "total_pages": 1,
  "letters": [
    {
      "id": "e776c71a-07b0-4bb4-945a-8efd370da2e8",
      "label": "17 November 1953 - Hirthe, Kyung, Jerde, Josephina",
      "recipient": "Hirthe, Kyung and Jerde, Josephina",
      "repository": "Eastern Ohio Academy",
      "date": "17 November 1953"
    },
    {
      "id": "5119d732-ef27-4143-81ba-1e9c3645b98e",
      "label": "15 June 1967 - Boyle, Darrin, Jerde, Josephina",
      "recipient": "Boyle, Darrin and Jerde, Josephina",
      "repository": "Western Runte University",
      "date": "15 June 1967"
    }
  ]
}
~~~

