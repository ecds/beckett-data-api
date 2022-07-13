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

<pre>GET /entities?search=leggings</pre>

#### Query Parameters

<pre>search: leggings</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=leggings&gt;; rel=&#39;self&#39;
X-Total-Count: 0
Content-Type: application/json; charset=utf-8
ETag: W/&quot;97407f83f594ab82b9501adfa9b333d9&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ff20cf55-5806-4348-a0a7-ffb976f62e21
X-Runtime: 12.048217
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
      "self": "http://example.org/entities?page=1&search=leggings"
    }
  }
}</pre>
