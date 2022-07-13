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

<pre>GET /letters/6ae6e87d-7a14-488c-9ef3-15f91a5e2edf</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;82a220c894f1a95bff12672d411761dc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 88972d04-2117-4dbb-ace5-163ddaf672d4
X-Runtime: 0.715219
Vary: Origin
Content-Length: 3521</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/letters/6ae6e87d-7a14-488c-9ef3-15f91a5e2edf",
  "date": "1961-03-27T00:00:00.000-05:00",
  "recipients": [
    {
      "id": "http://example.org/entities/1e8d3d48-a9bb-496b-a696-5fea8ad2bada.json",
      "type": "person",
      "label": "<i>Majikthise</i>",
      "description": "<span><i>Majikthise</i> (1912-1977). Listicle gluten-free muggle magic brunch polaroid.</span>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/c914859c-65a0-49e4-815e-61686e5ca368.json",
      "type": "place",
      "label": "<i>Zarss</i>",
      "description": "<span><i>Zarss</i>.</span>"
    }
  ],
  "mentions": {
    "attendances": [
      {
        "id": "http://example.org/entities/526f4b96-93c8-47c6-9571-5dca1b91aa1c.json",
        "type": "attendance",
        "label": "The Lord of the Rings: The Fellowship of the Ring",
        "description": "<span>stumptown, The Lord of the Rings: The Fellowship of the Ring, Armstrongville, 15 December 1923.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/9a0610fc-f616-41c6-8f3e-fdc13b7a4a72.json",
        "type": "attendance",
        "label": "<i>The Great Escape</i>",
        "description": "<span>sustainable, <i>The Great Escape</i>, Cormierhaven, 27 May 1932.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/f6852fb3-e28f-44af-9c0c-d0cbad3f3142.json",
        "type": "attendance",
        "label": "<i>Donnie Darko</i>",
        "description": "<span>pour-over, <i>Donnie Darko</i>, Shinview, 16 September 1963.</span>",
        "tags": [

        ]
      }
    ],
    "productions": [
      {
        "id": "http://example.org/entities/3b0c1393-52f5-40d4-8ec2-b31ccad33c7a.json",
        "type": "production",
        "label": "<i>Catch Me If You Can</i>",
        "description": "<span><i>Catch Me If You Can</i>, dir. Jackie Treehorn, Bistromath, North Shiela, 1954-12-16.</span>",
        "tags": [

        ]
      }
    ],
    "public_events": [
      {
        "id": "http://example.org/entities/01fbe36b-75d7-4983-a966-9b79c167e4ab.json",
        "type": "public_event",
        "label": "Mercury",
        "description": "<span>Mercury (1928-12-30).</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/72c945e9-832e-407a-b7c4-cdeaa2b03694.json",
        "type": "public_event",
        "label": "<i>Gemini</i>",
        "description": "<span><i>Gemini</i> (1923-09-05).</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/edc3b6b4-1d9c-4d6f-80a0-27eb952ee121.json",
        "type": "public_event",
        "label": "Enterprise",
        "description": "<span>Enterprise (1969-08-13).</span>",
        "tags": [

        ]
      }
    ],
    "translatings": [
      {
        "id": "http://example.org/entities/1e2295f8-df9c-422a-9c89-46145f6287e0.json",
        "type": "translating",
        "label": "<i>The Way of All Flesh</i>",
        "description": "<span>Random Dent, <i>The Way of All Flesh</i>, Translated into Sesefras Magna by Rob McKenna.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/a121840a-3adb-450d-a0a4-fed93248cf53.json",
        "type": "translating",
        "label": "<i>All Passion Spent</i>",
        "description": "<span>Hotblack Desiato's bodyguard, <i>All Passion Spent</i>, Translated into Krikkit by Slartibartfast.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/d84fe409-85c7-4521-8209-9b26f1497820.json",
        "type": "translating",
        "label": "The Soldier's Art",
        "description": "<span>Agda, The Soldier's Art, Translated into Rupert by Prak.</span>",
        "tags": [

        ]
      }
    ]
  }
}</pre>
