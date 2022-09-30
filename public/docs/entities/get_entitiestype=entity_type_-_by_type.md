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
X-Total-Count: 2
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ddc8e5e73129bc7cf6a3eba8a70b2591&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: efae6834-4cd7-4af9-ae8e-50c7d2048ea1
X-Runtime: 3.191947
Vary: Origin
Content-Length: 1820</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/0f59cddc-dfba-40c0-8bf6-43e9d29f92d0",
      "label": "<i>Belgium</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Belgium</i></strong></p>\n<p>Banh <i>mi austin viral churchkey five dollar toast tilde kickstarter</i> thundercats.</p></section>",
      "description": "Banh <i>mi austin viral churchkey five dollar toast tilde kickstarter</i> thundercats.",
      "clean_label": "Belgium",
      "clean_description": "Banh mi austin viral churchkey five dollar toast tilde kickstarter thundercats."
    },
    {
      "id": "http://example.org/entities/f8794af2-9cf4-4b8f-beb8-e3c99396ea7b",
      "label": "Megabrantis cluster",
      "type": "place",
      "short_display": "<section><p><strong>Megabrantis cluster</strong></p>\n<p>Echo <i>pickled readymade craft</i> beer.</p></section>",
      "description": "Echo <i>pickled readymade craft</i> beer.",
      "clean_label": "Megabrantis cluster",
      "clean_description": "Echo pickled readymade craft beer."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 27,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "production",
          "doc_count": 4
        },
        {
          "key": "publication",
          "doc_count": 4
        },
        {
          "key": "organization",
          "doc_count": 3
        },
        {
          "key": "reading",
          "doc_count": 3
        },
        {
          "key": "translating",
          "doc_count": 3
        },
        {
          "key": "music",
          "doc_count": 2
        },
        {
          "key": "person",
          "doc_count": 2
        },
        {
          "key": "place",
          "doc_count": 2
        },
        {
          "key": "public_event",
          "doc_count": 2
        },
        {
          "key": "attendance",
          "doc_count": 1
        },
        {
          "key": "work_of_art",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 2,
    "links": {
      "self": "http://example.org/entities?page=1&type=place"
    }
  }
}
~~~

