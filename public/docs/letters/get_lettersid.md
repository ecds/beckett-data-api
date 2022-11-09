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

<pre>GET /letters/f30b7079-5479-408a-850a-f688f9cb8478</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;7cb0c2170c974e12404b5b81a2a2a7d4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fd5add51-31ed-408c-96ef-84efd78711c1
X-Runtime: 0.705265
Vary: Origin
Content-Length: 7702</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "metadata": {
    "id": "http://example.org/letters/f30b7079-5479-408a-850a-f688f9cb8478",
    "date": "1973-11-15T00:00:00.000Z",
    "label": "15 November 1973 - Hartmann, Doug",
    "addressed_from": "20755 Shizuko Passage, New Maxborough, UT 44126-1592",
    "addressed_to": "Suite 279 3825 Dare Garden, West Israelside, ND 42468-9446",
    "envelope": "E",
    "physical_description": "Repudiandae beatae amet. Deserunt assumenda qui. Id ratione sed.",
    "postmark": "1955-02-11, Emmanuelmouth",
    "recipient": "Hartmann, Doug",
    "repository": "Northern Kassulke",
    "place_written": "Cathedral of Chalesm"
  },
  "recipients": [
    {
      "id": "http://example.org/entities/bd2f3a1d-887e-4ed5-af3a-71d73b73f60b.json",
      "type": "person",
      "label": "Hartmann, Doug",
      "short_display": "<section><p><strong>Doug Hartmann, 1903-1997</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/9e1420f7-274d-4161-aa7d-98369d729b76.json",
      "type": "place",
      "label": "<i>Croydon</i>",
      "short_display": "<section><p><strong><i>Croydon</i></strong></p>\n<p>Vice <i>postironic echo kale</i> chips.</p></section>"
    }
  ],
  "mentions": {
    "attendances": [
      {
        "id": "http://example.org/entities/4bdc19ce-45ce-4949-9954-bcfa439e0ddc.json",
        "type": "attendance",
        "label": "Radio Broadcast, Gentrify art party intelligentsia helvetica.",
        "short_display": "<section><p><strong>Radio Broadcast</strong>, Gentrify art party intelligentsia helvetica.</p>\n<p><strong>Attended with</strong> Brandt and Rob McKenna</p>\n<p><strong>Place, Date</strong> Kemmerside, 24 March 1962</p>\n<p><strong>Director</strong> Hotblack Desiato</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/67a9e882-31da-46d7-8f25-2bf29bbe4086.json",
        "type": "attendance",
        "label": "Rehearsal, Distillery retro meditation waistcoat slowcarb hoodie shoreditch.",
        "short_display": "<section><p><strong>Rehearsal</strong>, Distillery retro meditation waistcoat slowcarb hoodie shoreditch.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and JinJenz</p>\n<p><strong>Place, Date</strong> North Pandora, 26 January 1931</p>\n<p><strong>Director</strong> Ford Prefect</p></section>",
        "tags": [

        ]
      }
    ],
    "music": [
      {
        "id": "http://example.org/entities/07e830a6-84a3-4b7d-97cf-565c3a9084a0.json",
        "type": "music",
        "label": "<i>When Doves Cry</i>",
        "short_display": "<section><p><strong>Composer</strong> Wonko the Sane</p>\n<p><strong>Title</strong> <i>When Doves Cry</i></p>\n<p><strong>Description</strong> Readymade <i>tofu yr austin</i> drinking.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/15ad5871-c253-431b-8fc5-675206191519.json",
        "type": "music",
        "label": "<i>Mr. Nelson</i>",
        "short_display": "<section><p><strong>Composer</strong> Fenchurch</p>\n<p><strong>Title</strong> <i>Mr. Nelson</i></p>\n<p><strong>Description</strong> Letterpress <i>street offal mumblecore art party quinoa pourover</i> occupy.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/d3fffb8c-c56a-46f6-8ffd-0f1a303b0c56.json",
        "type": "music",
        "label": "<i>Head</i>",
        "short_display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Cleanse <i>heirloom fanny pack plaid austin</i> dreamcatcher.</p></section>",
        "tags": [

        ]
      }
    ],
    "publications": [
      {
        "id": "http://example.org/entities/0cffff3d-2f6e-4168-9937-f40c50300905.json",
        "type": "publication",
        "label": "Viking Press",
        "short_display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Viking Press</p>\n<p><strong>Translator</strong> Trin Tragula</p>\n<p><strong>Publication</strong> Church-key jean shorts xoxo raw denim chillwave occupy gluten-free direct trade.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/939448fe-1c34-477c-92a6-613987a07cbc.json",
        "type": "publication",
        "label": "<i>Paulist Press</i>",
        "short_display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Paulist Press</i></p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Publication</strong> Meditation semiotics +1 lomo kogi sustainable keytar mustache tousled.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/72825044-25d6-4571-8cd8-e1dd728a7d4e.json",
        "type": "publication",
        "label": "Atlantic Books",
        "short_display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Atlantic Books</p>\n<p><strong>Translator</strong> Mr. Prosser</p>\n<p><strong>Publication</strong> Carry pabst shabby chic humblebrag semiotics meh echo pinterest keffiyeh.</p></section>",
        "tags": [

        ]
      }
    ],
    "work_of_arts": [
      {
        "id": "http://example.org/entities/eef8729e-dfb0-42d0-83a2-1b9d20c02c1b.json",
        "type": "work_of_art",
        "label": "<i>Pretzel Body Logic</i>",
        "short_display": "<section><p><strong>Artist</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> <i>Pretzel Body Logic</i></p>\n<p><strong>Description</strong> Squid tattooed heirloom poutine.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/dbe55a7d-7d84-45dc-a52a-a832f1a04bf7.json",
        "type": "work_of_art",
        "label": "<i>My Name Is Prince</i>",
        "short_display": "<section><p><strong>Artist</strong> Hillman Hunter</p>\n<p><strong>Title</strong> <i>My Name Is Prince</i></p>\n<p><strong>Description</strong> Shabby chic master bushwick loko lumbersexual cornhole diy stumptown.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>",
        "tags": [

        ]
      }
    ]
  }
}
~~~

