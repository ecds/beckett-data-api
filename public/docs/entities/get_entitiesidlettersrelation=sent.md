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

<pre>GET entities/22835e32-aec4-4f16-990c-33359c1d1442/letters?relation=sent</pre>

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
ETag: W/&quot;bf368044bb30425e4fef68e1f9a8b214&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: da001a8a-96df-4d37-8cf2-33d1327d42d2
X-Runtime: 2.012829
Vary: Origin
Content-Length: 802</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "min_date": "1956-02-03",
  "max_date": "1975-04-26",
  "total_pages": 1,
  "letters": [
    {
      "id": "7298d33a-24bb-45f6-a457-a219da5ccead",
      "label": "03 February 1956 - Stehr, Cathryn",
      "recipient": "Stehr, Cathryn",
      "repository": "Western Turner Academy",
      "date": "03 February 1956"
    },
    {
      "id": "0bd2af71-0c06-4d1f-a96f-c751d2d798b0",
      "label": "24 August 1964 - Schmitt, Forest",
      "recipient": "Schmitt, Forest",
      "repository": "The Schiller College",
      "date": "24 August 1964"
    },
    {
      "id": "9d8f5733-f737-4465-ac80-f50447dd4724",
      "label": "24 June 1967 - Roberts, Wesley",
      "recipient": "Roberts, Wesley",
      "repository": "Western Boehm Institute",
      "date": "24 June 1967"
    },
    {
      "id": "40fa9ac6-81ec-4c24-a5f5-40f55209ee0c",
      "label": "26 April 1975 - Ankunding, Georgann",
      "recipient": "Ankunding, Georgann",
      "repository": "Gutkowski University",
      "date": "26 April 1975"
    }
  ]
}
~~~

