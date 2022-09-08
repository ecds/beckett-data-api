# Letters API

## GET /letters?end_date=:YYYY-MM-DD - On or Before Date

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

<pre>GET /letters?end_date=1959-10-19</pre>

#### Query Parameters

<pre>end_date: 1959-10-19</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1959-10-19&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 7
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fc5c19318a61167858167e56cb986bbe&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6ca223b0-d13b-44dc-8bda-0735482c01ec
X-Runtime: 2.561560
Vary: Origin
Content-Length: 8010</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/7c1406e7-a3b2-4f9a-9033-eb3328cc0104",
      "date": "1957-06-21T00:00:00.000-04:00",
      "label": "21 June 1957 - Stoltenberg, Carlo",
      "recipients": [
        "Stoltenberg, Carlo"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b2f337cd-4174-4178-8b7e-52d1f04a2d27",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6cdd2e20-b8b4-4882-bfaf-5e2be0e00679",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6c4d1208-def4-47ba-b36a-7250c88368f2",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/9c8d0a43-1cfc-4aae-8253-eda69796a329",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f3106b80-fd25-4765-bdcb-869eb14007c5",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/99e36ee2-94ec-42d2-a992-c6c03d73600c",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c6448cf9-fd40-43be-b905-94b5f652786a",
      "date": "1958-11-13T00:00:00.000-05:00",
      "label": "13 November 1958 - Purdy, Merlin",
      "recipients": [
        "Purdy, Merlin"
      ],
      "destinations": [
        "Stavro Mueller Beta"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1b4a6078-0e6a-4390-91bc-9f2c10cc967f",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/5eec6441-098f-4c3a-8002-d08ddd934725",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b5234448-7095-4836-bbe8-7a5848aa03b1",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2a0843bc-5f81-4bf8-9fd9-f00f1917322c",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/fa4c1ca9-15e2-464c-a4f3-fadb4d3b6e8c",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5f62154a-7f9a-44c1-bea4-1b9d16e36ce5",
      "date": "1959-06-22T00:00:00.000-04:00",
      "label": "22 June 1959 - Monahan, Loren",
      "recipients": [
        "Monahan, Loren"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/614632c2-865d-4122-b2af-d1bda980c7a9",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/83d593bb-28aa-45a0-823a-a174a866d7c2",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7ac6bfa7-463a-49fa-a711-28e68bc2c4cf",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/c589ebda-b8e8-463a-b95d-cc33c0ab935e",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1295c63a-45e2-4376-a5fb-a0d87034d147",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c7d670d6-9ab4-4460-8f55-c602bca0c289",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6977ada4-3f0c-4868-b351-13c10cee720a",
      "date": "1959-08-23T00:00:00.000-04:00",
      "label": "23 August 1959 - Prohaska, Markus",
      "recipients": [
        "Prohaska, Markus"
      ],
      "destinations": [
        "<i>Preliumtarn</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7b500bc7-6c59-4deb-9803-4d51dc9fa15e",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2cdb4552-c341-42c7-8eee-872887990dfc",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ea109882-d73b-4936-a7db-175339a5a57c",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fde2e0b7-343d-4995-8ceb-4346045e0829",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/52da8f7a-695f-4d9c-9dcd-c7ba9f68e486",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/263e6d4d-07b9-4be3-a51e-fad4c5beaf9e",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9e9beed7-8260-4c61-b643-d65ef2353632",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7b77d558-e926-4683-9179-bc99786f30dc",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5efe56dc-bd91-4252-a30e-ab983e7a9343",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c330e378-e7d5-4fd8-aaf4-2bcf09f7bbde",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/00450f5b-4c5c-41db-a073-51ee542e221c",
      "date": "1959-08-30T00:00:00.000-04:00",
      "label": "30 August 1959 - Reilly, Kraig",
      "recipients": [
        "Reilly, Kraig"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/27b3554e-cb39-4f1c-8be1-99d3421a7d41",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6cbfa2ce-e43b-46bc-8875-3b64e62be7e1",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a43556f1-a67d-459c-a529-9a667811bf86",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/2a0722fc-baa5-40cc-9884-f145ef0b0787",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/116aac93-e505-4f9a-aa4c-9ec256a20fa2",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/44940e69-adff-4c0c-9ab8-f436310b134a",
      "date": "1959-09-03T00:00:00.000-04:00",
      "label": "03 September 1959 - Bashirian, Eduardo",
      "recipients": [
        "Bashirian, Eduardo"
      ],
      "destinations": [
        "Arthur Dent's house"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/78951083-ddea-4afa-ab3b-fe32df58b880",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/aba3f0eb-bc76-4d12-9f53-a9a4fda789d2",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/466f9f0b-d7e1-4c15-98ea-33f60bb3cce3",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c6b0dbd8-f764-4a58-8828-8f3dc461febc",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a613c37d-6009-4c9d-bb0c-444ce88e9b9e",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4c71ae84-71c2-42b8-b3e1-97844b4ae919",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dcf5b264-3a83-42b6-bbf2-c786ac8f6ce0",
      "date": "1959-10-19T00:00:00.000-04:00",
      "label": "19 October 1959 - Oberbrunner, Johana",
      "recipients": [
        "Oberbrunner, Johana"
      ],
      "destinations": [
        "Highgate Cemetery"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/48c55d88-03ef-433b-8c2e-0323afb49266",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/df51563f-c0d9-44b8-a6cf-02c572fa427b",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/914e15bf-c025-4239-a881-4cf4c60cd94a",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/43d2fe8d-b7a6-4fb8-91f2-eb7e3333d4c7",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bf5e5790-633c-4bff-99a6-9cc41bac1ea4",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c5b7eb8f-1e8b-4364-b450-ed981d789815",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a21e27fb-4649-4813-a5bd-fe48e2561477",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/58514783-103b-4372-b475-1e9481cdb7a4",
            "display": [

            ]
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 7,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 5
        }
      ]
    },
    "repositories": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Lindgren Institute",
          "doc_count": 3
        },
        {
          "key": "Northern Michigan University",
          "doc_count": 3
        },
        {
          "key": "Western Volkman Academy",
          "doc_count": 3
        },
        {
          "key": "The Mississippi Institute",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 2
        },
        {
          "key": "italian",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 7,
    "links": {
      "self": "http://example.org/letters?end_date=1959-10-19&page=1"
    }
  }
}</pre>
