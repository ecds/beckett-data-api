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

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=batch</pre>

#### Query Parameters

<pre>search: batch</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=batch&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d3ba358cabb3081c230c85282dfca543&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 2c6395bf-5f1c-4dc6-b8be-7c733c36cefb
X-Runtime: 3.164449
Vary: Origin
Content-Length: 1241</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/acfca76d-184f-43dc-8817-0684c40f8c1d",
      "label": "Rehearsal, Flannel <i>yuccie butcher skateboard leggings</i> stumptown.",
      "type": "attendance",
      "short_display": "<section><p><strong>Rehearsal</strong>, Flannel <i>yuccie butcher skateboard leggings</i> stumptown.</p>\n<p><strong>Attended with</strong> Brandt and Rob McKenna</p>\n<p><strong>Place, Date</strong> Hectorport, 12 May 1932</p>\n<p><strong>Director</strong> Hillman Hunter</p></section>",
      "description": "Flannel <i>yuccie butcher skateboard leggings</i> stumptown.",
      "clean_label": "Rehearsal, Flannel yuccie butcher skateboard leggings stumptown.",
      "clean_description": "Flannel yuccie butcher skateboard leggings stumptown."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 1,
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
      "self": "http://example.org/entities?page=1&search=batch"
    }
  }
}
~~~

