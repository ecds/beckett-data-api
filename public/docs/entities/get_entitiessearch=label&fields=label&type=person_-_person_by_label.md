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
| operator | By default, results match any words in the query. Use &#39;and&#39; to match all words. | false | or

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=Raynor%2C+Jame&amp;type=person</pre>

#### Query Parameters

<pre>search: Raynor, Jame
type: person</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=Raynor%2C+Jame&amp;type=person&gt;; rel=&#39;self&#39;
X-Total-Count: 2
Content-Type: application/json; charset=utf-8
ETag: W/&quot;798f194c260fd94fd654123c70418e6c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ca5a4665-a77c-47e2-a454-2a506b0dbc17
X-Runtime: 2.972086
Vary: Origin
Content-Length: 1916</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/2a69f324-1dbf-46cb-aeb6-9681b6d3e4db",
      "label": "Raynor, Jame",
      "type": "person",
      "short_display": "<section><p><strong>Jame Raynor, 1905-1994</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Raynor, Jame",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/6b45fe2d-cc0c-41ea-8eba-9ae6f3aca723",
      "label": "Robel, Bruce",
      "type": "person",
      "short_display": "<section><p><strong>Bruce Robel, 1913-1983</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>",
      "description": "I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.",
      "clean_label": "Robel, Bruce",
      "clean_description": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 9,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "organization",
          "doc_count": 2
        },
        {
          "key": "person",
          "doc_count": 2
        },
        {
          "key": "public_event",
          "doc_count": 2
        },
        {
          "key": "place",
          "doc_count": 1
        },
        {
          "key": "production",
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
      "self": "http://example.org/entities?page=1&search=Raynor%2C+Jame&type=person"
    }
  }
}
~~~

