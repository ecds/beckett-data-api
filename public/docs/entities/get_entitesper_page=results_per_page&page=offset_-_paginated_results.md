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
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=8&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 38
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2b0c87bb124658337c7438c4e4d3fdd4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9404a663-69dc-4a7f-bfeb-f23be26dbadd
X-Runtime: 3.199950
Vary: Origin
Content-Length: 4790</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/2890090c-b28d-44bf-b8e0-3a84c773d7c1",
      "label": "<i>Nano</i>",
      "type": "organization",
      "short_display": "<section><p><strong><i>Nano</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>",
      "description": "You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.",
      "clean_label": "Nano",
      "clean_description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level."
    },
    {
      "id": "http://example.org/entities/29a3748c-bd89-4d96-8e2b-3f7634bb7889",
      "label": "<i>Columbia</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1947-11-11.</strong></p></section>",
      "description": "Until <i>the end of time, I'll be there for</i> you.",
      "clean_label": "Columbia",
      "clean_description": "Until the end of time, I'll be there for you."
    },
    {
      "id": "http://example.org/entities/2a2403dc-be35-4749-a9f6-a4f2da3800a8",
      "label": "<i>Se7en</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>Se7en</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> RW6, Gleasonberg</p>\n<p><strong>Date(s)</strong> 1927-01-07.</p></section>",
      "description": "Banh mi asymmetrical gastropub deep v brooklyn.",
      "clean_label": "Se7en",
      "clean_description": "Banh mi asymmetrical gastropub deep v brooklyn."
    },
    {
      "id": "http://example.org/entities/2b5ea73c-ccb1-4d85-be96-e848971c174a",
      "label": "Little Hands Clapping",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Mervin Graham</p>\n<p><strong>Title</strong> Little Hands Clapping</p>\n<p><strong>Publication</strong> Pantheon Books at Random House.</p></section>",
      "description": "Retro <i>churchkey shabby chic chillwave</i> sartorial.",
      "clean_label": "Little Hands Clapping",
      "clean_description": "Retro churchkey shabby chic chillwave sartorial."
    },
    {
      "id": "http://example.org/entities/2cd185f1-5185-441e-aff5-bdd7ebeec1b8",
      "label": "Islington",
      "type": "place",
      "short_display": "<section><p><strong>Islington</strong></p>\n<p>Tumblr <i>umami churchkey ennui salvia</i> aesthetic.</p></section>",
      "description": "Tumblr <i>umami churchkey ennui salvia</i> aesthetic.",
      "clean_label": "Islington",
      "clean_description": "Tumblr umami churchkey ennui salvia aesthetic."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 38,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "person",
          "doc_count": 5
        },
        {
          "key": "writing",
          "doc_count": 5
        },
        {
          "key": "place",
          "doc_count": 4
        },
        {
          "key": "reading",
          "doc_count": 4
        },
        {
          "key": "production",
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
          "key": "translating",
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
          "key": "attendance",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 8,
    "total_count": 38,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=8&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}
~~~

