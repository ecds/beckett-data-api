# Entities API



## GET /entites?per_page=:results_per_page&amp;page=:offset - Paginated results

### GET /entities

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

<pre>GET /entities?page=2&amp;per_page=5</pre>

#### Query Parameters

<pre>page: 2
per_page: 5</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=109&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 541
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f12ecadad6ad8dead178983f39bd43ef&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: eb877d52-28cf-4d5f-a03f-edfa2bfeab10
X-Runtime: 11.124958
Vary: Origin
Content-Length: 3092</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/024669ea-b6a0-43d8-aa70-8aff39dc1f3e",
      "label": "Martinus Nijhoff Publishers",
      "type": "publication",
      "display_header": "Martinus Nijhoff Publishers, Dan Streetmentioner Venmo selvage whatever try-hard bespoke.",
      "description": "Listicle <i>direct trade truffaut crucifix bicycle rights single-origin</i> coffee.",
      "clean_label": "Martinus Nijhoff Publishers",
      "clean_description": "Listicle direct trade truffaut crucifix bicycle rights single-origin coffee."
    },
    {
      "id": "http://example.org/entities/02676cdd-8f12-46e8-b79f-1319ba659c89",
      "label": "Death Be Not Proud",
      "type": "reading",
      "display_header": "Amb. Neva Beier, Death Be Not Proud, Bison Books",
      "description": "Hella poutine leggings kogi green juice cardigan waistcoat loko.",
      "clean_label": "Death Be Not Proud",
      "clean_description": "Hella poutine leggings kogi green juice cardigan waistcoat loko."
    },
    {
      "id": "http://example.org/entities/028882a2-c177-40a5-a9b6-57155374c5c0",
      "label": "Preliumtarn",
      "type": "organization",
      "display_header": "<b>Preliumtarn</b>",
      "description": "Hammock offal mlkshk aesthetic.",
      "clean_label": "Preliumtarn",
      "clean_description": "Hammock offal mlkshk aesthetic."
    },
    {
      "id": "http://example.org/entities/034f04c5-ea7f-4276-9843-57eb98034e93",
      "label": "<i>Witness for the Prosecution</i>",
      "type": "attendance",
      "display_header": "<strong>rehearsal</strong> <i>Witness for the Prosecution</i>",
      "description": "Swag cardigan gluten-free narwhal lomo sustainable keytar.",
      "clean_label": "Witness for the Prosecution",
      "clean_description": "Swag cardigan gluten-free narwhal lomo sustainable keytar."
    },
    {
      "id": "http://example.org/entities/03a9f06b-0061-4ef7-9366-3e2e7d78a1c6",
      "label": "<i>No Starch Press</i>",
      "type": "publication",
      "display_header": "<i>No Starch Press</i>, Ford Prefect Whatever flexitarian vice diy next level schlitz cliche retro kickstarter.",
      "description": "Diy quinoa flexitarian irony pabst mumblecore dreamcatcher scenester.",
      "clean_label": "No Starch Press",
      "clean_description": "Diy quinoa flexitarian irony pabst mumblecore dreamcatcher scenester."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 124
        },
        {
          "key": "person",
          "doc_count": 82
        },
        {
          "key": "publication",
          "doc_count": 47
        },
        {
          "key": "music",
          "doc_count": 43
        },
        {
          "key": "work_of_art",
          "doc_count": 38
        },
        {
          "key": "production",
          "doc_count": 37
        },
        {
          "key": "public_event",
          "doc_count": 35
        },
        {
          "key": "attendance",
          "doc_count": 30
        },
        {
          "key": "organization",
          "doc_count": 29
        },
        {
          "key": "reading",
          "doc_count": 29
        },
        {
          "key": "translating",
          "doc_count": 28
        },
        {
          "key": "writing",
          "doc_count": 19
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 109,
    "total_count": 541,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=109&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}</pre>
