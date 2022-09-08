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

<pre>GET /entities?search=banjo</pre>

#### Query Parameters

<pre>search: banjo</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=banjo&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;72dfdcdb868f3971791a534cb0ee92b0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c0c06d15-f76c-4a51-b295-6b9254327624
X-Runtime: 2.910418
Vary: Origin
Content-Length: 727</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/f0ba7bf8-aefe-4532-834e-4da1ce422e92",
      "label": "Radio Broadcast, Phlogiston leggings street truffaut banjo quinoa skateboard.",
      "type": "attendance",
      "short_display": [

      ],
      "description": "Phlogiston leggings street truffaut banjo quinoa skateboard.",
      "clean_label": "Radio Broadcast, Phlogiston leggings street truffaut banjo quinoa skateboard.",
      "clean_description": "Phlogiston leggings street truffaut banjo quinoa skateboard."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "attendance",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 1,
    "links": {
      "self": "http://example.org/entities?page=1&search=banjo"
    }
  }
}</pre>
