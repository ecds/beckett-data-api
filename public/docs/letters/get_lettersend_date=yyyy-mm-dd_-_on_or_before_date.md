# Letters API

## GET /letters?end_date=:YYYY-MM-DD - On or Before Date

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

<pre>GET /letters?end_date=1980-03-09</pre>

#### Query Parameters

<pre>end_date: 1980-03-09</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1980-03-09&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 25
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fa80dd880c2bee421b3d76cff44b2722&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b172194f-e133-445a-9b7c-f2321d6bb8c3
X-Runtime: 2.730680
Vary: Origin
Content-Length: 98563</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/1c32585e-b12f-4e83-a6ff-c922baac8e04",
      "date": "1950-01-18T00:00:00.000-05:00",
      "label": "18 January 1950 - Kiehn, Carman",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Kiehn, Carman"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/a9e77dc1-94b4-4964-a785-4602b809bed7",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b8b18564-f4a5-4a75-993d-6f6a5b708cc9",
            "display": "<section><p><strong>Golgafrincham</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/eed5ce2c-8641-453b-8cc3-7736342cd8db",
            "display": "<section><p><strong>Title</strong> <i>Toy Story 3</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Billion Year Bunker, South Cameronstad</p>\n<p><strong>Date(s)</strong> 1934-01-01.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/235007bb-681c-4e05-937b-05e1a832490b",
            "display": "<section><p><strong>Title</strong> <i>Some Like It Hot</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Lake Ghislaineland</p>\n<p><strong>Date(s)</strong> 1934-09-01.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/40d6de94-fd9a-4b1b-b6b0-b07c8ebf69ae",
            "display": "<section><p><strong>Title</strong> Seven Samurai</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> RW6, Greenfeldermouth</p>\n<p><strong>Date(s)</strong> 1943-09-02.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a23f79f8-57de-4e9b-978e-234ca1e01a37",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> McGraw Hill Financial</p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Publication</strong> Chillwave everyday yolo kale chips echo venmo tofu keffiyeh authentic.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/de3bf984-83cd-4874-b032-a7a96a950877",
            "display": "<section><p><strong>Author</strong> Carlos Bogan</p>\n<p><strong>Title</strong> A Farewell to Arms</p>\n<p><strong>Publication</strong> Caister Academic Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4f7f0859-4cea-434c-b977-2edea9d9c522",
      "date": "1950-07-22T00:00:00.000-04:00",
      "label": "22 July 1950 - MacGyver, Carie",
      "language": "french",
      "volume": 4,
      "recipients": [
        "MacGyver, Carie"
      ],
      "destinations": [
        "Lord's Cricket Ground"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f646dbac-9519-4bff-8650-91b5bb94e331",
            "display": "<section><p><strong>Traal</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/54311903-ef9d-4302-8587-ccca6e407cb8",
            "display": "<section><p><strong>Traal</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8689f661-2108-4594-a08d-3e75bf25a98d",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1962-03-29.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/95198c8e-55d2-42d8-aab1-6ace89a53d8e",
            "display": "<section><p><strong>Author</strong> Brittani Schoen DC</p>\n<p><strong>Title</strong> The Moon by Night</p>\n<p><strong>Publication</strong> Book League of America.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/aac665d1-ec01-4c06-89fd-7fb9e8613e73",
            "display": "<section><p><strong>Author</strong> Cesar Parker DC</p>\n<p><strong>Title</strong> <i>The Far-Distant Oxus</i></p>\n<p><strong>Publication</strong> Edupedia Publications.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/df30668a-74d2-4193-90e8-224d4332895a",
            "display": "<section><p><strong>Author</strong> Nola Runolfsdottir Jr.</p>\n<p><strong>Title</strong> <i>Those Barren Leaves, Thrones, Dominations</i></p>\n<p><strong>Publication</strong> Firebrand Books.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5d740f98-f14c-4842-bee7-64dde1088845",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> International Lover</p>\n<p><strong>Description</strong> Mustache <i>ugh hella you probably havent heard of</i> them.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/271e4e48-7b9e-42ed-a69d-3ebd279a0473",
            "display": "<section><p><strong>Artist</strong> Agrajag</p>\n<p><strong>Title</strong> <i>Housequake</i></p>\n<p><strong>Description</strong> Sriracha yr venmo park iphone you probably havent heard of them.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ea10faca-52eb-430c-b32e-260a165350e6",
      "date": "1957-03-01T00:00:00.000-05:00",
      "label": "01 March 1957 - Wiegand, Kelvin",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Wiegand, Kelvin"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e35f4767-5c36-4da8-a566-7d01ab61f17f",
            "display": "<section><p><strong>Zachery Schmidt, 1926-1986</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/137446f5-753c-4d72-8078-fb401512c090",
            "display": "<section><p><strong>Marilee Bergnaum, 1903-1978</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/15bd6203-7db2-41d4-8fc2-f5872aa2df9a",
            "display": "<section><p><strong><i>Slim's Throat Emporium</i></strong></p>\n<p>Lofi semiotics hammock kitsch.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/0bf9ec6b-17da-411b-9387-8d0c13845669",
            "display": "<section><p><strong><i>The Domain of The King</i></strong></p>\n<p>Mustache <i>cornhole small batch banjo</i> coldpressed.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/32abadcd-15c9-483c-97cf-d9938cd648ff",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Art party artisan flannel biodiesel cardigan pinterest ethical intelligentsia lomo.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b1226cac-b035-450a-9059-99c80dadd212",
            "display": "<section><p><strong>Title</strong> Terminator 2: Judgment Day</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Bistromath, Rhettburgh</p>\n<p><strong>Date(s)</strong> 1943-07-24.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8a2bdeae-8130-4321-8bfc-292e87e8b607",
            "display": "<section><p><strong>Title</strong> <i>2001: A Space Odyssey</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Billion Year Bunker, East Edward</p>\n<p><strong>Date(s)</strong> 1967-03-26.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/97254df4-eecd-4b20-afb7-fb51c5b12450",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1945-05-30.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c7df1b88-9260-4c0c-9f23-29fbdbeca7db",
      "date": "1957-03-07T00:00:00.000-05:00",
      "label": "07 March 1957 - Wiza, Zella",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Wiza, Zella"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/321d02b4-0696-46b2-b753-26ee1b28c7e5",
            "display": "<section><p><strong>Reading</strong>, Cardigan ramps truffaut xoxo venmo ennui polaroid whatever vinyl.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Ford Prefect</p>\n<p><strong>Place, Date</strong> Jeanineview, 30 December 1925</p>\n<p><strong>Director</strong> Ford Prefect</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2e23fe3c-c25d-4363-bece-da9371d20c43",
            "display": "<section><p><strong>Kenyatta Ernser, 1902-1990</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9e13430d-d5e2-400c-9cbc-99c57194c20a",
            "display": "<section><p><strong>Clemencia Waters, 1909-1978</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/70537fc8-7cb7-411d-86f4-eb418e9048c0",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1960-08-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b79281d9-0f76-41b9-b4a0-843da68cc00d",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1969-11-08.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bc3dd199-d73b-4d3c-8f0d-1482c9e3771e",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Holland Park Press</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Publication</strong> Jean shorts viral cardigan direct trade sartorial.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9bcbf0d1-5dbe-4469-b7c2-f74b0f1239da",
      "date": "1958-01-02T00:00:00.000-05:00",
      "label": "02 January 1958 - Lindgren, Mireya",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Lindgren, Mireya"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2b51b7d0-c1ec-44a6-9e6f-24b2ef92f3c1",
            "display": "<section><p><strong>Reading</strong>, Phlogiston <i>cronut pinterest beard hoodie five dollar toast sartorial ethical</i> artisan.</p>\n<p><strong>Attended with</strong> Brandt and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> Jeremyborough, 28 October 1952</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2818170b-bf66-43df-8176-9e11b85db363",
            "display": "<section><p><strong>Rehearsal</strong>, Sriracha <i>schlitz postironic raw denim</i> diy.</p>\n<p><strong>Attended with</strong> Karl Hungus and Trillian</p>\n<p><strong>Place, Date</strong> Bednarborough, 14 January 1938</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/fb7eb181-44d5-4973-896c-b5ca0f100b44",
            "display": "<section><p><strong>Composer</strong> Vroomfondel</p>\n<p><strong>Title</strong> <i>How Come You Don't Call Me Anymore?</i></p>\n<p><strong>Description</strong> Ramps farmtotable scenester sustainable authentic waistcoat deep v.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b92ff186-f9bc-4be7-98c1-0dfdfccf9c90",
            "display": "<section><p><strong>Title</strong> <i>The Deer Hunter</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Vogon Constructor Fleet, West Mattietown</p>\n<p><strong>Date(s)</strong> 1955-03-10.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b9949327-3a77-4c65-9aee-dcdce699b634",
            "display": "<section><p><strong>Title</strong> Once Upon a Time in America</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Vogon Constructor Fleet, Wildermanville</p>\n<p><strong>Date(s)</strong> 1969-04-03.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/06225aab-0729-451e-8e45-4e6e1359f75e",
            "display": "<section><p><strong>Author</strong> Deandre Hartmann</p>\n<p><strong>Title</strong> Postern of Fate</p>\n<p><strong>Publication</strong> Jarrolds Publishing.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6dbce77d-2e31-430d-9b21-57dd1ea98c87",
      "date": "1958-06-04T00:00:00.000-04:00",
      "label": "04 June 1958 - Krajcik, Trevor",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Krajcik, Trevor"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1f80c820-f123-4651-8330-90b32d880a39",
            "display": "<section><p><strong>Radio Broadcast</strong>, 8bit <i>iphone offal typewriter shabby chic pourover bushwick</i> intelligentsia.</p>\n<p><strong>Attended with</strong> Brandt and Barry Manilow</p>\n<p><strong>Place, Date</strong> Cammystad, 13 August 1955</p>\n<p><strong>Director</strong> Marvin</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/49d6f020-7db8-495c-adf1-823eb76b0d8e",
            "display": "<section><p><strong>Magrathea</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/975a981b-6f00-467f-a8f5-db9396cd332c",
            "display": "<section><p><strong>Happi-Werld III</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/9b785df5-e349-4335-bfe4-26cb07ccf84b",
            "display": "<section><p><strong><i>Ziggie's Den of Iniquity</i></strong></p>\n<p>Stumptown poutine helvetica flannel heirloom fanny pack.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e4782c12-4f59-4534-b110-6983e4c3e24d",
            "display": "<section><p><strong>Belgium</strong></p>\n<p>Small batch street mixtape bitters literally cleanse keffiyeh food truck.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e4986eb3-fe92-4c5e-9f5f-28933dd859bd",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1935-04-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9df00c20-ed22-4d57-bbdf-5be6b1a6fcb1",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1929-09-16.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3c5fd272-f348-4377-83f4-bc6b810be484",
      "date": "1958-07-01T00:00:00.000-04:00",
      "label": "01 July 1958 - Frami, Terrell",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Frami, Terrell"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b0f015a2-b5af-43cc-bbe3-6cd45e1d7747",
            "display": "<section><p><strong>Bradly Goodwin, 1912-1973</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0a8ff774-6bc1-4b5e-98c1-da5adff5a0af",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1929-12-12.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/75cb4beb-6a25-4def-83cc-b0d47fadc503",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1946-10-28.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/554f114f-4ff8-4d11-ba15-46f19bfccef1",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>319</i></p>\n<p><strong>Description</strong> Kombucha <i>bicycle rights iphone tacos cred pinterest thundercats</i> aesthetic.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8e109c6c-a508-47b0-9ffc-83e002808fb7",
            "display": "<section><p><strong>Title</strong> <i>Waiting for the Barbarians</i></p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Date</strong> 1926-04-18.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/aae5e8ec-4f18-40b3-81e0-dca450e50eda",
            "display": "<section><p><strong>Title</strong> Unweaving the Rainbow</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1950-10-10.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3e66be80-88ed-494b-bd91-70c4eeec8d1f",
      "date": "1959-08-04T00:00:00.000-04:00",
      "label": "04 August 1959 - Yost, Lily",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Yost, Lily"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/de1a9b75-36e0-417f-81b4-fd3926a212f0",
            "display": "<section><p><strong>Earle Rempel, 1907-1982</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c889ef0d-7699-4f14-af26-7e976bea30c2",
            "display": "<section><p><strong>Classie Renner, 1919-1998</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8e452308-1754-4033-a1fd-e8e4f0a77bd0",
            "display": "<section><p><strong>Erasmo Brown, 1928-1976</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d5df9f47-dba5-4187-a50d-528d1f945831",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1926-11-04.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/37852c23-b0ba-4aab-8526-4c682c21099e",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1969-05-30.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7e64cdbd-1834-46a2-b143-d81f42c426d4",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1948-03-15.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/96e52183-bfcc-4da9-af4c-7f8c386d1d3b",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Newnes</i></p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Publication</strong> Forage yr shoreditch mumblecore wolf vice viral.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/183b6e76-832a-4774-8c47-8bccb9781b85",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Kensington Books</p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Publication</strong> Church-key master shoreditch hammock diy mumblecore leggings literally portland.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9132585e-a621-4203-980c-e022e100b3a6",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Kessinger Publishing</p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Publication</strong> Banh mi kombucha craft beer pork belly mlkshk farm-to-table fixie.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/53f81196-f538-4a6c-89d1-6cf1d260c426",
            "display": "<section><p><strong>Author</strong> Rep. Vincenzo Quitzon</p>\n<p><strong>Title</strong> Ego Dominus Tuus</p>\n<p><strong>Publication</strong> Harry N. Abrams, Inc.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7e51c340-5f4f-4c71-93b1-0103b8efcd19",
            "display": "<section><p><strong>Author</strong> Enrique Rosenbaum</p>\n<p><strong>Title</strong> <i>The Moving Finger</i></p>\n<p><strong>Publication</strong> Zed Books.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/70521a41-36b6-43a0-a6b6-82dea399b416",
      "date": "1960-08-20T00:00:00.000-04:00",
      "label": "20 August 1960 - Harris, Jamison",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Harris, Jamison"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e374d005-ac40-40df-9a3f-e2ae52cd0d0b",
            "display": "<section><p><strong>Reading</strong>, Offal <i>swag actually small batch fanny pack</i> yuccie.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Trillian</p>\n<p><strong>Place, Date</strong> Port Abdul, 08 March 1931</p>\n<p><strong>Director</strong> Genghis Khan</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8da1afc3-581c-40f0-9932-e6d9866aeb12",
            "display": "<section><p><strong>Composer</strong> Rob McKenna</p>\n<p><strong>Title</strong> <i>Delirious</i></p>\n<p><strong>Description</strong> Humblebrag <i>dreamcatcher slowcarb vinegar kombucha</i> ethical.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/4cda97ac-cedb-4413-938d-b343159d4f5f",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> <i>Can't Stop This Feeling I Got</i></p>\n<p><strong>Description</strong> Pabst schlitz actually yuccie bushwick etsy fixie diy.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/368d0da9-0bd7-4c02-a91c-7a6d77216056",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Lethe Press</i></p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Publication</strong> Salvia offal asymmetrical carry freegan seitan.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/fecce267-e1bb-4325-9c95-03c400ac12b1",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Tachyon Publications</i></p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Muggle magic paleo retro literally truffaut vice waistcoat stumptown viral.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/340b2257-d29a-4d9c-95c7-1e1d3b01f28b",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Target Books</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Publication</strong> Put a bird on it raw denim messenger bag kale chips.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/12a24153-7c4d-457d-9291-3233fbdf26b8",
            "display": "<section><p><strong>Artist</strong> Mr. Prosser</p>\n<p><strong>Title</strong> 1000 X's &amp; O's</p>\n<p><strong>Description</strong> Lomo <i>forage fixie mixtape deep</i> v.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9e3ef483-32ab-461d-a4ca-a55bfa4038c8",
            "display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> <i>New Position</i></p>\n<p><strong>Description</strong> Freegan park seitan chambray.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fa88ed75-0ff0-4f2a-a044-4363d56079c0",
            "display": "<section><p><strong>Artist</strong> Pasta Fasta</p>\n<p><strong>Title</strong> <i>The Beautiful Ones</i></p>\n<p><strong>Description</strong> Banjo poutine carry tousled butcher.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/467f3692-f0df-4f5d-bd41-48456d7f1f18",
      "date": "1960-10-10T00:00:00.000-04:00",
      "label": "10 October 1960 - Kutch, Seema",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Kutch, Seema"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1fd50d3d-bb51-493b-801b-9ac567700225",
            "display": "<section><p><strong>Composer</strong> Gail Andrews</p>\n<p><strong>Title</strong> Cream</p>\n<p><strong>Description</strong> Hoodie asymmetrical pug small batch 1 echo next level.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4d84aaf4-1e37-4168-a2e6-91eeecb2da97",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1955-06-01.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4b97771c-0143-43e7-80ad-16ac619cbe41",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> D. Appleton &amp; Company</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Publication</strong> Lomo ethical migas retro.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4a16f01a-4756-4b56-be1f-120a58e8f483",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Pavilion Books</p>\n<p><strong>Translator</strong> Tricia McMillan</p>\n<p><strong>Publication</strong> Vice next level freegan single-origin coffee offal thundercats.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d9cd9ea3-7073-4681-b569-113e894cde86",
            "display": "<section><p><strong>Author</strong> Leeanne Mertz</p>\n<p><strong>Title</strong> Alone on a Wide, Wide Sea</p>\n<p><strong>Publication</strong> Nauka.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/0c3cae95-17c6-4e43-aad4-0180905cb5ac",
            "display": "<section><p><strong>Author</strong> Dusty Shanahan</p>\n<p><strong>Title</strong> A Time of Gifts</p>\n<p><strong>Publication</strong> J. M. Dent.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/53f0f322-86ee-46f8-8417-7c9409bc0ffc",
            "display": "<section><p><strong>Author</strong> Rosario Von Ret.</p>\n<p><strong>Title</strong> <i>Consider Phlebas</i></p>\n<p><strong>Publication</strong> Reed Elsevier.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/baa8652a-ae0e-468c-a727-4707e3ff8c42",
      "date": "1961-05-28T00:00:00.000-04:00",
      "label": "28 May 1961 - Turcotte, Ruthe",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Turcotte, Ruthe"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/034543f8-a8d4-45be-a5ee-003a40e4f491",
            "display": "<section><p><strong>Marita Stark, 1903-1982</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e64aa9d4-853d-49cc-85f3-3e7735add83f",
            "display": "<section><p><strong>Meredith Reynolds, 1921-1979</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/223106eb-1c9a-4984-9b36-c98d632b444f",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Faber and Faber</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Publication</strong> Vegan muggle magic yuccie literally sriracha whatever scenester post-ironic.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/feb38160-d74a-4859-8229-f9cdee795ef3",
            "display": "<section><p><strong>Author</strong> Lorriane Metz</p>\n<p><strong>Title</strong> <i>The Way Through the Woods</i></p>\n<p><strong>Publication</strong> Peace Hill Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a977f997-8b2e-4995-940c-23fee6b53eab",
            "display": "<section><p><strong>Author</strong> Prak, <strong>Original Title</strong> <i>A Many-Splendoured Thing</i></p>\n<p><strong>Translated into</strong> Icelandic by Roosta</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6661d7ab-14ff-4a20-817d-cac5a1e12a9b",
      "date": "1961-11-17T00:00:00.000-05:00",
      "label": "17 November 1961 - Heidenreich, Love",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Heidenreich, Love"
      ],
      "destinations": [
        "Frogstar World B"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b07562b9-6dfc-4475-96df-6ddd714172d9",
            "display": "<section><p><strong>Nestor Bashirian, 1907-1975</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6a15636e-f962-40f7-98d9-f0f0c7c1d7a6",
            "display": "<section><p><strong>Brent Jast, 1911-1990</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/59608220-8ca9-44f7-a752-6c625d199b04",
            "display": "<section><p><strong>Dustin Koelpin, 1925-1997</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/765a3f92-26f2-41f8-a64f-2693323d72ad",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Target Books</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Publication</strong> Meggings cliche vegan direct trade semiotics vinegar aesthetic meh street.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/89b076f9-1dd1-4751-8b31-35d08bf4129d",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Bella Books</i></p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Publication</strong> Etsy everyday intelligentsia pickled migas.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/6fa936ac-3180-442a-a774-789b83938715",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> New English Library</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Publication</strong> Chicharrones flexitarian taxidermy retro skateboard.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/940eb5c4-fc0c-4013-967b-7340ebff8c67",
            "display": "<section><p><strong>Author</strong> Pres. Beaulah Schumm</p>\n<p><strong>Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Publication</strong> Anvil Press Poetry.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/37e0faab-6681-49b1-b978-e7bbaf28bc89",
            "display": "<section><p><strong>Author</strong> Fr. Jeremiah Sporer</p>\n<p><strong>Title</strong> The Daffodil Sky</p>\n<p><strong>Publication</strong> Leafwood Publishers.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f4a903a8-a690-4630-a273-7240a0f2582b",
            "display": "<section><p><strong>Title</strong> Edna O'Brien</p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Date</strong> 1939-06-26.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/41c10727-75e3-4ef4-aee2-978f336fc37e",
            "display": "<section><p><strong>Title</strong> Eyeless in Gaza</p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Date</strong> 1930-09-29.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c0a8b9e0-7dd6-447b-b018-7a8e813fb39f",
      "date": "1962-11-15T00:00:00.000-05:00",
      "label": "15 November 1962 - Aufderhar, Saundra",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Aufderhar, Saundra"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/42d84d8c-8bfa-4ca9-9c6f-e251dba211b6",
            "display": "<section><p><strong>Lamuella</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/23067cf0-3d9d-405e-be69-cb42bf2198e8",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e3dc45e0-3d79-4aa2-831a-da94ce4eecf0",
            "display": "<section><p><strong>Pleiades system</strong></p>\n<p>Tousled <i>gentrify tattooed migas</i> freegan.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/2e17a3f0-ba5d-41b8-9010-7fb5ed35e653",
            "display": "<section><p><strong>Title</strong> <i>Sholay</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Krikkit One, East Fernando</p>\n<p><strong>Date(s)</strong> 1925-10-03.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/fa27ff06-1051-4bac-9992-54e297cfe39c",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1945-02-17.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/bd8af982-9fa7-4655-ba4c-87a519b7e4d0",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1959-04-20.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8c55e1b3-e0ad-4a54-933c-9f7c73cec316",
      "date": "1965-02-14T00:00:00.000-05:00",
      "label": "14 February 1965 - Olson, Lavonia",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Olson, Lavonia"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/335fb364-18fb-4040-ae92-f61ed54b9729",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>Small <i>batch coldpressed salvia muggle magic</i> ennui.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b5cd3a38-9cae-412b-95c6-410e0088f1d6",
            "display": "<section><p><strong>Total Perspective Vortex</strong></p>\n<p>Kinfolk <i>microdosing wayfarers butcher occupy craft</i> beer.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6432923c-65c9-414c-b52c-a5c581d29310",
            "display": "<section><p><strong>Title</strong> The Sting</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Bistromath, North Juliochester</p>\n<p><strong>Date(s)</strong> 1944-03-07.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/391d3c0d-de37-4974-9abf-5e02972e13a6",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Harvard University Press</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Publication</strong> Diy migas gentrify locavore whatever fashion axe mlkshk blue bottle vice.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/754f8cf5-fff5-460c-bd8b-bcfe164178f0",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>University of Minnesota Press</i></p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Publication</strong> Brooklyn before they sold out scenester fashion axe cliche kickstarter pour-over shabby chic artisan.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/b3e36951-e5d8-4f3f-bf60-5b80203046b1",
            "display": "<section><p><strong>Author</strong> Dwight Langosh</p>\n<p><strong>Title</strong> Such, Such Were the Joys</p>\n<p><strong>Publication</strong> Casemate Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2312c5e5-78b2-4736-9518-397439f363cb",
            "display": "<section><p><strong>Author</strong> Alethia Bergstrom DC</p>\n<p><strong>Title</strong> Lilies of the Field</p>\n<p><strong>Publication</strong> Harvest House.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5c2b1095-2fd4-4ae7-a100-405a701eea54",
      "date": "1966-07-01T00:00:00.000-04:00",
      "label": "01 July 1966 - Dickens, Tora",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Dickens, Tora"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5c05f14a-650a-4fe5-9f4c-07cf7c89c21e",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9cd8a385-dbb1-4e75-8332-6bbddca2f1be",
            "display": "<section><p><strong><i>Hawalius</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/94165e9c-d29d-4498-ab5c-2c49665f796b",
            "display": "<section><p><strong>Title</strong> <i>Star Wars: Episode V - The Empire Strikes Back</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Boscoborough</p>\n<p><strong>Date(s)</strong> 1968-05-04.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6f3c6da3-83af-409c-8b5c-ba2487eefecd",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Atlas Press</p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Cardigan vinegar actually synth quinoa hoodie 3 wolf moon meditation chia.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c8ba3bc9-8ff3-4a0b-a731-591ce915a607",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> McFarland &amp; Company</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> Drinking pabst knausgaard tofu craft beer shabby chic organic wolf green juice.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/fd76b285-1c60-44be-868f-190a51b542e3",
            "display": "<section><p><strong>Author</strong> Hactar, <strong>Original Title</strong> <i>Jacob Have I Loved</i></p>\n<p><strong>Translated into</strong> Polish by Questular Rontok</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/dd560fd7-1896-4861-9451-965dcb7b296b",
            "display": "<section><p><strong>Author</strong> Arthur Dent, <strong>Original Title</strong> <i>An Instant In The Wind</i></p>\n<p><strong>Translated into</strong> Dutch by Garkbit</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a8f90f6a-4223-4d52-bedc-00029e4a7c6f",
      "date": "1967-07-12T00:00:00.000-04:00",
      "label": "12 July 1967 - Hermiston, Alonso",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Hermiston, Alonso"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8fac6a8f-6733-41b6-b8f7-e97d788cca48",
            "display": "<section><p><strong><i>Krikkit</i></strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/004af02f-bc1f-400c-a8cc-3e50474e4fd1",
            "display": "<section><p><strong>Nano</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d2d1bcf9-ec12-45fa-98e4-d50167177d32",
            "display": "<section><p><strong>Title</strong> <i>The Elephant Man</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Don’t Panic</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Bistromath, Lake Kenisha</p>\n<p><strong>Date(s)</strong> 1940-07-26.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/63dda62b-c2a9-4550-b6f0-f3e348027527",
            "display": "<section><p><strong>Title</strong> The Big Lebowski</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> RW6, North Rickiport</p>\n<p><strong>Date(s)</strong> 1942-09-18.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/44cfbc96-7517-4de3-86bd-36e65cab4827",
            "display": "<section><p><strong>Artist</strong> Vroomfondel</p>\n<p><strong>Title</strong> <i>Sexy MF</i></p>\n<p><strong>Description</strong> Meggings <i>heirloom blog migas humblebrag sriracha keytar direct</i> trade.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7ef52aae-3b5a-4a48-8989-4f7639d03237",
            "display": "<section><p><strong>Title</strong> <i>That Hideous Strength</i></p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Date</strong> 1943-12-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5c700b3d-93da-438a-a03b-46576f33d9ac",
      "date": "1967-08-15T00:00:00.000-04:00",
      "label": "15 August 1967 - Hauck, Aundrea",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Hauck, Aundrea"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/36ec5ddd-e537-4791-b486-65147b5026a3",
            "display": "<section><p><strong>Eleonor Schinner, 1902-1987</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/8a2f2227-5155-4b6a-b0c3-cabadc078f16",
            "display": "<section><p><strong><i>Frogstar system</i></strong></p>\n<p>Locavore wayfarers crucifix drinking fingerstache.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d026f17b-52c3-4ce7-9688-843edb713011",
            "display": "<section><p><strong><i>Bistro Illegal</i></strong></p>\n<p>Portland ennui blue bottle forage tumblr letterpress fingerstache cray.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9c947454-aea1-40d2-98d5-f3e777862f2d",
            "display": "<section><p><strong>Author</strong> Bob Leuschke</p>\n<p><strong>Title</strong> <i>Carrion Comfort</i></p>\n<p><strong>Publication</strong> Chronicle Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d163a30c-9498-405a-ab55-2474ac74a768",
            "display": "<section><p><strong>Author</strong> Tom Kuvalis IV</p>\n<p><strong>Title</strong> Recalled to Life</p>\n<p><strong>Publication</strong> Darakwon Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8dce1174-66a8-43ac-a7fe-dffb11c4f859",
            "display": "<section><p><strong>Author</strong> Brandon Little</p>\n<p><strong>Title</strong> A Time of Gifts</p>\n<p><strong>Publication</strong> Hodder &amp; Stoughton.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/dccf6324-543a-432b-98a0-a14e019c5475",
            "display": "<section><p><strong>Author</strong> Prak, <strong>Original Title</strong> <i>Absalom, Absalom!</i></p>\n<p><strong>Translated into</strong> Italian by Emily Saunders</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f6731d8b-83bf-47d3-a3e9-8ca5d951641a",
      "date": "1967-12-18T00:00:00.000-05:00",
      "label": "18 December 1967 - Jakubowski, Bernardo",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Jakubowski, Bernardo"
      ],
      "destinations": [
        "Xaxis"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8c59c3c3-ca69-43d5-9720-47a1ec1cf9d1",
            "display": "<section><p><strong>Donovan Wisoky, 1928-1987</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/772b968c-a0e4-4e8c-ac40-ca4fc37d8055",
            "display": "<section><p><strong>Pattie Yundt, 1926-1988</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/97b48ee9-9582-4626-8990-c51edea48c94",
            "display": "<section><p><strong>Title</strong> <i>Gladiator</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, New Rickie</p>\n<p><strong>Date(s)</strong> 1952-01-25.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7a6f1e66-7e60-4649-ab55-7a6a81bd0ba8",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1924-12-12.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b6478499-5484-4f3f-b24f-98dfe6bb3b5b",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1972-09-02.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/235b9c26-3ab5-4309-ab1c-c78b9bf552ca",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1935-10-04.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/fcfc3f07-37de-4455-ad3b-d552bb6b9b56",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> <i>Hackett Publishing Company</i></p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Publication</strong> Wolf kale chips narwhal post-ironic mixtape williamsburg lomo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/13f9bc9c-4112-469e-86bf-96ac923e8aed",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>Harlequin Enterprises Ltd</i></p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Publication</strong> Master godard cornhole meh organic goth flannel 3 wolf moon.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/62d2330c-9fbe-4d2a-ae19-3305b7111f1f",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Mandrake Press</p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Publication</strong> Schlitz 90's cornhole fingerstache keffiyeh keytar.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a1dee9b1-3e53-45a3-939f-5c262aea91d0",
      "date": "1968-04-05T00:00:00.000-05:00",
      "label": "05 April 1968 - Satterfield, Rod",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Satterfield, Rod"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/94a7c345-c5d7-4767-800a-2c5043170df6",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2072621d-89a3-410e-b926-c3dd2c48da7f",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Reed Elsevier</i></p>\n<p><strong>Translator</strong> Hactar</p>\n<p><strong>Publication</strong> Cleanse five dollar toast mumblecore green juice pbr&amp;b yuccie.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/16b7eef6-2064-442b-a1bc-c1a960f0c192",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Candlewick Press</i></p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Publication</strong> Disrupt hashtag skateboard biodiesel authentic.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1085ab0a-d946-4d9b-af80-133b56d1e33f",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Happy House</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Publication</strong> Direct trade brunch chia occupy mixtape tote bag gentrify jean shorts health.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c99a440a-223a-4c37-99c5-686f94cfd921",
            "display": "<section><p><strong>Artist</strong> Eddie the Computer</p>\n<p><strong>Title</strong> 319</p>\n<p><strong>Description</strong> Umami blue bottle seitan organic kickstarter.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/216e604d-841c-45fb-a1e4-0471e3ea3578",
            "display": "<section><p><strong>Title</strong> <i>That Hideous Strength</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Date</strong> 1964-03-31.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/89a6b40c-d984-48e8-8351-bed8ccc608ec",
            "display": "<section><p><strong>Title</strong> His Dark Materials</p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1933-07-06.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7abeebbb-b8cc-4250-9805-10fb9266625b",
            "display": "<section><p><strong>Title</strong> <i>A Monstrous Regiment of Women</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1948-08-08.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2d1a90ee-1987-4320-8c05-5fba574f848d",
      "date": "1968-09-20T00:00:00.000-04:00",
      "label": "20 September 1968 - Jaskolski, Melinda",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Jaskolski, Melinda"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/71c6c6e3-e08d-43ad-be7c-b8290b8bbef1",
            "display": "<section><p><strong>Rehearsal</strong>, Shoreditch sustainable messenger bag typewriter tofu photo booth coldpressed tryhard.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Hactar</p>\n<p><strong>Place, Date</strong> Lake Alejandroton, 27 February 1964</p>\n<p><strong>Director</strong> Ford Prefect</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/75cf5263-e484-4c99-bfb7-60fa5debbf7b",
            "display": "<section><p><strong>Radio Broadcast</strong>, Loko beard yr 3 wolf moon.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Colin the Security Robot</p>\n<p><strong>Place, Date</strong> East Sheldon, 18 March 1957</p>\n<p><strong>Director</strong> Lintilla</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/afe5e458-2c34-4480-868f-6f94facda765",
            "display": "<section><p><strong>Arkintoofle Minor</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/7bf6853e-9d0b-49f5-b989-e9b34fac624e",
            "display": "<section><p><strong>Doyle Effertz, 1915-1993</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/18e42611-6e00-49cb-bc16-07d3e76dda34",
            "display": "<section><p><strong>Dorothea Schowalter, 1922-1973</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7907fded-79b2-49bb-b7be-fb20a160083e",
            "display": "<section><p><strong>Artist</strong> Tricia McMillan</p>\n<p><strong>Title</strong> Le Grind</p>\n<p><strong>Description</strong> Trust <i>fund postironic vegan meh loko tousled vinyl godard</i> echo.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9971efa2-e5bd-4253-8e3c-80cd7c798a1d",
            "display": "<section><p><strong>Artist</strong> Prak</p>\n<p><strong>Title</strong> <i>Gold</i></p>\n<p><strong>Description</strong> Lumbersexual <i>fashion axe thundercats</i> kogi.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6c60c637-70e9-4b5d-95ba-8562410747fb",
            "display": "<section><p><strong>Artist</strong> Random Dent</p>\n<p><strong>Title</strong> <i>Pink Cashmere</i></p>\n<p><strong>Description</strong> Forage <i>meh sriracha sustainable pitchfork knausgaard</i> 90s.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3a1dca24-1a3d-4535-a50d-02687f926a01",
      "date": "1969-08-10T00:00:00.000-04:00",
      "label": "10 August 1969 - Emmerich, Dane",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Emmerich, Dane"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d515b972-21d9-4423-bffb-7384e260fa5c",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>Housequake</i></p>\n<p><strong>Description</strong> Park cornhole trust fund muggle magic kombucha pork belly.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/0d2941b2-f724-4125-a5d5-acacc314d3cf",
            "display": "<section><p><strong>Composer</strong> Trin Tragula</p>\n<p><strong>Title</strong> Another Lonely Christmas</p>\n<p><strong>Description</strong> Truffaut <i>park umami kinfolk vhs vinyl organic pbrb</i> williamsburg.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/4c067c9d-16af-4aac-acb1-e7a01ed4f288",
            "display": "<section><p><strong>Composer</strong> Emily Saunders</p>\n<p><strong>Title</strong> <i>Strange Relationship</i></p>\n<p><strong>Description</strong> Leggings cred hashtag five dollar toast sartorial poutine carry.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/058be2ed-c161-4fd2-9402-75990a2e332c",
            "display": "<section><p><strong><i>Kria</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8892695d-bab4-4d34-a8d6-3e791b55c4a2",
            "display": "<section><p><strong><i>Sqornshellous Zeta</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/15fe055b-0b2d-4c7f-8eb6-07855ea1ed78",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1958-03-28.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/84b9a1bd-4464-427b-bf90-a4136f93cc16",
            "display": "<section><p><strong>Author</strong> Laine Wyman</p>\n<p><strong>Title</strong> <i>From Here to Eternity</i></p>\n<p><strong>Publication</strong> Haynes Manuals.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ff194fe6-3b4a-4efd-8b65-9298049905d2",
      "date": "1970-01-10T00:00:00.000-05:00",
      "label": "10 January 1970 - Schowalter, Ned",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Schowalter, Ned"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6f5d9ba6-6651-4621-b293-28e5230973ae",
            "display": "<section><p><strong>Reading</strong>, Brunch <i>portland fanny pack godard mustache put a bird on it beard</i> venmo.</p>\n<p><strong>Attended with</strong> Donny and Magrathean sperm whale</p>\n<p><strong>Place, Date</strong> South Murrayfort, 29 February 1960</p>\n<p><strong>Director</strong> Loonquawl and Phouchg</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/731dc473-4d7e-42df-b58d-156daf0289de",
            "display": "<section><p><strong>Rehearsal</strong>, Keffiyeh <i>offal brunch stumptown aesthetic seitan celiac tryhard</i> actually.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Prak</p>\n<p><strong>Place, Date</strong> Abelborough, 14 October 1961</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d4175e60-1967-43d4-9d3c-9762723bf92d",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Schocken Books</i></p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Publication</strong> Vice asymmetrical fanny pack vhs taxidermy mumblecore shoreditch.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/55588fe7-36e2-4235-8b99-8ff50373625d",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Ellora's Cave</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Publication</strong> Fingerstache tilde sustainable cray dreamcatcher cliche.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/629958a7-9c7d-4c40-8729-0019949541ef",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Verso Books</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Publication</strong> Vinegar scenester kombucha flannel freegan typewriter vegan.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/98349b8a-34d7-4597-a41b-59437ece7d18",
            "display": "<section><p><strong>Artist</strong> Fenchurch</p>\n<p><strong>Title</strong> 3 Chains o' Gold</p>\n<p><strong>Description</strong> Ennui <i>brunch celiac meditation microdosing sriracha williamsburg</i> literally.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/221d4a6c-1bb3-4fc6-8caf-092ee449b4c6",
            "display": "<section><p><strong>Title</strong> Eyeless in Gaza</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Date</strong> 1965-06-11.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d177a81c-0584-45ff-8f3f-15148c1fc830",
            "display": "<section><p><strong>Title</strong> <i>Precious Bane</i></p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Humma Kavula</p>\n<p><strong>Date</strong> 1925-04-16.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4904806e-587f-4740-abb9-307ab8511127",
      "date": "1971-11-27T00:00:00.000-05:00",
      "label": "27 November 1971 - Gulgowski, Edgar",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Gulgowski, Edgar"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a1a08b62-1c7b-488e-9c4a-4ae7746e508e",
            "display": "<section><p><strong>Composer</strong> Lintilla</p>\n<p><strong>Title</strong> <i>Baby I'm A Star</i></p>\n<p><strong>Description</strong> Mlkshk <i>vinegar chicharrones popup blog franzen</i> diy.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/99160849-552c-40e0-96de-9f3afb529b46",
            "display": "<section><p><strong>Title</strong> <i>Heat</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Heart of Gold, Pfefferside</p>\n<p><strong>Date(s)</strong> 1970-12-06.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4ecd1082-f239-41d1-8bb9-2c29dcd028ad",
            "display": "<section><p><strong>Author</strong> Alla Armstrong</p>\n<p><strong>Title</strong> <i>Quo Vadis</i></p>\n<p><strong>Publication</strong> Heyday Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c7a8b4ee-5245-46d4-99a1-5b0888b03ac1",
            "display": "<section><p><strong>Author</strong> Walton Ferry MD</p>\n<p><strong>Title</strong> <i>Dulce et Decorum Est</i></p>\n<p><strong>Publication</strong> McGraw-Hill Education.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e5700465-d3e6-4f95-be8a-6e6efc2d1ac3",
            "display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> <i>Consider Phlebas</i></p>\n<p><strong>Translated into</strong> Norwegian by Pizpot Gargravarr</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a64877aa-b826-4a61-a08a-f1d44e963c18",
            "display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> <i>The Other Side of Silence</i></p>\n<p><strong>Translated into</strong> Flemish by Eddie the Computer</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/75737e20-d6ce-49a0-9d8d-3a912b9ea1fb",
      "date": "1978-02-24T00:00:00.000-05:00",
      "label": "24 February 1978 - Stark, Hal",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Stark, Hal"
      ],
      "destinations": [
        "<i>Frogstar system</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3bb5f9bf-56a6-43c3-8d06-5612b89b7cab",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/113d7949-578f-4108-9c11-0992f0a8ab2a",
            "display": "<section><p><strong>Lamuella</strong></p>\n<p>Retro iphone swag portland muggle magic crucifix xoxo.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/47804a0c-8aa2-4516-9e24-7a1496278998",
            "display": "<section><p><strong>Title</strong> <i>The Sting</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> RW6, Pacochaburgh</p>\n<p><strong>Date(s)</strong> 1961-05-27.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5887d289-cec2-449d-86d0-890da5d33de3",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1965-02-22.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/32e9a61d-3773-44a7-8d31-4a5be096b4ef",
      "date": "1980-03-09T00:00:00.000-05:00",
      "label": "09 March 1980 - Bruen, Scotty",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Bruen, Scotty"
      ],
      "destinations": [
        "<i>Belgium</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3df1aea1-04ce-4a42-91a0-9ee0a2cb9188",
            "display": "<section><p><strong>Composer</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> I Wish U Heaven</p>\n<p><strong>Description</strong> Art <i>party tacos kickstarter stumptown drinking selvage</i> street.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/513bd933-6de4-4cd2-812a-ceb8b5315614",
            "display": "<section><p><strong>NowWhat</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6316e317-5887-49d2-9dc6-7c7195a822a5",
            "display": "<section><p><strong>Bartledan</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d6423b72-58c4-4db3-9963-facb9cf32e84",
            "display": "<section><p><strong>Author</strong> Questular Rontok, <strong>Original Title</strong> A Handful of Dust</p>\n<p><strong>Translated into</strong> Icelandic by Random Dent</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/788a5e87-8f8b-47f8-8008-dd66a9a7e63f",
            "display": "<section><p><strong>Artist</strong> Rob McKenna</p>\n<p><strong>Title</strong> <i>Cream</i></p>\n<p><strong>Description</strong> Fingerstache plaid messenger bag lofi.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 25,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 2,
          "doc_count": 11
        },
        {
          "key": 4,
          "doc_count": 5
        },
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 3,
          "doc_count": 3
        },
        {
          "key": 0,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "doc_count": 25,
      "buckets": [
        {
          "key_as_string": "1950-01-01T00:00:00.000Z",
          "key": -631152000000,
          "doc_count": 2
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
          "doc_count": 0
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
          "doc_count": 0
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1966-01-01T00:00:00.000Z",
          "key": -126230400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1967-01-01T00:00:00.000Z",
          "key": -94694400000,
          "doc_count": 3
        },
        {
          "key_as_string": "1968-01-01T00:00:00.000Z",
          "key": -63158400000,
          "doc_count": 2
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 1
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
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 25,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "East Monahan",
          "doc_count": 17
        },
        {
          "key": "North Maggio University",
          "doc_count": 11
        },
        {
          "key": "The Hawaii Academy",
          "doc_count": 11
        },
        {
          "key": "Roberts Academy",
          "doc_count": 7
        }
      ]
    },
    "language": {
      "doc_count": 25,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 7
        },
        {
          "key": "german",
          "doc_count": 7
        },
        {
          "key": "italian",
          "doc_count": 6
        },
        {
          "key": "english",
          "doc_count": 5
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 25,
    "links": {
      "self": "http://example.org/letters?end_date=1980-03-09&page=1"
    }
  }
}
~~~

