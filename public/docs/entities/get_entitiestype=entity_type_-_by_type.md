# Entities API



## GET /entities?type=:entity_type - By Type

### GET /entities

Returns a paginated list of entities by type. Valid types are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic.

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

<pre>GET /entities?type=place</pre>

#### Query Parameters

<pre>type: place</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;type=place&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;96ca29f10f6ffb7c970c9f54de0080dd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c49f57d1-538c-4f7f-87af-aa4b4f1af2d4
X-Runtime: 2.416443
Vary: Origin
Content-Length: 1259</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/b262a35e-4494-430f-96f3-4a2a90378a38",
      "label": "<i>Islington</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Islington</i></strong></p>\n<p>Wes anderson disrupt bicycle rights green juice leggings 90s churchkey.</p></section>",
      "description": "Wes anderson disrupt bicycle rights green juice leggings 90s churchkey.",
      "clean_label": "Islington",
      "clean_description": "Wes anderson disrupt bicycle rights green juice leggings 90s churchkey."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 27,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "attendance",
          "doc_count": 3
        },
        {
          "key": "person",
          "doc_count": 3
        },
        {
          "key": "public_event",
          "doc_count": 3
        },
        {
          "key": "publication",
          "doc_count": 3
        },
        {
          "key": "work_of_art",
          "doc_count": 3
        },
        {
          "key": "music",
          "doc_count": 2
        },
        {
          "key": "organization",
          "doc_count": 2
        },
        {
          "key": "production",
          "doc_count": 2
        },
        {
          "key": "reading",
          "doc_count": 2
        },
        {
          "key": "translating",
          "doc_count": 2
        },
        {
          "key": "place",
          "doc_count": 1
        },
        {
          "key": "writing",
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
      "self": "http://example.org/entities?page=1&type=place"
    }
  }
}</pre>
