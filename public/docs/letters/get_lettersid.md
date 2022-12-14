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

<pre>GET /letters/6b794eaa-d10e-4ffa-89fc-8b5bde79899f</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ec39ad77f7995b5a16afb0433c8040fc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 07837724-a00a-4bb0-9008-0cf7e161543f
X-Runtime: 0.703672
Vary: Origin
Content-Length: 5417</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "metadata": {
    "id": "http://example.org/letters/6b794eaa-d10e-4ffa-89fc-8b5bde79899f",
    "date": "1987-08-27T00:00:00.000Z",
    "label": "27 August 1987 - Sipes, Rueben",
    "addressed_from": "Suite 715 19542 Barrows Branch, Port Petrabury, CA 56459",
    "addressed_to": "2568 Pfannerstill Drive, North Zoilaburgh, AR 26179-9484",
    "envelope": "No",
    "postmark": "1987-10-27, Bergnaummouth",
    "physical_description_als": "A Sit quae voluptatem. Aliquam et qui. Officiis nulla ab. I",
    "physical_description_details": "freegan, Deserunt atque voluptates. Perspiciatis ut voluptate. Nostrum reprehenderit quia.",
    "postcard_image": "http://bode.biz/kickstarter.jpg",
    "leaves_and_sides": "1, 3",
    "recipient": "Rueben Sipes"
  },
  "repositories": {
    "repository": "East Tremblay",
    "format": "East Tremblay",
    "collection": "lo-fi",
    "repository_information": "flannel",
    "second_repository": "West Oklahoma Academy, iPhone, tofu",
    "third_repository": "The Rutherford Academy, Yuccie, 90's"
  },
  "publication_information": "The Letters of Samuel Beckett, 1957-1965",
  "recipients": [
    {
      "id": "http://example.org/entities/7764d34e-7091-4de2-84a9-9e18a4efac7a.json",
      "type": "person",
      "label": "Sipes, Rueben",
      "short_display": "<section><p><strong>Rueben Sipes, 1923-1971</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/78d5e820-f5cb-42d5-81d2-3a9ab47675fe.json",
      "type": "place",
      "label": "Betelgeuse",
      "short_display": "<section><p><strong>Betelgeuse</strong></p>\n<p>Bicycle <i>rights chillwave thundercats you probably havent heard of them offal meggings seitan</i> bitters.</p></section>"
    }
  ],
  "mentions": {
    "attendances": [
      {
        "id": "http://example.org/entities/3df638e3-0ed9-4ccb-afd8-b355d3b7927f.json",
        "type": "attendance",
        "label": "Rehearsal, Narwhal <i>raw denim vice you probably havent heard of them pitchfork 3 wolf</i> moon.",
        "short_display": "<section><p><strong>Rehearsal</strong>, Narwhal <i>raw denim vice you probably havent heard of them pitchfork 3 wolf</i> moon.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Prostetnic Vogon Jeltz</p>\n<p><strong>Place, Date</strong> Nicholleburgh, 29 February 1932</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/8cd00fcc-2ebd-47f2-a69a-2a497ae4769a.json",
        "type": "attendance",
        "label": "Reading, Trust fund venmo street williamsburg keffiyeh organic listicle.",
        "short_display": "<section><p><strong>Reading</strong>, Trust fund venmo street williamsburg keffiyeh organic listicle.</p>\n<p><strong>Attended with</strong> The Dude and Arthur Philip Deodat</p>\n<p><strong>Place, Date</strong> New Harrisberg, 29 October 1967</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>",
        "tags": [

        ]
      }
    ],
    "music": [
      {
        "id": "http://example.org/entities/f295f6f0-7d7e-42d9-a103-0f33127cac16.json",
        "type": "music",
        "label": "Sexy MF",
        "short_display": "<section><p><strong>Composer</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> Sexy MF</p>\n<p><strong>Description</strong> Phlogiston pitchfork cliche beard.</p></section>",
        "tags": [

        ]
      }
    ],
    "places": [
      {
        "id": "http://example.org/entities/ede46420-7700-4fe3-865b-d4b45c08cf78.json",
        "type": "place",
        "label": "Arthur Dent's house",
        "short_display": "<section><p><strong>Arthur Dent's house</strong></p>\n<p>Brooklyn bitters postironic street.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/c205e476-ede3-40a4-ad76-9bd19cecb7ba.json",
        "type": "place",
        "label": "Croydon",
        "short_display": "<section><p><strong>Croydon</strong></p>\n<p>Mixtape dreamcatcher photo booth loko.</p></section>",
        "tags": [

        ]
      }
    ],
    "readings": [
      {
        "id": "http://example.org/entities/31e7a4de-09fb-42eb-8b9b-bee706c9a157.json",
        "type": "reading",
        "label": "<i>The House of Mirth</i>",
        "short_display": "<section><p><strong>Author</strong> Theo Auer</p>\n<p><strong>Title</strong> <i>The House of Mirth</i></p>\n<p><strong>Publication</strong> Schocken Books.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/50adf364-bdf3-4112-8a38-cf94bdce4456.json",
        "type": "reading",
        "label": "Ego Dominus Tuus",
        "short_display": "<section><p><strong>Author</strong> Zane Conn</p>\n<p><strong>Title</strong> Ego Dominus Tuus</p>\n<p><strong>Publication</strong> Nonesuch Press.</p></section>",
        "tags": [

        ]
      }
    ]
  }
}
~~~

