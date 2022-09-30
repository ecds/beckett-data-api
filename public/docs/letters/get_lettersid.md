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

<pre>GET /letters/45a95151-b14c-4052-b9e6-682048474dcf</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f643bb075961e80b3d012152a816143d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fbc544ef-b4d1-4cf0-ab22-6829a2b48fea
X-Runtime: 0.666538
Vary: Origin
Content-Length: 6456</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/letters/45a95151-b14c-4052-b9e6-682048474dcf",
  "date": "1979-11-02T00:00:00.000-05:00",
  "recipients": [
    {
      "id": "http://example.org/entities/ab2c5cdd-add3-43c3-9014-cc092192655e.json",
      "type": "person",
      "label": "Hintz, Derrick",
      "short_display": "<section><p><strong>Derrick Hintz, 1908-1986</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/4f2fd0fb-d0dd-4824-bc12-08fff8023dd4.json",
      "type": "place",
      "label": "<i>France</i>",
      "short_display": "<section><p><strong><i>France</i></strong></p>\n<p>Vhs <i>put a bird on it everyday blue bottle banh mi you probably havent heard of them tousled</i> freegan.</p></section>"
    }
  ],
  "mentions": {
    "attendances": [
      {
        "id": "http://example.org/entities/b95a9486-c36d-44e1-99be-258301f989b9.json",
        "type": "attendance",
        "label": "Reading, 90s carry five dollar toast etsy ugh.",
        "short_display": "<section><p><strong>Reading</strong>, 90s carry five dollar toast etsy ugh.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Reg Nullify</p>\n<p><strong>Place, Date</strong> North Camelliachester, 21 January 1957</p>\n<p><strong>Director</strong> Barry Manilow</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/5c53f3c9-2aea-4dcb-87c6-4a721b9477a3.json",
        "type": "attendance",
        "label": "Reading, Synth retro listicle knausgaard offal wes anderson farmtotable cronut meditation.",
        "short_display": "<section><p><strong>Reading</strong>, Synth retro listicle knausgaard offal wes anderson farmtotable cronut meditation.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Galaxia Woonbeam</p>\n<p><strong>Place, Date</strong> East Juleview, 11 January 1945</p>\n<p><strong>Director</strong> Colin the Security Robot</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/6d29e5dc-9ce8-4e84-b906-16e440cd7939.json",
        "type": "attendance",
        "label": "Rehearsal, Poutine 1 squid wolf mumblecore.",
        "short_display": "<section><p><strong>Rehearsal</strong>, Poutine 1 squid wolf mumblecore.</p>\n<p><strong>Attended with</strong> Karl Hungus and Agda</p>\n<p><strong>Place, Date</strong> East Brandonhaven, 21 May 1944</p>\n<p><strong>Director</strong> Lunkwill and Fook</p></section>",
        "tags": [

        ]
      }
    ],
    "music": [
      {
        "id": "http://example.org/entities/3c73bfd8-f203-4042-abaa-abf3966a06f0.json",
        "type": "music",
        "label": "<i>Baby I'm A Star</i>",
        "short_display": "<section><p><strong>Composer</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> <i>Baby I'm A Star</i></p>\n<p><strong>Description</strong> Austin tousled glutenfree tryhard.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/7063892b-40c5-4b0e-a2aa-f385e437c62e.json",
        "type": "music",
        "label": "International Lover",
        "short_display": "<section><p><strong>Composer</strong> Max Quordlepleen</p>\n<p><strong>Title</strong> International Lover</p>\n<p><strong>Description</strong> Semiotics banjo umami 8bit austin.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/826538ed-2013-415e-980f-50e676961ca4.json",
        "type": "music",
        "label": "<i>Play In The Sunshine</i>",
        "short_display": "<section><p><strong>Composer</strong> Max Quordlepleen</p>\n<p><strong>Title</strong> <i>Play In The Sunshine</i></p>\n<p><strong>Description</strong> Helvetica <i>poutine fingerstache keytar</i> pbrb.</p></section>",
        "tags": [

        ]
      }
    ],
    "translatings": [
      {
        "id": "http://example.org/entities/f90113e4-2567-4a4e-b8ca-66a38e728b33.json",
        "type": "translating",
        "label": "Antic Hay",
        "short_display": "<section><p><strong>Author</strong> Arthur Philip Deodat, <strong>Original Title</strong> Antic Hay</p>\n<p><strong>Translated into</strong> Swedish by Zarquon</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>",
        "tags": [

        ]
      }
    ],
    "writings": [
      {
        "id": "http://example.org/entities/d5fc02f2-4850-472f-b2dd-2f32a6332451.json",
        "type": "writing",
        "label": "<i>An Acceptable Time</i>",
        "short_display": "<section><p><strong>Title</strong> <i>An Acceptable Time</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Date</strong> 1934-06-18.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/fb819fc8-c4ed-4b5a-ae18-790931f2f89f.json",
        "type": "writing",
        "label": "Bury My Heart at Wounded Knee",
        "short_display": "<section><p><strong>Title</strong> Bury My Heart at Wounded Knee</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1928-02-08.</p></section>",
        "tags": [

        ]
      }
    ]
  }
}
~~~

