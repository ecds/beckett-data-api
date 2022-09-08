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

<pre>GET /letters?search=rochell</pre>

#### Query Parameters

<pre>search: rochell</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=rochell&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;394582bd4d4c51f0f0acea4274f50ad8&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c26baf05-9b84-49bf-84bd-23a81d07623c
X-Runtime: 2.448394
Vary: Origin
Content-Length: 2018</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/ec371c56-79cd-468b-afce-a0ca3d5a1e93",
      "date": "1961-10-08T00:00:00.000-04:00",
      "label": "08 October 1961 - Beer, Rochell",
      "recipients": [
        "Beer, Rochell"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0c338f3c-b616-448c-b2b7-72183693100e",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/0ecf9faf-4989-4882-9d7e-c661d6216d0c",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e6f0e766-81e7-47f7-a588-e1ff40db298f",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/50bb44eb-65cd-42b5-a0a4-fc180b16ad7a",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f93b8641-6025-4574-9a87-90d9f37ec3ac",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e5beeb2e-757f-4d92-b2a2-654d4ebc2a12",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fae38ebb-dcff-4fdf-8f2f-91c4e8d2cc6c",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/55aa00fc-2b1f-409a-89fa-04ae7f80f71e",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/748bec7f-35de-42ef-9984-769f355aec5e",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d92c62fb-cb6b-4b3e-a769-9d8dd646c8d9",
            "display": [

            ]
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
          "key": "Southern Connecticut Academy",
          "doc_count": 1
        },
        {
          "key": "Ziemann College",
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
      "self": "http://example.org/letters?page=1&search=rochell"
    }
  }
}</pre>
