# Letters API

## GET /letters?search=:search_terms - Keyword search

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of paginated letters response. | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels. | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels. | false | null
| senders | Comma seperated list of sender labels. | false | null
| repositories | Comma seperated list of repository labels. | false | null
| languages | Case insensitive comma seperated list of languages. Options are English, French, German, and Italian. | false | null
| volumes | Comma sperated list of volumes. Options are 0, 1, 2, 3, and 4. Zero means no volume. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?search=stacy</pre>

#### Query Parameters

<pre>search: stacy</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=stacy&gt;; rel=&#39;self&#39;
X-Total-Count: 2
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2287d2080dd23f1de28f0e382a53fb23&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5badd851-0946-4cee-b53d-506a44d444ca
X-Runtime: 2.833671
Vary: Origin
Content-Length: 9141</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/e7e5ca01-3e1d-4bcd-85af-bd09924ad3e4",
      "date": "1954-10-13T00:00:00.000-05:00",
      "label": "13 October 1954 - Streich, Dannie",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Streich, Dannie"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c2de1b51-59d5-42ee-962e-b13857803880",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> Paisley Park</p>\n<p><strong>Description</strong> Fixie <i>marfa biodiesel next level tilde jean shorts vhs</i> meh.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/50d61c57-0e85-4a8a-8801-752ba3108068",
            "display": "<section><p><strong>Composer</strong> Zarquon</p>\n<p><strong>Title</strong> <i>17 Days</i></p>\n<p><strong>Description</strong> Austin <i>xoxo crucifix paleo forage</i> kitsch.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/cd50f196-65f8-4dce-bda0-b53739e39ae9",
            "display": "<section><p><strong>Composer</strong> JinJenz</p>\n<p><strong>Title</strong> Cindy C.</p>\n<p><strong>Description</strong> Flexitarian <i>hashtag street mlkshk fashion axe butcher leggings</i> tryhard.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1d2ff11a-64df-4592-8f3a-cef2e7693fdf",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0246529c-9c0f-4ebe-aa5c-22d6180efa45",
            "display": "<section><p><strong>Gertie Macejkovic, 1908-1997</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/185d531b-e062-4ea8-9106-a996954f0300",
            "display": "<section><p><strong>Joseph Hayes, 1910-1977</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/595a3b3f-48c0-429b-aafd-482887a3a436",
            "display": "<section><p><strong>Isreal Schultz, 1925-1982</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/52c587da-1473-4677-88d4-9d1d4bb48570",
            "display": "<section><p><strong>Author</strong> Sanda Greenfelder</p>\n<p><strong>Title</strong> Those Barren Leaves, Thrones, Dominations</p>\n<p><strong>Publication</strong> Central European University Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/6eb0e566-e8f2-4558-be06-b0a2a0b84a72",
            "display": "<section><p><strong>Author</strong> Miss Janey Deckow</p>\n<p><strong>Title</strong> <i>Death Be Not Proud</i></p>\n<p><strong>Publication</strong> McGraw-Hill Education.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/34bd6fbd-bcc1-443b-905b-9a7310292441",
      "date": "1960-12-29T00:00:00.000-05:00",
      "label": "29 December 1960 - Grant, Stacy",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Grant, Stacy"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/294179ae-d0d7-4399-83dd-04754205c531",
            "display": "<section><p><strong><i>Sesefras Magna</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e3476db5-9d17-4268-ba95-5efc2f590196",
            "display": "<section><p><strong>Donny Crona, 1929-1991</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/9f94d574-cef7-455c-87d5-ee2810ed239e",
            "display": "<section><p><strong>Author</strong> Effrafax of Wug, <strong>Original Title</strong> <i>The Skull Beneath the Skin</i></p>\n<p><strong>Translated into</strong> Icelandic by Eccentrica Gallumbits</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e4526044-762b-42dc-a9c8-c3d6ae8360e8",
            "display": "<section><p><strong>Author</strong> The Allitnils, <strong>Original Title</strong> <i>Mother Night</i></p>\n<p><strong>Translated into</strong> Hungarian by Gail Andrews</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5093cfe9-a4dd-40a9-97ec-35d12216cf68",
            "display": "<section><p><strong>Title</strong> The Widening Gyre</p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Date</strong> 1953-10-18.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/3d7d8872-d170-46ba-a5ae-ca618e060c73",
            "display": "<section><p><strong>Title</strong> <i>Terrible Swift Sword</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Date</strong> 1959-01-10.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 2,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 0,
          "doc_count": 1
        },
        {
          "key": 2,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 2,
      "buckets": [
        {
          "key_as_string": "1954-01-01T00:00:00.000Z",
          "key": -504921600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1955-01-01T00:00:00.000Z",
          "key": -473385600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 2,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Eastern Reichert",
          "doc_count": 1
        },
        {
          "key": "North Alabama College",
          "doc_count": 1
        },
        {
          "key": "North Lakin Institute",
          "doc_count": 1
        },
        {
          "key": "Southern Botsford",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 2,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 2
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
      "self": "http://example.org/letters?page=1&search=stacy"
    }
  }
}</pre>
