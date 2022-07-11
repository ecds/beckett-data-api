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

<pre>GET /letters/d8c8874e-3255-4579-a0f6-245ca51a5036</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b0db81525f0a7aebae3d76df5b220793&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5f357490-0b0f-4724-b0d1-485888fef17e
X-Runtime: 0.568744
Vary: Origin
Content-Length: 2683</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/letters/d8c8874e-3255-4579-a0f6-245ca51a5036",
  "date": "1957-04-04T00:00:00.000-05:00",
  "recipients": [
    {
      "id": "http://example.org/entities/4fa3ac1d-cd29-4326-9a7c-c334169e9752.json",
      "type": "person",
      "label": "<i>Emory</i>",
      "description": "<span><i>Emory</i> (1921-1973). Five <i>dollar toast actually listicle bicycle rights banh</i> mi.</span>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/433589cf-167e-40e9-95f9-600a3f1fe99b.json",
      "type": "place",
      "label": "<i>Asbleg</i>",
      "description": "<span><i>Asbleg</i>.</span>"
    }
  ],
  "mentions": {
    "people": [
      {
        "id": "http://example.org/entities/1e495a56-df8b-4a9f-b3e2-2afbf32eed59.json",
        "type": "person",
        "label": "<i>Brandt</i>",
        "description": "<span><i>Brandt</i> (1928-1980). Gentrify farm-to-table brunch raw denim heirloom.</span>",
        "tags": [

        ]
      }
    ],
    "publications": [
      {
        "id": "http://example.org/entities/d733e536-cd37-4e0f-a269-539165663121.json",
        "type": "publication",
        "label": "<i>Ned Gerblansky</i>",
        "description": "<span>Brandt, <i>Ned Gerblansky</i>, Wonko the Sane Fingerstache retro meh tumblr ennui fixie organic.</span>",
        "tags": [

        ]
      }
    ],
    "work_of_arts": [
      {
        "id": "http://example.org/entities/21aed110-cbdf-4f5f-90e9-10d0cf1ffe75.json",
        "type": "work_of_art",
        "label": "Thunder",
        "description": "<span>Grunthos the Flatulent, Thunder, Cray whatever bespoke loko williamsburg next level skateboard bicycle rights health.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/5f9513ec-d340-43ae-ad4c-5fd3ec7b7b89.json",
        "type": "work_of_art",
        "label": "Paisley Park",
        "description": "<span>Vroomfondel, Paisley Park, Blue bottle austin heirloom etsy hella.</span>",
        "tags": [

        ]
      }
    ],
    "writings": [
      {
        "id": "http://example.org/entities/c5916c98-e0da-4bdf-8909-c949daec4390.json",
        "type": "writing",
        "label": "<i>The Other Side of Silence</i>",
        "description": "<span><i>The Other Side of Silence</i>.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/9ccce74d-d686-42f9-a457-acd058b0077a.json",
        "type": "writing",
        "label": "<i>Bury My Heart at Wounded Knee</i>",
        "description": "<span><i>Bury My Heart at Wounded Knee</i>.</span>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/286fef23-8912-4f89-8b9a-ba74788dfaed.json",
        "type": "writing",
        "label": "Oh! To be in England",
        "description": "<span>Oh! To be in England.</span>",
        "tags": [

        ]
      }
    ]
  }
}</pre>
