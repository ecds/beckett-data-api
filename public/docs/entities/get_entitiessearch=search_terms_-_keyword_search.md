# Entities API



## GET /entities?search=:search_terms - Keyword Search

### GET /entities

Returns a paginated list of entities from key word search.

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, and writing. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=mustache</pre>

#### Query Parameters

<pre>search: mustache</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=mustache&gt;; rel=&#39;self&#39;
X-Total-Count: 0
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a5cf5980613df204a0a60459e5c713ba&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1f11419c-7852-4e4f-a424-d0386f4e75d8
X-Runtime: 11.606529
Vary: Origin
Content-Length: 242</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [

  ],
  "aggs": {
    "e_type": {
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
      "self": "http://example.org/entities?page=1&search=mustache"
    }
  }
}</pre>
