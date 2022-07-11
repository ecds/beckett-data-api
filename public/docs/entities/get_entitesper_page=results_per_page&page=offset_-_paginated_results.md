# Entities API



## GET /entites?per_page=:results_per_page&amp;page=:offset - Paginated results

### GET /entities

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing. | false | null
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
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=114&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 567
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8057c1678492136f15c981e2ff6d9703&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 10eddad8-eacf-4ec3-b10b-6d892ae5edc1
X-Runtime: 10.604844
Vary: Origin
Content-Length: 3524</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "/entities/00f6e85f-7555-4ede-a88b-e95b24eaa09f",
      "label": "<i>The Grapes of Wrath</i>",
      "type": "writing",
      "short_display": "<span><i>The Grapes of Wrath</i>.</span>",
      "description": "Forage <i>twee tousled iphone viral lomo</i> brooklyn.",
      "clean_label": "The Grapes of Wrath",
      "clean_description": "Forage twee tousled iphone viral lomo brooklyn.",
      "date": "1970-04-15",
      "notes": "I think you ought to know I'm feeling very depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://lockman-osinski.net/fred.beer"
    },
    {
      "id": "/entities/01394a8f-d892-4998-b1f1-788764100763",
      "label": "Space",
      "type": "place",
      "short_display": "<span>Space.</span>",
      "description": "Health <i>farm-to-table mlkshk before they sold out post-ironic</i> typewriter.",
      "clean_label": "Space",
      "clean_description": "Health farm-to-table mlkshk before they sold out post-ironic typewriter.",
      "alternate_spellings": [
        "Yvie Oddly"
      ],
      "links": [
        "http://kutch.biz/judson.kirlin"
      ]
    },
    {
      "id": "/entities/017e2e37-60f5-4a0b-952e-8d8e21b73e65",
      "label": "The Moon by Night",
      "type": "reading",
      "short_display": "<span>Sherril Gulgowski DDS, The Moon by Night, Nauka.</span>",
      "description": "Pbr&b <i>gastropub direct trade tofu irony blue bottle semiotics</i> drinking.",
      "clean_label": "The Moon by Night",
      "clean_description": "Pbr&amp;b gastropub direct trade tofu irony blue bottle semiotics drinking.",
      "authors": [
        "Sherril Gulgowski DDS"
      ],
      "comment": "Life? Don't talk to me about life.",
      "publication": "Nauka",
      "publication_format": "schlitz"
    },
    {
      "id": "/entities/018e00e4-97a5-481b-9799-d3870f4d0f35",
      "label": "Frogstar system",
      "type": "place",
      "short_display": "<span>Frogstar system.</span>",
      "description": "Bushwick <i>stumptown before they sold out seitan dreamcatcher master cardigan put a bird on it</i> chartreuse.",
      "clean_label": "Frogstar system",
      "clean_description": "Bushwick stumptown before they sold out seitan dreamcatcher master cardigan put a bird on it chartreuse.",
      "alternate_spellings": [
        "Asia O'Hara"
      ],
      "links": [
        "http://hettinger-raynor.io/marina.casper"
      ]
    },
    {
      "id": "/entities/025eb502-8b3e-4ab0-98f3-fac8ab36c59a",
      "label": "<i>Apollo</i>",
      "type": "public_event",
      "short_display": "<span><i>Apollo</i> (1965-07-08).</span>",
      "description": "Mustache occupy mlkshk austin chartreuse pour-over.",
      "clean_label": "Apollo",
      "clean_description": "Mustache occupy mlkshk austin chartreuse pour-over.",
      "date": "1965-07-08"
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 132
        },
        {
          "key": "person",
          "doc_count": 94
        },
        {
          "key": "reading",
          "doc_count": 43
        },
        {
          "key": "public_event",
          "doc_count": 40
        },
        {
          "key": "production",
          "doc_count": 39
        },
        {
          "key": "attendance",
          "doc_count": 37
        },
        {
          "key": "music",
          "doc_count": 37
        },
        {
          "key": "publication",
          "doc_count": 36
        },
        {
          "key": "work_of_art",
          "doc_count": 36
        },
        {
          "key": "writing",
          "doc_count": 30
        },
        {
          "key": "organization",
          "doc_count": 26
        },
        {
          "key": "translating",
          "doc_count": 17
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 114,
    "total_count": 567,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=114&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}</pre>
