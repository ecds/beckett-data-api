# Entities API



## GET /entites?per_page=:results_per_page&amp;page=:offset - Paginated results

### GET /entities

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
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=118&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 587
Content-Type: application/json; charset=utf-8
ETag: W/&quot;75a0b61ed1c3707aa3cfeac97d0a96ac&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d4c2bf94-ac3f-40e9-8e25-b53bce403c60
X-Runtime: 2.641905
Vary: Origin
Content-Length: 2747</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/043a0e14-53c5-4c89-85e3-7f443728565b",
      "label": "<i>Poghril</i>",
      "type": "organization",
      "short_display": [

      ],
      "description": "I <i>think you ought to know I'm feeling very</i> depressed.",
      "clean_label": "Poghril",
      "clean_description": "I think you ought to know I'm feeling very depressed."
    },
    {
      "id": "http://example.org/entities/054e1a75-55f7-430c-8b00-2e7da9de67a9",
      "label": "<i>Still Waiting</i>",
      "type": "work_of_art",
      "short_display": [

      ],
      "description": "Butcher scenester cronut authentic ugh wayfarers.",
      "clean_label": "Still Waiting",
      "clean_description": "Butcher scenester cronut authentic ugh wayfarers."
    },
    {
      "id": "http://example.org/entities/05eacc60-5c16-46d3-b6f9-56af72ee76b0",
      "label": "<i>The Big Bang Burger Bar</i>",
      "type": "place",
      "short_display": [

      ],
      "description": "Gentrify bespoke postironic readymade sustainable ennui heirloom raw denim kinfolk.",
      "clean_label": "The Big Bang Burger Bar",
      "clean_description": "Gentrify bespoke postironic readymade sustainable ennui heirloom raw denim kinfolk."
    },
    {
      "id": "http://example.org/entities/060b8136-7b3b-4fa4-b93b-75130df0555c",
      "label": "Mother Night",
      "type": "reading",
      "short_display": [

      ],
      "description": "Typewriter meh pbrb bespoke.",
      "clean_label": "Mother Night",
      "clean_description": "Typewriter meh pbrb bespoke."
    },
    {
      "id": "http://example.org/entities/0655a301-88ca-46ce-8e8c-9d88ec6630b6",
      "label": "<i>Han Wavel</i>",
      "type": "organization",
      "short_display": [

      ],
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Han Wavel",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 143
        },
        {
          "key": "person",
          "doc_count": 95
        },
        {
          "key": "attendance",
          "doc_count": 46
        },
        {
          "key": "work_of_art",
          "doc_count": 45
        },
        {
          "key": "reading",
          "doc_count": 38
        },
        {
          "key": "public_event",
          "doc_count": 37
        },
        {
          "key": "writing",
          "doc_count": 37
        },
        {
          "key": "organization",
          "doc_count": 36
        },
        {
          "key": "translating",
          "doc_count": 32
        },
        {
          "key": "publication",
          "doc_count": 29
        },
        {
          "key": "music",
          "doc_count": 27
        },
        {
          "key": "production",
          "doc_count": 22
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 118,
    "total_count": 587,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=118&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}</pre>
