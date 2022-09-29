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

<pre>GET /letters/490b331b-bb0d-4256-8e9f-36ea86e3cfb0</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;501ebd040ebb4f4d2bf0f1f03891920b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b85bc0d5-77ce-430b-8c93-9bdcec75106d
X-Runtime: 0.726727
Vary: Origin
Content-Length: 7005</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/letters/490b331b-bb0d-4256-8e9f-36ea86e3cfb0",
  "date": "1965-07-12T00:00:00.000-04:00",
  "recipients": [
    {
      "id": "http://example.org/entities/c371fd15-b1e2-481f-91e5-67f7405d7a47.json",
      "type": "person",
      "label": "Gutmann, Shirley",
      "short_display": "<section><p><strong>Shirley Gutmann, 1908-1995</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/2a422f42-077e-4047-a89e-562098cd8a65.json",
      "type": "place",
      "label": "<i>Cathedral of Chalesm</i>",
      "short_display": "<section><p><strong><i>Cathedral of Chalesm</i></strong></p>\n<p>Pitchfork <i>cronut everyday tote bag listicle 1</i> chicharrones.</p></section>"
    }
  ],
  "mentions": {
    "places": [
      {
        "id": "http://example.org/entities/bf596d52-df5e-4d78-939d-bea13078ba8f.json",
        "type": "place",
        "label": "Madagascar",
        "short_display": "<section><p><strong>Madagascar</strong></p>\n<p>Beard sustainable dreamcatcher selfies helvetica 90s.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/343accf7-6edf-4a31-89bc-edba5d074bb0.json",
        "type": "place",
        "label": "<i>Ziggie's Den of Iniquity</i>",
        "short_display": "<section><p><strong><i>Ziggie's Den of Iniquity</i></strong></p>\n<p>Swag <i>tilde locavore loko semiotics disrupt chambray schlitz singleorigin</i> coffee.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/07d7c1ba-7321-4852-b604-f98d8364fa97.json",
        "type": "place",
        "label": "<i>Ziggie's Den of Iniquity</i>",
        "short_display": "<section><p><strong><i>Ziggie's Den of Iniquity</i></strong></p>\n<p>Pickled <i>roof street drinking shabby</i> chic.</p></section>",
        "tags": [

        ]
      }
    ],
    "readings": [
      {
        "id": "http://example.org/entities/9df98f67-f682-486c-bef9-5988e3d88f1b.json",
        "type": "reading",
        "label": "<i>Tender Is the Night</i>",
        "short_display": "<section><p><strong>Author</strong> Sarita Bailey DVM</p>\n<p><strong>Title</strong> <i>Tender Is the Night</i></p>\n<p><strong>Publication</strong> Firebrand Books.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/a92657c3-eb75-44e1-8c66-1c794b53f91b.json",
        "type": "reading",
        "label": "<i>Recalled to Life</i>",
        "short_display": "<section><p><strong>Author</strong> Lauran Hudson LLD</p>\n<p><strong>Title</strong> <i>Recalled to Life</i></p>\n<p><strong>Publication</strong> Berg Publishers.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/01031123-96c4-484f-be84-361a30edd105.json",
        "type": "reading",
        "label": "All the King's Men",
        "short_display": "<section><p><strong>Author</strong> Rev. Cherie Von</p>\n<p><strong>Title</strong> All the King's Men</p>\n<p><strong>Publication</strong> Libertas Academica.</p></section>",
        "tags": [

        ]
      }
    ],
    "translatings": [
      {
        "id": "http://example.org/entities/16c519cf-6da7-4f47-92a1-5a576fde9276.json",
        "type": "translating",
        "label": "The Wings of the Dove",
        "short_display": "<section><p><strong>Author</strong> Marvin, <strong>Original Title</strong> The Wings of the Dove</p>\n<p><strong>Translated into</strong> Portuguese by Elvis</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/6c97f543-63d2-4fd2-8fbb-bd504a8d0dca.json",
        "type": "translating",
        "label": "<i>A Scanner Darkly</i>",
        "short_display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> <i>A Scanner Darkly</i></p>\n<p><strong>Translated into</strong> Marathi by Slartibartfast</p>\n<p><strong>Translated title</strong> RW6.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/9279b5fe-af05-411b-a408-fba7a52cdc0a.json",
        "type": "translating",
        "label": "Jacob Have I Loved",
        "short_display": "<section><p><strong>Author</strong> Arthur Dent, <strong>Original Title</strong> Jacob Have I Loved</p>\n<p><strong>Translated into</strong> Marathi by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>",
        "tags": [

        ]
      }
    ],
    "writings": [
      {
        "id": "http://example.org/entities/842e0137-c150-47fb-a410-bacefa7cfb2e.json",
        "type": "writing",
        "label": "<i>The Wings of the Dove</i>",
        "short_display": "<section><p><strong>Title</strong> <i>The Wings of the Dove</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Date</strong> 1929-10-15.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/4c9426b2-70f7-41a5-b3c4-eeb1efa8b1cf.json",
        "type": "writing",
        "label": "<i>The Wealth of Nations</i>",
        "short_display": "<section><p><strong>Title</strong> <i>The Wealth of Nations</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Date</strong> 1932-11-28.</p></section>",
        "tags": [

        ]
      }
    ]
  }
}</pre>
