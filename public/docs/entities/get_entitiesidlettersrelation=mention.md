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

<pre>GET entities/00a1ac3c-5d06-4d52-a7d0-2b46251ee24b/letters?relation=mention</pre>

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
ETag: W/&quot;703317cd2122786e6c47a9f7fad5fac3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 28fa0188-3677-46da-84ae-96f4cb444781
X-Runtime: 2.118268
Vary: Origin
Content-Length: 787</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1959-03-25",
  "max_date": "1982-10-24",
  "total_pages": 1,
  "letters": [
    {
      "id": "30e12440-cec3-4b99-910f-4adb2f9718b7",
      "label": "25 March 1959 - Ebert, Ernestina",
      "recipient": "Ebert, Ernestina",
      "repository": "Southern Hilll College",
      "date": "25 March 1959"
    },
    {
      "id": "41ca2048-d0ed-45b5-8524-6a0b7aafc7a2",
      "label": "01 June 1968 - Schneider, Hildegard",
      "recipient": "Schneider, Hildegard",
      "repository": "Hayes Academy",
      "date": "01 June 1968"
    },
    {
      "id": "0e55c653-ab50-462a-8167-75aa8c472364",
      "label": "19 October 1980 - Kunze, Signe",
      "recipient": "Kunze, Signe",
      "repository": "The New Jersey Academy",
      "date": "19 October 1980"
    },
    {
      "id": "3d264f20-0525-4d9f-9418-7582bf339d4b",
      "label": "24 October 1982 - O'Kon, Bernarda",
      "recipient": "O'Kon, Bernarda",
      "repository": "North Carroll",
      "date": "24 October 1982"
    }
  ]
}
~~~

