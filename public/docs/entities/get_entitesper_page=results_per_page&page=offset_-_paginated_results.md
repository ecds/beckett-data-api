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
| operator | By default, results match any words in the query. Use &#39;and&#39; to match all words. | false | or

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
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=108&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 537
Content-Type: application/json; charset=utf-8
ETag: W/&quot;09c408d023de2a3ac91dd61b00c133a2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8377b5b6-2bec-483c-a450-6c56f9226a39
X-Runtime: 3.164167
Vary: Origin
Content-Length: 4207</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/0285dbd6-8b5a-466c-a4a9-d97b6b4f94a7",
      "label": "<i>Lord's Cricket Ground</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Lord's Cricket Ground</i></strong></p>\n<p>Coldpressed microdosing iphone you probably havent heard of them phlogiston mustache farmtotable kombucha banjo.</p></section>",
      "description": "Coldpressed microdosing iphone you probably havent heard of them phlogiston mustache farmtotable kombucha banjo.",
      "clean_label": "Lord's Cricket Ground",
      "clean_description": "Coldpressed microdosing iphone you probably havent heard of them phlogiston mustache farmtotable kombucha banjo."
    },
    {
      "id": "http://example.org/entities/0286db6b-2c5f-4763-8784-f31dbd24a382",
      "label": "The Violent Bear It Away",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Freddy Kiehn</p>\n<p><strong>Title</strong> The Violent Bear It Away</p>\n<p><strong>Publication</strong> Schocken Books.</p></section>",
      "description": "Gastropub slowcarb letterpress wolf selvage irony.",
      "clean_label": "The Violent Bear It Away",
      "clean_description": "Gastropub slowcarb letterpress wolf selvage irony."
    },
    {
      "id": "http://example.org/entities/02f1c4bc-06af-49ec-b550-e400a26e9a70",
      "label": "Easter Island",
      "type": "place",
      "short_display": "<section><p><strong>Easter Island</strong></p>\n<p>Aesthetic <i>brooklyn migas direct trade waistcoat kickstarter stumptown</i> fixie.</p></section>",
      "description": "Aesthetic <i>brooklyn migas direct trade waistcoat kickstarter stumptown</i> fixie.",
      "clean_label": "Easter Island",
      "clean_description": "Aesthetic brooklyn migas direct trade waistcoat kickstarter stumptown fixie."
    },
    {
      "id": "http://example.org/entities/030d3ed4-74f5-4e42-8675-4056e8d82d52",
      "label": "<i>Belgium</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Belgium</i></strong></p>\n<p>Meditation fanny pack trust fund glutenfree skateboard photo booth artisan xoxo.</p></section>",
      "description": "Meditation fanny pack trust fund glutenfree skateboard photo booth artisan xoxo.",
      "clean_label": "Belgium",
      "clean_description": "Meditation fanny pack trust fund glutenfree skateboard photo booth artisan xoxo."
    },
    {
      "id": "http://example.org/entities/03182957-a67c-4ba7-8f4a-f08dee813912",
      "label": "Jesting Pilate",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Manual Will</p>\n<p><strong>Title</strong> Jesting Pilate</p>\n<p><strong>Publication</strong> Matthias Media.</p></section>",
      "description": "Scenester everyday mixtape crucifix popup synth humblebrag 1 offal.",
      "clean_label": "Jesting Pilate",
      "clean_description": "Scenester everyday mixtape crucifix popup synth humblebrag 1 offal."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 537,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 116
        },
        {
          "key": "person",
          "doc_count": 82
        },
        {
          "key": "work_of_art",
          "doc_count": 46
        },
        {
          "key": "public_event",
          "doc_count": 45
        },
        {
          "key": "production",
          "doc_count": 39
        },
        {
          "key": "reading",
          "doc_count": 39
        },
        {
          "key": "translating",
          "doc_count": 35
        },
        {
          "key": "attendance",
          "doc_count": 34
        },
        {
          "key": "music",
          "doc_count": 28
        },
        {
          "key": "writing",
          "doc_count": 28
        },
        {
          "key": "publication",
          "doc_count": 26
        },
        {
          "key": "organization",
          "doc_count": 19
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 108,
    "total_count": 537,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=108&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}
~~~

