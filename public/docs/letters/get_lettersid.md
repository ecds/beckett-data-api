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

<pre>GET /letters/68625658-ff6b-4584-8989-540783680da0</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;064de2ffee5c165062cf75e30439324d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7ea46c7c-8c74-4202-961f-6d100a1b281d
X-Runtime: 0.606681
Vary: Origin
Content-Length: 6109</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "metadata": {
    "id": "http://example.org/letters/68625658-ff6b-4584-8989-540783680da0",
    "date": "1988-02-07T00:00:00.000Z",
    "label": "07 February 1988 - Hermiston, Bryan",
    "addressed_from": "922 Herzog Falls, East Tobyberg, NH 59784-8771",
    "addressed_to": "Apt. 456 65146 Almeta Ranch, West Joannchester, ND 91289",
    "envelope": "E",
    "physical_description": "Autem molestiae rerum. Vel quis sed. Veritatis et fugit.",
    "postmark": "1972-06-08, Grantton",
    "recipient": "Hermiston, Bryan",
    "repository": "Eastern Gutmann Academy",
    "place_written": "<i>Western Spiral Arm</i>"
  },
  "recipients": [
    {
      "id": "http://example.org/entities/7573a89b-d5e1-4981-8acf-15cf6d36bab8.json",
      "type": "person",
      "label": "Hermiston, Bryan",
      "short_display": "<section><p><strong>Bryan Hermiston, 1925-1984</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/7f4d764d-6a4a-4b2b-bf20-b885aae552bd.json",
      "type": "place",
      "label": "<i>Norway</i>",
      "short_display": "<section><p><strong><i>Norway</i></strong></p>\n<p>Pinterest <i>park scenester shabby chic tote bag</i> ennui.</p></section>"
    }
  ],
  "mentions": {
    "organizations": [
      {
        "id": "http://example.org/entities/8b3dffd6-71a8-426e-8949-a93a173d7b68.json",
        "type": "organization",
        "label": "Frogstar World A",
        "short_display": "<section><p><strong>Frogstar World A</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/a345ab06-fb8e-4ddd-b5ff-6eb0f2d5ed8a.json",
        "type": "organization",
        "label": "<i>Dangrabad Beta</i>",
        "short_display": "<section><p><strong><i>Dangrabad Beta</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>",
        "tags": [

        ]
      }
    ],
    "people": [
      {
        "id": "http://example.org/entities/ef641560-fe7f-4b32-93e9-47ad5f96f272.json",
        "type": "person",
        "label": "Torp, Leif",
        "short_display": "<section><p><strong>Leif Torp, 1904-1981</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>",
        "tags": [

        ]
      }
    ],
    "work_of_arts": [
      {
        "id": "http://example.org/entities/195a8438-92e3-4dd6-890c-145583683498.json",
        "type": "work_of_art",
        "label": "1-800-Newfunk Ad",
        "short_display": "<section><p><strong>Artist</strong> Magrathean sperm whale</p>\n<p><strong>Title</strong> 1-800-Newfunk Ad</p>\n<p><strong>Description</strong> Bushwick <i>plaid lumbersexual seitan scenester beard actually listicle</i> kinfolk.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/488623fa-bde7-4ffc-941e-c52cff27d2ea.json",
        "type": "work_of_art",
        "label": "Cindy C.",
        "short_display": "<section><p><strong>Artist</strong> Zarquon</p>\n<p><strong>Title</strong> Cindy C.</p>\n<p><strong>Description</strong> Artisan singleorigin coffee cronut lumbersexual diy.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>",
        "tags": [

        ]
      }
    ],
    "writings": [
      {
        "id": "http://example.org/entities/099f44ad-b905-4233-93f7-9bc3bc02376d.json",
        "type": "writing",
        "label": "<i>Stranger in a Strange Land</i>",
        "short_display": "<section><p><strong>Title</strong> <i>Stranger in a Strange Land</i></p>\n<p><strong>Proposal/Response</strong> ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Date</strong> 1939-08-30.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/66825684-ab9e-4445-bef6-319e43396878.json",
        "type": "writing",
        "label": "The Daffodil Sky",
        "short_display": "<section><p><strong>Title</strong> The Daffodil Sky</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Tricia McMillan</p>\n<p><strong>Date</strong> 1961-07-17.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/78a05829-8adf-4e2b-9425-53e314960635.json",
        "type": "writing",
        "label": "<i>Some Buried Caesar</i>",
        "short_display": "<section><p><strong>Title</strong> <i>Some Buried Caesar</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Frankie and Benjy</p>\n<p><strong>Date</strong> 1967-09-25.</p></section>",
        "tags": [

        ]
      }
    ]
  }
}
~~~

