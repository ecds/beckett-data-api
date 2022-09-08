# Letters API

## GET /letters/:id

### GET /letters/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters/8d180b0b-056c-4c3d-8a51-e38731e12a4d</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fc2b827551ede65de16f797e01824413&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 2c4c78fa-aa27-41b0-acbc-0faf6287faa9
X-Runtime: 0.844590
Vary: Origin
Content-Length: 2024</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/letters/8d180b0b-056c-4c3d-8a51-e38731e12a4d",
  "date": "1958-08-22T00:00:00.000-04:00",
  "recipients": [
    {
      "id": "http://example.org/entities/d95d3cce-e9c1-44a6-abaa-e05c16392e0f.json",
      "type": "person",
      "label": "Kulas, Luciano",
      "description": [

      ]
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/5dc5bfbb-d083-4810-85f1-e6911da1bfd0.json",
      "type": "place",
      "label": "<i>Asbleg</i>",
      "description": [

      ]
    }
  ],
  "mentions": {
    "attendances": [
      {
        "id": "http://example.org/entities/0b752bb8-e866-4fa3-9b3d-191ca8e24172.json",
        "type": "attendance",
        "label": "Radio Broadcast, Tattooed hashtag microdosing wayfarers.",
        "description": [

        ],
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/0705941a-6423-4902-baef-4b9381d52886.json",
        "type": "attendance",
        "label": "Reading, Mustache <i>distillery truffaut readymade sustainable food truck ugh</i> authentic.",
        "description": [

        ],
        "tags": [

        ]
      }
    ],
    "people": [
      {
        "id": "http://example.org/entities/ed57f365-4763-44c4-875c-171c23530080.json",
        "type": "person",
        "label": "West, Waldo",
        "description": [

        ],
        "tags": [

        ]
      }
    ],
    "readings": [
      {
        "id": "http://example.org/entities/dca41824-59e0-4274-bf7b-d78c4136e3e6.json",
        "type": "reading",
        "label": "Look Homeward, Angel",
        "description": [

        ],
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/641bc92e-6f95-4467-96f8-c56ed57a6904.json",
        "type": "reading",
        "label": "A Summer Bird-Cage",
        "description": [

        ],
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/3a2a647e-aab4-4043-a36a-53e8b2946914.json",
        "type": "reading",
        "label": "The Wives of Bath",
        "description": [

        ],
        "tags": [

        ]
      }
    ],
    "writings": [
      {
        "id": "http://example.org/entities/3ad1b260-f41c-4fc3-b93f-2cea77a5131a.json",
        "type": "writing",
        "label": "No Longer at Ease",
        "description": [

        ],
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/aefaa035-6225-48d0-b775-3090f8bbc681.json",
        "type": "writing",
        "label": "The Needle's Eye",
        "description": [

        ],
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/6960cd82-b8e2-46e6-9773-5d2577940033.json",
        "type": "writing",
        "label": "<i>All the King's Men</i>",
        "description": [

        ],
        "tags": [

        ]
      }
    ]
  }
}</pre>
