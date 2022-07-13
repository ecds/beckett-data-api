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
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=113&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 562
Content-Type: application/json; charset=utf-8
ETag: W/&quot;69c3ea1bb6595ed2547302f1a0175ada&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 87d7684a-4da8-4cc5-9cde-7157b5f988e3
X-Runtime: 13.806146
Vary: Origin
Content-Length: 3758</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/022ec1e1-91ae-470f-a90f-6118b9891ae7",
      "label": "<i>Allosimanius Syneca</i>",
      "type": "organization",
      "short_display": "<span><i>Allosimanius Syneca</i>, Vanessa Vanjie Mateo.</span>",
      "description": "Biodiesel echo gluten-free kogi tofu knausgaard.",
      "clean_label": "Allosimanius Syneca",
      "clean_description": "Biodiesel echo gluten-free kogi tofu knausgaard.",
      "alternate_spellings": [
        "Vanessa Vanjie Mateo"
      ],
      "profile": "I don't roll on Shabbos!"
    },
    {
      "id": "http://example.org/entities/028910e1-057f-4301-884e-451700d8f306",
      "label": "Discovery",
      "type": "public_event",
      "short_display": "<span>Discovery (1938-09-19).</span>",
      "description": "Hammock lumbersexual meditation offal asymmetrical austin vinyl farm-to-table pork belly.",
      "clean_label": "Discovery",
      "clean_description": "Hammock lumbersexual meditation offal asymmetrical austin vinyl farm-to-table pork belly.",
      "date": "1938-09-19"
    },
    {
      "id": "http://example.org/entities/02e470db-ef63-4d1e-afca-0ab90ef4ed69",
      "label": "The Domain of The King",
      "type": "place",
      "short_display": "<span>The Domain of The King.</span>",
      "description": "Poutine yolo salvia yuccie neutra.",
      "clean_label": "The Domain of The King",
      "clean_description": "Poutine yolo salvia yuccie neutra.",
      "alternate_spellings": [
        "Jiggly Caliente"
      ],
      "links": [
        "http://kuvalis-macejkovic.co/frederic.fritsch"
      ]
    },
    {
      "id": "http://example.org/entities/0395cdf2-7cde-4d20-87c4-e871a73c8b4d",
      "label": "Mercury",
      "type": "public_event",
      "short_display": "<span>Mercury (1940-07-27).</span>",
      "description": "Kitsch <i>put a bird on it actually jean</i> shorts.",
      "clean_label": "Mercury",
      "clean_description": "Kitsch put a bird on it actually jean shorts.",
      "date": "1940-07-27"
    },
    {
      "id": "http://example.org/entities/03ae6778-d805-4b75-bdb4-5a5ee8c142a2",
      "label": "<i>The Most Beautiful Girl In The World</i>",
      "type": "work_of_art",
      "short_display": "<span>Vroomfondel, <i>The Most Beautiful Girl In The World</i>, Bicycle <i>rights gastropub health slow-carb fashion axe franzen raw denim</i> tattooed.</span>",
      "description": "Bicycle <i>rights gastropub health slow-carb fashion axe franzen raw denim</i> tattooed.",
      "clean_label": "The Most Beautiful Girl In The World",
      "clean_description": "Bicycle rights gastropub health slow-carb fashion axe franzen raw denim tattooed.",
      "alternate_spellings": [
        "Jiggly Caliente"
      ],
      "artist": "Vroomfondel",
      "artist_alternate_spellings": [
        "Alyssa Edwards"
      ],
      "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
      "owner_location_accession_number_current": 222,
      "owner_location_accession_number_contemporaneous": 980
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 126
        },
        {
          "key": "person",
          "doc_count": 92
        },
        {
          "key": "organization",
          "doc_count": 50
        },
        {
          "key": "writing",
          "doc_count": 41
        },
        {
          "key": "reading",
          "doc_count": 40
        },
        {
          "key": "music",
          "doc_count": 39
        },
        {
          "key": "work_of_art",
          "doc_count": 36
        },
        {
          "key": "attendance",
          "doc_count": 30
        },
        {
          "key": "production",
          "doc_count": 29
        },
        {
          "key": "public_event",
          "doc_count": 28
        },
        {
          "key": "translating",
          "doc_count": 26
        },
        {
          "key": "publication",
          "doc_count": 25
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 113,
    "total_count": 562,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=113&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}</pre>
