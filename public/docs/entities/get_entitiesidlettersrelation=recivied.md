# Entities API



## GET /entities/:id/letters?relation=recivied

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

<pre>GET entities/12257365-be50-45a0-94db-4f467bc00640/letters?relation=recivied</pre>

#### Query Parameters

<pre>relation: recivied</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e435dcd3982970b2b3a676ba53d2736c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 229ce71c-1a1f-488a-a51f-9956fc935e98
X-Runtime: 2.269188
Vary: Origin
Content-Length: 1060</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1957-07-11",
  "max_date": "1982-05-19",
  "total_pages": 1,
  "letters": [
    {
      "id": "77021ab0-5c70-4097-b391-a750ccc28d20",
      "label": "11 July 1957 - <i>Orion</i>, Thompson, Althea",
      "recipient": "<i>Orion</i> and Thompson, Althea",
      "repository": "Fisher Institute",
      "date": "11 July 1957"
    },
    {
      "id": "09c5719f-1b7f-412e-bbcc-5973cfe55508",
      "label": "24 April 1968 - <i>Orion</i>, Farrell, Sigrid",
      "recipient": "<i>Orion</i> and Farrell, Sigrid",
      "repository": "Eastern Funk Academy",
      "date": "24 April 1968"
    },
    {
      "id": "0a58f69c-f079-47ea-b060-eb1eb7621dc6",
      "label": "31 January 1981 - <i>Orion</i>, Schmeler, Loriann",
      "recipient": "<i>Orion</i> and Schmeler, Loriann",
      "repository": "South Walter",
      "date": "31 January 1981"
    },
    {
      "id": "76921581-1447-4df1-8c2c-5ca24b3dacb7",
      "label": "19 May 1982 - <i>Orion</i>, Mills, Scott",
      "recipient": "<i>Orion</i> and Mills, Scott",
      "repository": "Eastern Tennessee Academy",
      "date": "19 May 1982"
    }
  ]
}
~~~

