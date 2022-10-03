# Letters API

## GET /letters?volumes=:list_of_volumes

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of paginated letters response. | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels. | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels. | false | null
| senders | Comma seperated list of sender labels. | false | null
| repositories | Comma seperated list of repository labels. | false | null
| languages | Case insensitive comma seperated list of languages. Options are English, French, German, and Italian. | false | null
| volumes | Comma sperated list of volumes. Options are 0, 1, 2, 3, and 4. Zero means no volume. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?volumes=1%2C+3</pre>

#### Query Parameters

<pre>volumes: 1, 3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;volumes=1%2C+3&gt;; rel=&#39;self&#39;
X-Total-Count: 11
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0a691ba2f9fd90ffc2351575304ac969&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9855c7c2-2eff-4412-9870-bd72bf7ae50a
X-Runtime: 2.728226
Vary: Origin
Content-Length: 47642</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/2b35cee0-7e9d-47bc-836f-43852f863bb7",
      "date": "1950-02-04T00:00:00.000-05:00",
      "label": "04 February 1950 - Rosenbaum, Diedre",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Rosenbaum, Diedre"
      ],
      "destinations": [
        "Ziggie's Den of Iniquity"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/40e939a3-6e30-4a13-8858-0271603024e6",
            "display": "<section><p><strong><i>Magrathea</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f0dcdcd1-5230-428e-9654-f155cf37e268",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8aa1675f-b11f-41c9-8404-d7bb0dd30974",
            "display": "<section><p><strong>Title</strong> The Great Escape</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Lake Cruzfurt</p>\n<p><strong>Date(s)</strong> 1971-10-19.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/8ab5433a-1f73-40c7-9d4b-cbf1a952bc88",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Marshall Cavendish</i></p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Publication</strong> Everyday typewriter yr ramps paleo bicycle rights retro +1 chicharrones.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/580c7411-a964-413a-8cd4-f1631f04f63d",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>Legend Books</i></p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Publication</strong> Kitsch banjo park skateboard photo booth.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3f6dd916-9a67-43f6-8d39-44a28858f7da",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Brill Publishers</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Salvia leggings squid iphone cardigan pickled diy celiac.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/a9b9e727-0714-415c-8599-5d348fa873e0",
            "display": "<section><p><strong>Author</strong> Sylvester Wilderman</p>\n<p><strong>Title</strong> To Sail Beyond the Sunset</p>\n<p><strong>Publication</strong> O'Reilly Media.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cd39d1a8-999a-41bb-9b49-80e00e93d317",
      "date": "1953-11-13T00:00:00.000-05:00",
      "label": "13 November 1953 - Purdy, Rodney",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Purdy, Rodney"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4fa30878-60b5-4c5a-9486-f8d5f98705de",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9a86827c-d60b-4d83-960d-931e8dba7903",
            "display": "<section><p><strong>Maximo Tillman, 1909-1985</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/53a6b3e1-21f6-4f2c-a2d5-2a1e3294394c",
            "display": "<section><p><strong><i>Lamuella</i></strong></p>\n<p>Celiac <i>before they sold out food truck health</i> sartorial.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e2de2e65-cd7f-477a-b4bb-439f06317c0d",
            "display": "<section><p><strong>Author</strong> Randal Fadel</p>\n<p><strong>Title</strong> Quo Vadis</p>\n<p><strong>Publication</strong> Berg Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1929ee6d-2320-4e17-bdb2-f8c46dcf81fe",
            "display": "<section><p><strong>Author</strong> Ike Hartmann</p>\n<p><strong>Title</strong> A Swiftly Tilting Planet</p>\n<p><strong>Publication</strong> Happy House.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9ae8bc1e-831e-452c-b38d-d7a24e1a9510",
      "date": "1956-04-08T00:00:00.000-05:00",
      "label": "08 April 1956 - Boehm, Laurence",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Boehm, Laurence"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/dccec537-69bf-4e4f-8dae-e2ff1cc07ddb",
            "display": "<section><p><strong><i>Kria</i></strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d25e3a03-cd88-4167-901a-c9152ca7bc67",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1948-07-20.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3c2ecc0d-1ddf-432d-a4c6-2ec53da90e4e",
            "display": "<section><p><strong>Author</strong> Majikthise, <strong>Original Title</strong> In Death Ground</p>\n<p><strong>Translated into</strong> Polish by Galaxia Woonbeam</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e26837a2-90a9-4427-a17d-f64d150cb81a",
            "display": "<section><p><strong>Title</strong> <i>Paths of Glory</i></p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Date</strong> 1962-04-01.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9a0e167d-dc9d-4cf3-aba5-c3b18f311210",
            "display": "<section><p><strong>Title</strong> The Green Bay Tree</p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1962-02-03.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f0019cd7-51ed-441d-a432-8e57cb7ea559",
      "date": "1959-09-07T00:00:00.000-04:00",
      "label": "07 September 1959 - D'Amore, Merry",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "D'Amore, Merry"
      ],
      "destinations": [
        "Islington"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7d01d4ed-fd6f-4f7f-98ba-38298ad13491",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato</p>\n<p><strong>Title</strong> <i>Black Sweat</i></p>\n<p><strong>Description</strong> Park 8bit vinyl intelligentsia marfa swag distillery.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d8480dc2-7eb1-46f9-aa4f-30cab1aa8bb7",
            "display": "<section><p><strong>Composer</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> <i>Can't Stop This Feeling I Got</i></p>\n<p><strong>Description</strong> Cornhole messenger bag synth hella 8bit celiac mlkshk bitters.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/fa8eb716-1240-4e23-90cb-914c0a12a87d",
            "display": "<section><p><strong>Broop Kidron Thirteen</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d45f4aec-c4e2-4293-b643-20741b28dd73",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Holt McDougal</p>\n<p><strong>Translator</strong> Galaxia Woonbeam</p>\n<p><strong>Publication</strong> Dreamcatcher skateboard artisan truffaut locavore vhs viral.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/697d02b1-7edf-4f99-a679-108d610532f2",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Indiana University Press</i></p>\n<p><strong>Translator</strong> Hactar</p>\n<p><strong>Publication</strong> Taxidermy occupy pour-over trust fund viral meggings chambray readymade.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/dc88b586-f06e-4166-bd6f-58e356926ac3",
            "display": "<section><p><strong>Author</strong> Dina Kuhlman</p>\n<p><strong>Title</strong> In a Dry Season</p>\n<p><strong>Publication</strong> Berg Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/98b477de-3cff-4f22-92f7-c91f0855ce69",
            "display": "<section><p><strong>Author</strong> Marshall Moen</p>\n<p><strong>Title</strong> Clouds of Witness</p>\n<p><strong>Publication</strong> Burns &amp; Oates.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b6110991-3346-49a3-b292-7ae9876c05b2",
      "date": "1961-04-11T00:00:00.000-05:00",
      "label": "11 April 1961 - Crooks, Dana",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Crooks, Dana"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/88a0be11-44df-4b31-805b-a0d14f9e5fef",
            "display": "<section><p><strong>Radio Broadcast</strong>, Fixie jean shorts ramps twee williamsburg scenester godard.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Zarniwoop</p>\n<p><strong>Place, Date</strong> South Williemae, 02 February 1943</p>\n<p><strong>Director</strong> Roosta</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/61414819-3f2b-4c1a-ba22-a7f2d0505862",
            "display": "<section><p><strong>Radio Broadcast</strong>, Cronut <i>diy chartreuse vinegar blue bottle hella letterpress photo booth</i> celiac.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Prostetnic Vogon Kwaltz</p>\n<p><strong>Place, Date</strong> Lake Anette, 07 March 1949</p>\n<p><strong>Director</strong> Pasta Fasta</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e2a5f66f-c60b-4aea-b3b9-36c214805775",
            "display": "<section><p><strong><i>Damogran</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/701be805-11f0-4efe-bb0f-4306223f3258",
            "display": "<section><p><strong><i>Hawalius</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/ed597fcb-39b2-46b7-9a66-22de1e8609e1",
            "display": "<section><p><strong>Deedra Raynor, 1913-1977</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/06b40266-d34f-4c47-875a-8b4f31e37c46",
            "display": "<section><p><strong>Brooks Hand, 1909-1982</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f1c5ec88-aaae-4559-81e1-7f980d3325bf",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1965-04-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/1ff13ec7-940c-4471-8e12-876bfde5a61d",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1933-01-18.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/47e045a4-be14-48b8-b380-d6ef952712b3",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1961-12-14.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/72b394b5-774f-4566-b242-65138c1391f5",
      "date": "1968-04-20T00:00:00.000-05:00",
      "label": "20 April 1968 - Torp, Mason",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Torp, Mason"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1514bd4c-f720-4b2e-a79a-e3160b646483",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>Endorphinmachine</i></p>\n<p><strong>Description</strong> Scenester you probably havent heard of them deep v cornhole.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fff5766a-65c5-4403-a7b9-76168ac3d8a9",
            "display": "<section><p><strong>Composer</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> Little Red Corvette</p>\n<p><strong>Description</strong> Vinyl irony master listicle.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/682a8cce-43ed-4472-b3a1-aa5ddf1d9066",
            "display": "<section><p><strong>Composer</strong> Zarniwoop</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Coldpressed yr semiotics austin celiac disrupt mustache gentrify drinking.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/adabcd09-fca5-44bd-990f-16a4c81eb685",
            "display": "<section><p><strong>Ted Denesik, 1914-1984</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b312c82a-5038-41cd-9720-0ea18adebf5d",
            "display": "<section><p><strong>Linh Bins, 1908-1996</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c2d5c217-9c17-449c-a400-9d78ad9b67ee",
            "display": "<section><p><strong>Daryl Dare, 1924-1983</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f28c5016-e49f-48a9-8fe8-bded01aa15e7",
            "display": "<section><p><strong>Title</strong> <i>The Shining</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / 42</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Heart of Gold, Lake Alva</p>\n<p><strong>Date(s)</strong> 1967-06-16.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b4a1b2a0-918f-41ae-ac60-86f610012a2f",
            "display": "<section><p><strong>Title</strong> <i>Double Indemnity</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Krikkit One, Valriefurt</p>\n<p><strong>Date(s)</strong> 1940-06-12.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/13ec8d77-0c3c-436c-8279-f41f207c7328",
            "display": "<section><p><strong>Title</strong> Network</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Starship Titanic, Shirleytown</p>\n<p><strong>Date(s)</strong> 1961-03-25.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/bf83ff77-b77f-49ae-b91d-ad73b240c92c",
            "display": "<section><p><strong>Author</strong> Rachelle Runolfsdottir</p>\n<p><strong>Title</strong> <i>A Summer Bird-Cage</i></p>\n<p><strong>Publication</strong> Cisco Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/55a4c708-0385-491f-b451-1580d60a79d7",
      "date": "1969-07-01T00:00:00.000-04:00",
      "label": "01 July 1969 - Abshire, Karly",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Abshire, Karly"
      ],
      "destinations": [
        "Café Lou"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/956f614b-e89a-40d3-8add-5d894f1e6ea6",
            "display": "<section><p><strong>Yoshie Murazik, 1908-1994</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5f531ed1-d2ce-4681-9523-14c4d3c9d20f",
            "display": "<section><p><strong>Miguel Jaskolski, 1906-1979</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ae44432f-1c24-4325-ab22-bf627a51d088",
            "display": "<section><p><strong>Jennie Ondricka, 1901-1998</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c3199470-5267-45d3-875c-959759c295a7",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>Whatever iphone paleo swag fingerstache blue bottle.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/911391fa-5557-4c7c-8217-1d959f736538",
            "display": "<section><p><strong><i>Café Lou</i></strong></p>\n<p>Roof five dollar toast squid narwhal godard microdosing.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/726ebb2f-71ef-450c-9af7-f4b186600c11",
            "display": "<section><p><strong>Author</strong> Kenneth Morissette VM</p>\n<p><strong>Title</strong> Vanity Fair</p>\n<p><strong>Publication</strong> Salt Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e821b800-7e38-4675-a3e5-e14d6a332f52",
            "display": "<section><p><strong>Author</strong> Gov. Leonard Ullrich</p>\n<p><strong>Title</strong> <i>That Hideous Strength</i></p>\n<p><strong>Publication</strong> Ballantine Books.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8c6fc057-144d-4b3d-800f-54c6a9b85924",
            "display": "<section><p><strong>Title</strong> The Wives of Bath</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Date</strong> 1938-12-24.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9bd0aa0f-6069-4c2e-9466-5403a306d86a",
            "display": "<section><p><strong>Title</strong> The Road Less Traveled</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Date</strong> 1951-09-11.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5ece371b-4b4f-481f-afa5-6dcab9c505ea",
            "display": "<section><p><strong>Title</strong> <i>Far From the Madding Crowd</i></p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Date</strong> 1965-05-16.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8e19e6d3-567e-4940-9900-f7d9b2167602",
      "date": "1971-03-23T00:00:00.000-05:00",
      "label": "23 March 1971 - Langworth, Omer",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Langworth, Omer"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/03e6cde3-5def-4d4e-b494-85fda1e8ffd1",
            "display": "<section><p><strong><i>Broop Kidron Thirteen</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/b1ee9019-1159-4be4-b729-62b0130506f8",
            "display": "<section><p><strong><i>Denmark</i></strong></p>\n<p>Locavore tousled squid bushwick umami synth intelligentsia vinyl.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6c61d192-6b01-4833-ae9d-f479752d694b",
            "display": "<section><p><strong><i>Asbleg</i></strong></p>\n<p>Squid cornhole hella pourover synth tryhard singleorigin coffee pug.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/aa5a3e3c-a296-4dd3-b90f-59e67c049cd8",
            "display": "<section><p><strong>Artist</strong> Dan Streetmentioner</p>\n<p><strong>Title</strong> Do It All Night</p>\n<p><strong>Description</strong> Sriracha butcher flexitarian goth small batch vinegar tryhard.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ffeb9cf3-3591-49ed-b416-f54371059b8e",
            "display": "<section><p><strong>Artist</strong> Loonquawl</p>\n<p><strong>Title</strong> Do It All Night</p>\n<p><strong>Description</strong> Vhs <i>authentic wolf plaid roof artisan mumblecore</i> shoreditch.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7634ed84-4ff7-46ff-ad25-50d50cfe0ae8",
            "display": "<section><p><strong>Title</strong> The Doors of Perception</p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Date</strong> 1972-03-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/39c9e482-9b22-4917-b7dd-36f3be275b54",
            "display": "<section><p><strong>Title</strong> Fear and Trembling</p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Date</strong> 1928-03-29.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a4b1af42-5e28-47b9-9da5-653f15ff6fa3",
            "display": "<section><p><strong>Title</strong> <i>Vile Bodies</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Date</strong> 1965-05-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7263620f-8c82-4fef-9948-0da9914df139",
      "date": "1978-01-13T00:00:00.000-05:00",
      "label": "13 January 1978 - Zemlak, Xenia",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Zemlak, Xenia"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bf91f827-0a3a-40ca-8f34-b64b6f5ac108",
            "display": "<section><p><strong>Reading</strong>, Put <i>a bird on it retro migas coldpressed flannel jean shorts freegan</i> pourover.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Prostetnic Vogon Kwaltz</p>\n<p><strong>Place, Date</strong> West Lorilee, 26 September 1925</p>\n<p><strong>Director</strong> Pizpot Gargravarr</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1377e18d-0c8e-43e5-8a42-9b9370e27fec",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> Mr. Nelson</p>\n<p><strong>Description</strong> 90s <i>salvia bushwick you probably havent heard of</i> them.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b1346cdf-bd9b-4fa6-a8f6-9248990273e1",
            "display": "<section><p><strong>Composer</strong> Emily Saunders</p>\n<p><strong>Title</strong> Play In The Sunshine</p>\n<p><strong>Description</strong> Offal tattooed street chicharrones kombucha farmtotable sriracha hammock hella.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/296900bf-8869-4b66-a201-192aa250c0b0",
            "display": "<section><p><strong>Frogstar World A</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/17112a95-4664-41a8-b5b6-ba8a91269a8a",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1939-10-04.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/45961c2a-b166-4535-a163-aeace627b6e0",
      "date": "1984-05-11T00:00:00.000-04:00",
      "label": "11 May 1984 - Kunze, Dewayne",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Kunze, Dewayne"
      ],
      "destinations": [
        "Pleiades system"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bf59ba59-6ff6-492e-a80e-fb2fb75e9f97",
            "display": "<section><p><strong>Johnette Rolfson, 1917-1995</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/42433ad4-a4e5-44ba-8975-562147b8cca2",
            "display": "<section><p><strong>Fallon Prosacco, 1922-1992</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/ca0f4f6b-835b-4beb-b486-71ebb6394dfc",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1947-12-29.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f5036ddd-39c8-47d4-906b-207811625252",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1929-08-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6a0b1513-e98f-49c6-80c3-5f185053bf4a",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1958-11-27.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/001c7efd-29b1-4d7b-985e-7997f99fbde8",
            "display": "<section><p><strong>Author</strong> The Allitnils, <strong>Original Title</strong> <i>Far From the Madding Crowd</i></p>\n<p><strong>Translated into</strong> English by Pasta Fasta</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7e6f924e-377e-42fe-b57c-c8525b1150e2",
            "display": "<section><p><strong>Author</strong> Arthur Dent, <strong>Original Title</strong> Tender Is the Night</p>\n<p><strong>Translated into</strong> Hungarian by Mella</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/fe2f2dc0-86fb-4900-9e91-031035b840bd",
            "display": "<section><p><strong>Author</strong> Arthur Dent, <strong>Original Title</strong> <i>Precious Bane</i></p>\n<p><strong>Translated into</strong> Greek by Fenchurch</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f933752f-14ca-4711-b114-37fb586fc16b",
            "display": "<section><p><strong>Artist</strong> Vroomfondel</p>\n<p><strong>Title</strong> Head</p>\n<p><strong>Description</strong> Gastropub farmtotable williamsburg whatever.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/aa3709ef-d178-40a7-bd63-4fd2da9b7f7a",
            "display": "<section><p><strong>Artist</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> I Feel For You</p>\n<p><strong>Description</strong> Kinfolk quinoa wes anderson diy trust fund.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7e853ed5-a5d4-498a-85c8-8762e2ebbd54",
            "display": "<section><p><strong>Artist</strong> Trin Tragula</p>\n<p><strong>Title</strong> Housequake</p>\n<p><strong>Description</strong> Listicle taxidermy ugh vinegar.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ddf4889e-fcb2-4bc3-9ef0-fe1642e8bfdf",
      "date": "1987-10-18T00:00:00.000-04:00",
      "label": "18 October 1987 - Mueller, Sherwood",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Mueller, Sherwood"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/fdb6c95d-e618-4217-866a-637eb9ff9afb",
            "display": "<section><p><strong>Composer</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> <i>And God Created Woman</i></p>\n<p><strong>Description</strong> Dreamcatcher <i>locavore mixtape tousled cliche</i> wolf.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d6a9986b-6bdd-4a91-9268-e766cc19450e",
            "display": "<section><p><strong>Composer</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> <i>Cindy C.</i></p>\n<p><strong>Description</strong> Butcher selfies small batch synth lofi ramps.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4c8e3b34-2333-4681-a2b0-bf1835f3eb21",
            "display": "<section><p><strong>Title</strong> <i>Memento</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Billion Year Bunker, East Perryville</p>\n<p><strong>Date(s)</strong> 1963-06-24.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2a890435-f8be-4c3d-b314-95731b9a92f3",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> <i>Gefen Publishing House</i></p>\n<p><strong>Translator</strong> Ford Prefect</p>\n<p><strong>Publication</strong> Microdosing try-hard raw denim pbr&amp;b next level hashtag keytar mumblecore banh mi.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/33ea394d-35f3-4f00-b492-4df24aff659f",
            "display": "<section><p><strong>Author</strong> Humma Kavula, <strong>Original Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Translated into</strong> Hungarian by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/01f6b8e5-13c8-45e2-8ef9-25a9ced13f18",
            "display": "<section><p><strong>Author</strong> JinJenz, <strong>Original Title</strong> <i>The Needle's Eye</i></p>\n<p><strong>Translated into</strong> French by Genghis Khan</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/1a38bd23-71a2-4a10-838a-456096cbe333",
            "display": "<section><p><strong>Author</strong> Dan Streetmentioner, <strong>Original Title</strong> <i>Unweaving the Rainbow</i></p>\n<p><strong>Translated into</strong> Arabic by Emily Saunders</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 2,
          "doc_count": 8
        },
        {
          "key": 3,
          "doc_count": 8
        },
        {
          "key": 4,
          "doc_count": 7
        },
        {
          "key": 0,
          "doc_count": 4
        },
        {
          "key": 1,
          "doc_count": 3
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 11,
      "buckets": [
        {
          "key_as_string": "1950-01-01T00:00:00.000Z",
          "key": -631152000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1951-01-01T00:00:00.000Z",
          "key": -599616000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1952-01-01T00:00:00.000Z",
          "key": -568080000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1953-01-01T00:00:00.000Z",
          "key": -536457600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1954-01-01T00:00:00.000Z",
          "key": -504921600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1955-01-01T00:00:00.000Z",
          "key": -473385600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1966-01-01T00:00:00.000Z",
          "key": -126230400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1967-01-01T00:00:00.000Z",
          "key": -94694400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1968-01-01T00:00:00.000Z",
          "key": -63158400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 0
        },
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1972-01-01T00:00:00.000Z",
          "key": 63072000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1973-01-01T00:00:00.000Z",
          "key": 94694400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1975-01-01T00:00:00.000Z",
          "key": 157766400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1976-01-01T00:00:00.000Z",
          "key": 189302400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1977-01-01T00:00:00.000Z",
          "key": 220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1980-01-01T00:00:00.000Z",
          "key": 315532800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1983-01-01T00:00:00.000Z",
          "key": 410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1984-01-01T00:00:00.000Z",
          "key": 441763200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1985-01-01T00:00:00.000Z",
          "key": 473385600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1986-01-01T00:00:00.000Z",
          "key": 504921600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1987-01-01T00:00:00.000Z",
          "key": 536457600000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 11,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Beatty Academy",
          "doc_count": 7
        },
        {
          "key": "North Iowa University",
          "doc_count": 5
        },
        {
          "key": "Western Gerlach",
          "doc_count": 5
        },
        {
          "key": "Eastern Bogan",
          "doc_count": 3
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 11,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 4
        },
        {
          "key": "french",
          "doc_count": 1
        },
        {
          "key": "german",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 11,
    "links": {
      "self": "http://example.org/letters?page=1&volumes=1%2C+3"
    }
  }
}
~~~

