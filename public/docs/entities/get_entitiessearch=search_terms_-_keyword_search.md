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
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=tell</pre>

#### Query Parameters

<pre>search: tell</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=tell&gt;; rel=&#39;self&#39;
X-Total-Count: 0
Content-Type: application/json; charset=utf-8
ETag: W/&quot;5ad826b035fa9c811469a9bee490bca1&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5ac29eaa-f701-4ccd-be1b-77b96be9e954
X-Runtime: 3.096004
Vary: Origin
Content-Length: 252</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
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
      "self": "http://example.org/entities?page=1&search=tell"
    }
  }
}</pre>
