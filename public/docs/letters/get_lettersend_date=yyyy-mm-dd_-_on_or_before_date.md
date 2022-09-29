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

<pre>GET /letters?end_date=1956-07-23</pre>

#### Query Parameters

<pre>end_date: 1956-07-23</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1956-07-23&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 6
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d2a35b2c0439c1c221fee2e8e976538e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 12855375-64bc-410f-9d1a-6b9c77e71786
X-Runtime: 2.792151
Vary: Origin
Content-Length: 24206</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/8568bee9-e4ad-45db-86da-40f2de0204b0",
      "date": "1950-04-29T00:00:00.000-05:00",
      "label": "29 April 1950 - Rogahn, Charley",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Rogahn, Charley"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f8ccbdbb-964c-4c2c-aa1f-2fc3e2ce225d",
            "display": "<section><p><strong>Raymond Cole, 1902-1986</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/022f6536-8eb6-456d-bde5-ff9335a96aa9",
            "display": "<section><p><strong>Belgium</strong></p>\n<p>Hashtag occupy synth keytar sriracha food truck butcher.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2cb490a9-cafd-48f0-9c7c-b0acbd03b619",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1965-08-21.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/3b4546d5-2057-4370-b37c-c351c246f907",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1944-02-04.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/332adb59-a706-46ad-8ec9-d66af1b8e881",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1939-04-17.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/aaef7a1c-f61b-462e-9d39-13322c27bed9",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Berkley Books</p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Cronut try-hard brunch yuccie venmo pabst tacos fashion axe.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e10d1a3d-a20c-40c1-ba38-48b154dac06c",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> University of Alaska Press</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Publication</strong> Fixie typewriter farm-to-table forage before they sold out scenester.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0f408d4b-0ace-4619-bd62-59b2e65e7ced",
      "date": "1952-03-31T00:00:00.000-05:00",
      "label": "31 March 1952 - Jacobs, Meg",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Jacobs, Meg"
      ],
      "destinations": [
        "Stavro Mueller Beta"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/81d8c015-f859-4bf4-b8d2-00082791f754",
            "display": "<section><p><strong>Radio Broadcast</strong>, Blog <i>chambray squid tattooed paleo microdosing</i> 90s.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Charles Darwin</p>\n<p><strong>Place, Date</strong> Torphyfurt, 19 September 1960</p>\n<p><strong>Director</strong> Effrafax of Wug</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/31823cba-5261-4ac5-91c5-91f8e0b45764",
            "display": "<section><p><strong>Happi-Werld III</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/aecd56e4-541e-4337-b067-88834a1d0cd1",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Carcanet Press</p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Publication</strong> Iphone messenger bag kitsch cronut offal deep v.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1065b041-a9f5-4dfd-b10a-5bee037ec9fb",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Shoemaker &amp; Hoard Publishers</i></p>\n<p><strong>Translator</strong> Hactar</p>\n<p><strong>Publication</strong> Tumblr wolf ethical organic church-key slow-carb pabst sustainable celiac.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/70f7aa7c-ae5f-4d65-9c90-fc3f952eea9f",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Blackwell Publishing</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Publication</strong> Schlitz lumbersexual chillwave flexitarian ramps cleanse waistcoat pbr&amp;b ugh.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a7c81f7b-ac57-484b-8dba-ef8f631f37cf",
            "display": "<section><p><strong>Author</strong> Elvis, <strong>Original Title</strong> <i>Jacob Have I Loved</i></p>\n<p><strong>Translated into</strong> Swedish by Roosta</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/86d13fed-ea58-40e2-a484-1aa7a3b55473",
            "display": "<section><p><strong>Author</strong> JinJenz, <strong>Original Title</strong> <i>I Know Why the Caged Bird Sings</i></p>\n<p><strong>Translated into</strong> German by Trillian</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/5174d4e0-0373-4116-810b-ec6c45eadd47",
            "display": "<section><p><strong>Author</strong> Elvis, <strong>Original Title</strong> <i>The Line of Beauty</i></p>\n<p><strong>Translated into</strong> Norwegian by Dan Streetmentioner</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4d106040-17f8-4fa8-ac28-45d9399eabf6",
      "date": "1952-10-21T00:00:00.000-05:00",
      "label": "21 October 1952 - Cassin, Louis",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Cassin, Louis"
      ],
      "destinations": [
        "Pleiades system"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c3d75073-622b-4f5b-a1d7-e9053646886a",
            "display": "<section><p><strong>Composer</strong> Arthur Dent</p>\n<p><strong>Title</strong> <i>When You Were Mine</i></p>\n<p><strong>Description</strong> Carry vice master street letterpress helvetica flannel portland.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/16cf37cb-027f-44eb-98ab-985adb72c7ae",
            "display": "<section><p><strong>Ezekiel Kulas, 1920-1984</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/279618ed-48d4-4781-9583-41abe026713a",
            "display": "<section><p><strong>Guildford</strong></p>\n<p>Tofu <i>selvage sriracha neutra keffiyeh beard tousled</i> locavore.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/69bf8597-c18a-4ba1-ae55-b2d76468d7ea",
            "display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> <i>To Sail Beyond the Sunset</i></p>\n<p><strong>Translated into</strong> Gaelic by Slartibartfast</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/747e98b8-3bf0-4bda-8e90-d42adc7521ad",
            "display": "<section><p><strong>Author</strong> Effrafax of Wug, <strong>Original Title</strong> <i>Many Waters</i></p>\n<p><strong>Translated into</strong> Russian by Effrafax of Wug</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/062a34bd-dcbc-4f6f-89d9-d0a15754c35b",
      "date": "1955-12-14T00:00:00.000-05:00",
      "label": "14 December 1955 - Hauck, Darrick",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Hauck, Darrick"
      ],
      "destinations": [
        "Frogstar system"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/d7845c69-ecfe-4b19-bb50-1221a73e9d0f",
            "display": "<section><p><strong><i>Krikkit</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7a68a826-d6dc-44fa-867f-e392e208cc0f",
            "display": "<section><p><strong>Title</strong> Beauty and the Beast</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Tanngrisnir, Port Elmer</p>\n<p><strong>Date(s)</strong> 1966-12-07.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8a2d2bdc-a7f2-442a-8143-4bb51585b3fa",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1926-03-06.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/aadb0cbc-12f4-4849-be83-f8b1664fd1e1",
            "display": "<section><p><strong>Author</strong> Eccentrica Gallumbits, <strong>Original Title</strong> <i>Blithe Spirit</i></p>\n<p><strong>Translated into</strong> Rumanian by Ford Prefect</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/5bf143c3-3901-4a27-94d3-ed4c33900b8e",
            "display": "<section><p><strong>Author</strong> JinJenz, <strong>Original Title</strong> <i>The Little Foxes</i></p>\n<p><strong>Translated into</strong> Norwegian by Marvin</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/17419489-3edb-45c0-9aea-0c3beb45df60",
      "date": "1956-05-24T00:00:00.000-04:00",
      "label": "24 May 1956 - Buckridge, Christoper",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Buckridge, Christoper"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ea54df6c-86c9-4bc1-817e-2ec4f6db4ab7",
            "display": "<section><p><strong>Damogran</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/9511eaad-12dc-4e98-b3df-ff7a5b603039",
            "display": "<section><p><strong>France</strong></p>\n<p>Wayfarers microdosing selvage shabby chic.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6d2783e6-a6cf-47af-ad28-57393319d7e5",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Marshall Cavendish</i></p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Publication</strong> Sustainable craft beer chartreuse actually locavore drinking offal ennui.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/77dafae4-bd97-41a3-9832-51cd40c0c126",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Harcourt Trade Publishers</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Publication</strong> Celiac actually wayfarers tote bag.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/df696cda-f9d4-4ef3-b9f7-669602e5e481",
            "display": "<section><p><strong>Title</strong> <i>Paths of Glory</i></p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1964-12-04.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/65e115ee-d343-4de6-b2d7-df4d4f3e23dc",
      "date": "1956-07-23T00:00:00.000-04:00",
      "label": "23 July 1956 - Rolfson, Edison",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Rolfson, Edison"
      ],
      "destinations": [
        "Ysllodins"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/8b6d898a-75d6-49c1-b1c4-538c5595dc0e",
            "display": "<section><p><strong>Theatre</strong>, Carry <i>quinoa art party pbrb</i> portland.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Tricia McMillan</p>\n<p><strong>Place, Date</strong> West Elvisside, 04 May 1962</p>\n<p><strong>Director</strong> Deep Thought</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/a373d921-c61c-44b7-af0e-3cea51d61228",
            "display": "<section><p><strong>Rehearsal</strong>, Cornhole <i>tumblr vice trust fund crucifix</i> synth.</p>\n<p><strong>Attended with</strong> Karl Hungus and Deep Thought</p>\n<p><strong>Place, Date</strong> Grimesfurt, 06 September 1951</p>\n<p><strong>Director</strong> Phouchg</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/feb0551f-de67-48d8-8a9f-0ffd09d2ba6d",
            "display": "<section><p><strong>Radio Broadcast</strong>, Vinegar <i>aesthetic muggle magic you probably havent heard of them everyday organic</i> biodiesel.</p>\n<p><strong>Attended with</strong> The Big Lebowski and The Allitnils</p>\n<p><strong>Place, Date</strong> North Mattie, 06 February 1940</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2b44eb84-c58a-4aa8-8ebf-f79b33320786",
            "display": "<section><p><strong>Author</strong> Zarniwoop, <strong>Original Title</strong> East of Eden</p>\n<p><strong>Translated into</strong> Dutch by Zarniwoop</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5fcdc0f0-c011-4be1-9048-837d3fb0de5a",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> <i>U Got The Look</i></p>\n<p><strong>Description</strong> Pitchfork butcher ugh marfa meditation cardigan chartreuse.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a538a804-ab24-4181-936c-7b3499d49ee5",
            "display": "<section><p><strong>Artist</strong> Rob McKenna</p>\n<p><strong>Title</strong> Let's Work</p>\n<p><strong>Description</strong> Green <i>juice whatever vinyl dreamcatcher</i> cray.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/99953240-4b88-4d5b-b215-a6a39972a955",
            "display": "<section><p><strong>Artist</strong> Humma Kavula</p>\n<p><strong>Title</strong> <i>Little Red Corvette</i></p>\n<p><strong>Description</strong> Brunch <i>vinegar scenester keytar disrupt asymmetrical</i> migas.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2a79f6c3-d74e-4f4b-afd4-e7993af59280",
            "display": "<section><p><strong>Title</strong> <i>Frequent Hearses</i></p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Date</strong> 1953-03-01.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ec8ef25d-bc1f-49d2-b31f-275e3c14ae57",
            "display": "<section><p><strong>Title</strong> After Many a Summer Dies the Swan</p>\n<p><strong>Proposal/Response</strong> Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1963-06-20.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5e84b6af-265b-43f5-a40d-9b6dee8b0626",
            "display": "<section><p><strong>Title</strong> A Time to Kill</p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Date</strong> 1923-03-22.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 6,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 2
        },
        {
          "key": 3,
          "doc_count": 2
        },
        {
          "key": 2,
          "doc_count": 1
        },
        {
          "key": 4,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "doc_count": 6,
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
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 2
        }
      ]
    },
    "repositories": {
      "doc_count": 6,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Borer College",
          "doc_count": 5
        },
        {
          "key": "North South Dakota College",
          "doc_count": 3
        },
        {
          "key": "Northern Weber",
          "doc_count": 2
        },
        {
          "key": "Okuneva Academy",
          "doc_count": 2
        }
      ]
    },
    "language": {
      "doc_count": 6,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 2
        },
        {
          "key": "german",
          "doc_count": 2
        },
        {
          "key": "english",
          "doc_count": 1
        },
        {
          "key": "italian",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 6,
    "links": {
      "self": "http://example.org/letters?end_date=1956-07-23&page=1"
    }
  }
}</pre>
