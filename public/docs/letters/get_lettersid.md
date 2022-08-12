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

<pre>GET /letters/d26fbecb-4489-489b-a1d4-9934db7d132e</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;82cb50c5c1cc5150cef5f6de2cc77e2a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f0ab2fe8-9641-45ad-9f40-7c59164c7ed2
X-Runtime: 0.609089
Vary: Origin
Content-Length: 2384</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/letters/d26fbecb-4489-489b-a1d4-9934db7d132e",
  "date": "1958-12-20T00:00:00.000-05:00",
  "recipients": [
    {
      "id": "http://example.org/entities/215302c5-7027-4c2a-a39b-9bc4c837a281.json",
      "type": "person",
      "label": "Bogan, Aldo",
      "description": "<b>Bogan, Aldo 1900-1989</b>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/0d94f68e-2f2e-4ac4-b347-18aae96ea750.json",
      "type": "place",
      "label": "<i>Milliways</i>",
      "description": "<b><i>Milliways</i></b>"
    }
  ],
  "mentions": {
    "attendances": [
      {
        "id": "http://example.org/entities/f5420b2f-65ba-411c-9ed8-f34b58353490.json",
        "type": "attendance",
        "label": "TRON",
        "description": "<strong>rehearsal</strong> TRON",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/e19bbc89-30bd-4c9f-ba14-2c2ab28855b8.json",
        "type": "attendance",
        "label": "<i>Die Hard</i>",
        "description": "<strong>radio_broadcast</strong> <i>Die Hard</i>",
        "tags": [

        ]
      }
    ],
    "organizations": [
      {
        "id": "http://example.org/entities/4408b7a7-e041-4d0e-bac0-6e49032ffc93.json",
        "type": "organization",
        "label": "Fallia",
        "description": "<b>Fallia</b>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/02786c2b-344c-4146-8c1b-c5f7997fd4c2.json",
        "type": "organization",
        "label": "<i>Oglaroon</i>",
        "description": "<b><i>Oglaroon</i></b>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/68a1c186-2127-4d73-ad33-51a76d7d85d1.json",
        "type": "organization",
        "label": "Damogran",
        "description": "<b>Damogran</b>",
        "tags": [

        ]
      }
    ],
    "productions": [
      {
        "id": "http://example.org/entities/2a089a15-5e4a-48bd-9ab8-b0454f3001e6.json",
        "type": "production",
        "label": "Gone with the Wind",
        "description": "Gone with the Wind, dir. Jesus Quintana, Heart of Gold, Andersonmouth, 1957-11-03",
        "tags": [

        ]
      }
    ],
    "readings": [
      {
        "id": "http://example.org/entities/7a27a050-d292-4b99-a95a-257b49fc2b7d.json",
        "type": "reading",
        "label": "<i>Tirra Lirra by the River</i>",
        "description": "Jc Thompson, <i>Tirra Lirra by the River</i>, New English Library",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/7dbcde75-d1c4-46d1-986e-b67198643add.json",
        "type": "reading",
        "label": "Things Fall Apart",
        "description": "Deana Murazik III, Things Fall Apart, Casemate Publishers",
        "tags": [

        ]
      }
    ]
  }
}</pre>
