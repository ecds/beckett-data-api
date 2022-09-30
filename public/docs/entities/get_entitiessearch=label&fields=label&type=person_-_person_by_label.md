# Entities API



## GET /entities?search=:label&amp;fields=label&amp;type=person - Person by Label

### GET /entities

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=Schmidt%2C+Ebonie&amp;type=person</pre>

#### Query Parameters

<pre>search: Schmidt, Ebonie
type: person</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=Schmidt%2C+Ebonie&amp;type=person&gt;; rel=&#39;self&#39;
X-Total-Count: 0
Content-Type: application/json; charset=utf-8
ETag: W/&quot;4d350d64e794ff479546af7b725b72dd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9989f7ef-cf61-492d-a235-50cd7647f86c
X-Runtime: 2.929061
Vary: Origin
Content-Length: 282</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [

  ],
  "aggs": {
    "e_type": {
      "doc_count": 0,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [

      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 0,
    "total_count": 0,
    "links": {
      "self": "http://example.org/entities?page=1&search=Schmidt%2C+Ebonie&type=person"
    }
  }
}
~~~

