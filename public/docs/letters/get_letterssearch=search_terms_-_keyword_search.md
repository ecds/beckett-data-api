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

<pre>GET /letters?search=shon</pre>

#### Query Parameters

<pre>search: shon</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=shon&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6fcd0718cf36272eb901322e34347fee&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3ad2073f-9ce1-43a3-a98b-866d8c6a2c3c
X-Runtime: 2.861132
Vary: Origin
Content-Length: 3856</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/cc5bf1fb-5eaf-4985-8529-1cc83706566f",
      "date": "1950-06-25T00:00:00.000-04:00",
      "label": "25 June 1950 - Emmerich, Shon",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Emmerich, Shon"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/48f311c2-3788-4593-bd18-aee6d44ced4e",
            "display": "<section><p><strong>Radio Broadcast</strong>, Pabst <i>organic sartorial kickstarter 8bit heirloom cred normcore</i> literally.</p>\n<p><strong>Attended with</strong> The Dude and Loonquawl and Phouchg</p>\n<p><strong>Place, Date</strong> Ferrymouth, 01 November 1960</p>\n<p><strong>Director</strong> Dan Streetmentioner</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f143381e-3917-414e-abaf-a3298862b589",
            "display": "<section><p><strong>Mohammed Bergnaum, 1919-1986</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d1b96c69-54af-4d8b-bb77-bbb1dad3e16f",
            "display": "<section><p><strong>Phillip Kuhn, 1922-1981</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f8a6b546-c24c-4f1e-9a6b-247061c5fa01",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1924-08-05.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/19b251e7-fdc5-49fd-9917-ce5d6b6b184c",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1956-02-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f5a32249-5b2a-49d6-89e6-b21a8f4f7448",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1945-02-07.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/ef3e0190-e681-466f-afd4-3cbaa8ddfd88",
            "display": "<section><p><strong>Author</strong> Ethan Koch I</p>\n<p><strong>Title</strong> The Moon by Night</p>\n<p><strong>Publication</strong> Carcanet Press.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 1,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 2,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 1,
      "buckets": [
        {
          "key_as_string": "1950-01-01T00:00:00.000Z",
          "key": -631152000000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 1,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "North Raynor University",
          "doc_count": 1
        },
        {
          "key": "Western Bernhard Academy",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 1,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
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
      "self": "http://example.org/letters?page=1&search=shon"
    }
  }
}
~~~

