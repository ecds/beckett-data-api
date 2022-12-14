# Entities API



## GET /entities/:id/letters?relation=sent

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

<pre>GET entities/739c4d2c-0424-4062-8d3d-af5eb63fe62a/letters?relation=sent</pre>

#### Query Parameters

<pre>relation: sent</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d0471f4cf5a5b158579042f675e314e9&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dc9270bd-d064-498f-89f8-8ca79ae24c28
X-Runtime: 2.118044
Vary: Origin
Content-Length: 783</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1975-12-25",
  "max_date": "1986-06-19",
  "total_pages": 1,
  "letters": [
    {
      "id": "4215230e-b70f-4822-9709-be49a913ee88",
      "label": "25 December 1975 - Stamm, Yolanda",
      "recipient": "Stamm, Yolanda",
      "repository": "Western Boyer",
      "date": "25 December 1975"
    },
    {
      "id": "af19c95e-0ce9-47cf-ad08-14732f80cf00",
      "label": "16 December 1977 - Ziemann, Rodrigo",
      "recipient": "Ziemann, Rodrigo",
      "repository": "West Alaska College",
      "date": "16 December 1977"
    },
    {
      "id": "25ba4a95-6822-488b-b2ab-d297864af388",
      "label": "29 December 1977 - Bashirian, Orlando",
      "recipient": "Bashirian, Orlando",
      "repository": "The Kutch",
      "date": "29 December 1977"
    },
    {
      "id": "c4c95f40-6c2e-495c-b6cd-8086caf2380a",
      "label": "19 June 1986 - Roberts, Lindsey",
      "recipient": "Roberts, Lindsey",
      "repository": "South Wuckert",
      "date": "19 June 1986"
    }
  ]
}
~~~

