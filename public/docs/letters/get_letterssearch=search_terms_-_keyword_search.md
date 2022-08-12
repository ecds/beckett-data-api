# Letters API

## GET /letters?search=:search_terms - Keyword search

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels | false | null
| senders | Comma seperated list of sender labels | false | null
| repositories | Comma seperated list of repository labels | false | null
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?search=stevie</pre>

#### Query Parameters

<pre>search: stevie</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=stevie&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b10bacd7544971833a023cecda182b36&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9a9e002a-ab95-4486-9e0e-d28c673bf628
X-Runtime: 2.537864
Vary: Origin
Content-Length: 2344</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/8b7f5157-4b35-4722-b9e6-8484b9f6251d",
      "date": "1961-12-04T00:00:00.000-05:00",
      "label": "04 December 1961 - Bernier, Stevie",
      "recipients": [
        "Bernier, Stevie"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5e59ee65-0ce9-4d25-a2be-16f60c47bea9",
            "display": "<strong>_reading</strong> Twelve Monkeys"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/31fda4ce-9b04-4b52-9a44-fb034e7540b6",
            "display": "<strong>_reading</strong> Donnie Darko"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d26a379d-3aac-45ee-933b-038da2eed945",
            "display": "Effrafax of Wug, Guitar [Ginger Minj]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/61316f51-fcd7-4c83-b7cc-10972ddb0486",
            "display": "Barry Manilow, <i>Housequake</i> [Adore Delano]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/36273378-f962-40a0-899c-a7d849c3d56a",
            "display": "Rob McKenna, Head [Bob The Drag Queen]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/718e6fec-b0d0-43bf-b2f0-586ee9d27157",
            "display": "<b>Lesch, Karl 1925-1989</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8361d0c0-07be-422f-a787-d41654d2efac",
            "display": "<b><i>Apollo</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/32872c6d-a782-4bcb-bf4b-c0196ff8c4a8",
            "display": "<b><i>Discovery</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a4e8222d-4ffe-4689-b9e8-8b0b738e556e",
            "display": "<b>Atlantis</b>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 1,
      "buckets": [
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
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
          "key": "Nikolaus College",
          "doc_count": 1
        },
        {
          "key": "North Rhode Island Institute",
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
      "self": "http://example.org/letters?page=1&search=stevie"
    }
  }
}</pre>
