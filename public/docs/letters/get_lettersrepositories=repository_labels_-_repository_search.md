# Letters API

## GET /letters?repositories=:repository_labels - Repository Search

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

<pre>GET /letters?repositories=Larson+Academy</pre>

#### Query Parameters

<pre>repositories: Larson Academy</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=Larson+Academy&gt;; rel=&#39;self&#39;
X-Total-Count: 14
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a0510d9517e3469ab8b26816ed5d7e81&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1f71548b-b682-4fd1-9e24-6e7ddfb39205
X-Runtime: 2.806950
Vary: Origin
Content-Length: 61542</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/b2a6ee4d-7f7b-4312-a19b-43b4a28199b8",
      "date": "1952-09-04T00:00:00.000-04:00",
      "label": "04 September 1952 - Zulauf, Carlos",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Zulauf, Carlos"
      ],
      "destinations": [
        "<i>Arthur Dent's house</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/87598615-7e78-4f34-b0b0-bc4745624e6e",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/2c684ba9-26f0-45a5-8806-bc2eba164cc4",
            "display": "<section><p><strong>Nano</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/07ce97d3-8b57-4844-a0e0-126906c3e5ee",
            "display": "<section><p><strong>Rupert</strong></p>\n<p>Ethical <i>gentrify tote bag semiotics</i> hella.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1341b724-bd01-472e-a2fa-05dd7b9d1ffd",
            "display": "<section><p><strong>Frogstar system</strong></p>\n<p>Gentrify <i>vegan phlogiston shoreditch</i> meditation.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ae6e4d9d-19cc-4338-a9d7-3aa8a3471629",
            "display": "<section><p><strong>Sector ZZ9 Plural Z Alpha</strong></p>\n<p>Shoreditch squid leggings biodiesel deep v pickled venmo.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/07d90dc6-085d-48c5-b8cf-f73d137d8f91",
            "display": "<section><p><strong>Title</strong> Pulp Fiction</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Tanngrisnir, Lake Daysishire</p>\n<p><strong>Date(s)</strong> 1941-09-04.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/70b7ca8e-a4d3-4460-a09d-2e778dc73320",
            "display": "<section><p><strong>Title</strong> Dunkirk</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Bistromath, Salbury</p>\n<p><strong>Date(s)</strong> 1946-04-26.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/fc1f7c07-9354-4fef-b866-903cee48ddfe",
            "display": "<section><p><strong>Author</strong> Candra Effertz</p>\n<p><strong>Title</strong> Françoise Sagan</p>\n<p><strong>Publication</strong> Berg Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9a60a91f-849e-4f60-aece-5a610559a82b",
            "display": "<section><p><strong>Author</strong> Msgr. Delbert Price</p>\n<p><strong>Title</strong> <i>Specimen Days</i></p>\n<p><strong>Publication</strong> City Lights Publishers.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/399c46d7-743e-4995-8794-1bc80b6561fe",
      "date": "1955-05-03T00:00:00.000-04:00",
      "label": "03 May 1955 - White, Lavada",
      "language": "german",
      "volume": 4,
      "recipients": [
        "White, Lavada"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/05636e7f-f6bf-414a-8c8c-04f18d38a6b2",
            "display": "<section><p><strong>Theatre</strong>, Portland <i>street microdosing chia</i> lofi.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Fenchurch</p>\n<p><strong>Place, Date</strong> North Theoberg, 10 May 1934</p>\n<p><strong>Director</strong> Eddie the Computer</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/790a331c-cab8-4e58-b52a-7d2d435a817f",
            "display": "<section><p><strong>Islington</strong></p>\n<p>Williamsburg chartreuse postironic fashion axe.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/41fa028b-aecb-46ab-b688-0cb41d94229c",
            "display": "<section><p><strong>Denmark</strong></p>\n<p>Brunch freegan 8bit fanny pack meditation phlogiston literally.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e865d80b-8702-4648-bdd6-d9e9577bacdb",
            "display": "<section><p><strong>Title</strong> <i>The Grapes of Wrath</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, West Coreenstad</p>\n<p><strong>Date(s)</strong> 1925-12-06.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/69b24980-e1f8-4a88-a6ef-69e188cb65c9",
            "display": "<section><p><strong>Title</strong> <i>How to Train Your Dragon</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> RW6, Bradlyburgh</p>\n<p><strong>Date(s)</strong> 1925-12-14.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/6acea872-a918-4594-ab5c-57c803abf473",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1930-05-06.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/924c15dd-4f34-4781-a88f-f4d38a269c72",
      "date": "1955-07-11T00:00:00.000-04:00",
      "label": "11 July 1955 - Kilback, Cammy",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Kilback, Cammy"
      ],
      "destinations": [
        "Fenchurch Street railway station"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2134fe48-31c1-4765-96e2-0bba578e13d9",
            "display": "<section><p><strong>Marna Daniel, 1902-1989</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2fa40519-0763-40a6-9b59-5baf3bccc7a6",
            "display": "<section><p><strong>Kasandra Hansen, 1905-1978</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/541275c5-3bf2-4261-990b-092811c75c25",
            "display": "<section><p><strong><i>London</i></strong></p>\n<p>Venmo portland mixtape kickstarter phlogiston irony.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/52fff650-f480-403c-bb29-2a987bbbd1b3",
            "display": "<section><p><strong>France</strong></p>\n<p>Chambray jean shorts pork belly literally distillery listicle.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c2e3f437-cd66-47d5-a8b2-68494d5fa123",
            "display": "<section><p><strong><i>Barnard's Star</i></strong></p>\n<p>Art party freegan literally skateboard.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2d7d3383-a96f-40ad-86e0-fa2d3107c076",
            "display": "<section><p><strong>Author</strong> Jay Cruickshank</p>\n<p><strong>Title</strong> Ah, Wilderness!</p>\n<p><strong>Publication</strong> Gaspereau Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e0a3b686-46c9-4a90-a868-190be50dabeb",
            "display": "<section><p><strong>Author</strong> Rosemary Hyatt</p>\n<p><strong>Title</strong> The Moon by Night</p>\n<p><strong>Publication</strong> Cloverdale Corporation.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7847df51-41fd-44f4-8c4a-458497f6d071",
            "display": "<section><p><strong>Author</strong> Tasha Swaniawski DVM</p>\n<p><strong>Title</strong> East of Eden</p>\n<p><strong>Publication</strong> Black Dog Publishing.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7e4cdf76-23ac-4b9b-854a-31ed2ae3ef14",
            "display": "<section><p><strong>Artist</strong> Rob McKenna</p>\n<p><strong>Title</strong> <i>Paisley Park</i></p>\n<p><strong>Description</strong> Popup glutenfree blog neutra.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fb698c0e-470d-4389-a2c5-fe77c3d4e867",
            "display": "<section><p><strong>Artist</strong> Arthur Dent</p>\n<p><strong>Title</strong> <i>Le Grind</i></p>\n<p><strong>Description</strong> Green <i>juice whatever cronut ramps godard umami mustache bicycle rights</i> pabst.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4e10a396-4aee-41e6-825a-c9c705baa639",
      "date": "1968-07-28T00:00:00.000-04:00",
      "label": "28 July 1968 - Boehm, Shaquana",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Boehm, Shaquana"
      ],
      "destinations": [
        "<i>Frogstar system</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8a6680b9-d4bb-48e9-a666-1e84c92ba40f",
            "display": "<section><p><strong>Composer</strong> Hactar</p>\n<p><strong>Title</strong> Still Waiting</p>\n<p><strong>Description</strong> Bicycle rights art party pourover yolo farmtotable everyday.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e27fc5ae-0256-4d89-a271-f5890ad4a6dd",
            "display": "<section><p><strong>Bartledan</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/60028844-b73c-41c4-9f34-4be5955e002a",
            "display": "<section><p><strong>Andy Fritsch, 1908-1998</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4cac0f7d-18e8-4797-9f8c-fc7c388898d4",
            "display": "<section><p><strong>Phebe Shields, 1914-1977</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/43090597-46fb-467e-b9b5-55e2b8423efc",
            "display": "<section><p><strong>Title</strong> Recalled to Life</p>\n<p><strong>Proposal/Response</strong> It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Date</strong> 1933-11-20.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a516fe28-b54c-4e79-9af7-dcec1a8701b8",
            "display": "<section><p><strong>Title</strong> Shall not Perish</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Date</strong> 1936-02-21.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d42dc7b7-8bdc-4f0c-a2f7-e9872ee1a3f3",
      "date": "1968-09-09T00:00:00.000-04:00",
      "label": "09 September 1968 - Jaskolski, Hanh",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Jaskolski, Hanh"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/af6e132c-e24f-43e1-b415-0a0460498542",
            "display": "<section><p><strong>Radio Broadcast</strong>, Mumblecore <i>meh selvage ennui hashtag synth pickled sriracha</i> popup.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Zarquon</p>\n<p><strong>Place, Date</strong> East Matthew, 22 April 1969</p>\n<p><strong>Director</strong> Vroomfondel</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/0e4fa9b4-4dd5-48ec-aa3c-8a8bb846ed11",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> Breakfast Can Wait</p>\n<p><strong>Description</strong> Slowcarb <i>tilde helvetica synth gentrify</i> blog.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/014ba2d3-1aca-44d9-8dd0-0300018f8918",
            "display": "<section><p><strong>Anastacia Padberg, 1920-1998</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9556766a-f24d-4c78-bad7-e4403d451929",
            "display": "<section><p><strong>Jordon Rau, 1909-1988</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cfdde047-903d-41d0-af3f-b602ee309967",
            "display": "<section><p><strong>Belia O'Connell, 1915-1995</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e3a76147-06c8-477e-9fa9-be03d89aab56",
            "display": "<section><p><strong>Author</strong> Rob McKenna, <strong>Original Title</strong> The Sun Also Rises</p>\n<p><strong>Translated into</strong> Spanish by Charles Darwin</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ba4dae80-59dd-437b-8a85-c5430d9bd4ea",
      "date": "1970-11-07T00:00:00.000-05:00",
      "label": "07 November 1970 - Labadie, Loree",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Labadie, Loree"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f3710e25-9c3a-46a1-b98b-c851cfe9a452",
            "display": "<section><p><strong>Title</strong> The Silence of the Lambs</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Heart of Gold, Berrymouth</p>\n<p><strong>Date(s)</strong> 1927-07-22.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f577380b-94b1-4fda-9c9f-638ecd663b8a",
            "display": "<section><p><strong>Title</strong> Before Sunrise</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Tanngrisnir, West Enrique</p>\n<p><strong>Date(s)</strong> 1928-12-20.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/5e0ff284-71bb-4ed8-8ffa-4a8ebc630c36",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>Carcanet Press</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Publication</strong> Typewriter truffaut bitters seitan venmo bespoke.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5142eca8-b6c6-4e81-8606-1b639f9adc90",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Papadakis Publisher</p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Publication</strong> Chia etsy lo-fi chartreuse williamsburg.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3351e142-466a-408c-8e67-fbb9dcc78f33",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Adis International</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Publication</strong> Next level stumptown five dollar toast austin cronut.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d42e9ca6-0fec-4808-98b1-4762586a8a09",
            "display": "<section><p><strong>Author</strong> Alton Funk</p>\n<p><strong>Title</strong> Carrion Comfort</p>\n<p><strong>Publication</strong> Mascot Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/007e6883-fda6-445d-ac5c-e8d39195f693",
            "display": "<section><p><strong>Author</strong> Annis Hilpert</p>\n<p><strong>Title</strong> A Catskill Eagle</p>\n<p><strong>Publication</strong> Blackie and Son Limited.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8d0d0567-be68-4d40-8960-0f1de8d8c0c0",
            "display": "<section><p><strong>Author</strong> Lincoln Wilkinson</p>\n<p><strong>Title</strong> <i>To a God Unknown</i></p>\n<p><strong>Publication</strong> Verso Books.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a2cf2a70-7aa0-4561-b7b5-2cf3f13c6fdf",
            "display": "<section><p><strong>Author</strong> Gail Andrews, <strong>Original Title</strong> <i>Recalled to Life</i></p>\n<p><strong>Translated into</strong> Italian by Frankie and Benjy</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6106383d-691a-4cc2-bc09-4cb7065e6941",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> <i>Moab Is My Washpot</i></p>\n<p><strong>Translated into</strong> Serbo Croatian by Deep Thought</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/600ceb6d-efae-4613-8728-c4aff900a22f",
            "display": "<section><p><strong>Author</strong> Lintilla, <strong>Original Title</strong> Fear and Trembling</p>\n<p><strong>Translated into</strong> Spanisn by Lunkwill and Fook</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/79e22810-d283-46cd-b397-e5463eac0e8d",
      "date": "1971-09-13T00:00:00.000-04:00",
      "label": "13 September 1971 - Streich, Floy",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Streich, Floy"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8e0c2929-385e-4887-a023-ea3306096c84",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e25bc427-0c00-4ebc-814c-4fb0e92ef172",
            "display": "<section><p><strong>Author</strong> Debby Stamm</p>\n<p><strong>Title</strong> <i>Have His Carcase</i></p>\n<p><strong>Publication</strong> Jaico Publishing House.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7a13af85-2494-44da-9154-206a8beae778",
            "display": "<section><p><strong>Author</strong> Jon Cummings</p>\n<p><strong>Title</strong> Nine Coaches Waiting</p>\n<p><strong>Publication</strong> Bowes &amp; Bowes.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9058ca9d-173a-45cd-8543-4717379574f7",
            "display": "<section><p><strong>Artist</strong> Arthur Philip Deodat</p>\n<p><strong>Title</strong> International Lover</p>\n<p><strong>Description</strong> Fanny <i>pack park neutra vinyl craft beer chicharrones</i> 1.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9fa8ecd2-60fd-4070-9654-a27056bf1071",
            "display": "<section><p><strong>Artist</strong> JinJenz</p>\n<p><strong>Title</strong> Gold</p>\n<p><strong>Description</strong> Keffiyeh polaroid pickled stumptown.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/6b2de6e6-672b-4bb5-a08b-5c9769637f18",
            "display": "<section><p><strong>Title</strong> <i>His Dark Materials</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Date</strong> 1967-09-28.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ae3f8df5-b0b7-42fd-a980-53e9d8a9dcd8",
            "display": "<section><p><strong>Title</strong> <i>I Will Fear No Evil</i></p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Date</strong> 1929-10-19.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/30b2ff73-7724-447e-902a-24a115c7b50a",
      "date": "1973-08-10T00:00:00.000-04:00",
      "label": "10 August 1973 - Kozey, Harold",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Kozey, Harold"
      ],
      "destinations": [
        "<i>Denmark</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/15379b54-525a-4fc4-93bf-ff31b797d1c1",
            "display": "<section><p><strong>Theatre</strong>, Salvia street bespoke five dollar toast mlkshk loko pinterest photo booth kickstarter.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Oolon Colluphid</p>\n<p><strong>Place, Date</strong> Port Erlene, 19 August 1943</p>\n<p><strong>Director</strong> Roosta</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2d5feddc-f3dc-4b9c-9e26-df11770a0cf0",
            "display": "<section><p><strong>Radio Broadcast</strong>, Farmtotable <i>brunch plaid 90s vice crucifix</i> normcore.</p>\n<p><strong>Attended with</strong> Karl Hungus and Max Quordlepleen</p>\n<p><strong>Place, Date</strong> Treutelshire, 06 October 1969</p>\n<p><strong>Director</strong> Reg Nullify</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/931fa2e0-8db5-44b2-a0d9-f40d0b0ec1b8",
            "display": "<section><p><strong>Rehearsal</strong>, Diy <i>pug normcore pinterest pbrb</i> vhs.</p>\n<p><strong>Attended with</strong> Karl Hungus and Vroomfondel</p>\n<p><strong>Place, Date</strong> Tynishafurt, 23 January 1934</p>\n<p><strong>Director</strong> Deep Thought</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/90d90b99-9a5b-46ee-89d1-ea67a5c8eb30",
            "display": "<section><p><strong><i>Space</i></strong></p>\n<p>Disrupt selfies chambray before they sold out etsy wayfarers.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/38bb313e-b5d2-4cd7-951a-c553cc490242",
            "display": "<section><p><strong><i>Xaxis</i></strong></p>\n<p>Next level aesthetic pourover trust fund selfies cardigan celiac tousled.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/214db3f0-c4ae-4b05-9dbe-4690aaf4d021",
            "display": "<section><p><strong>Evildrome Boozarama</strong></p>\n<p>Kinfolk <i>sriracha brooklyn lomo semiotics</i> heirloom.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d4b1c44e-5e57-49c1-b25f-85792f411858",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1969-02-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a4d9e687-7af5-448b-96ec-bd1d427dcb20",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1964-08-27.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f56facb7-1196-419d-8f65-959042fe02a6",
            "display": "<section><p><strong>Title</strong> <i>An Evil Cradling</i></p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1936-11-20.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/45842a3b-ec52-413c-84d3-8d5cefb69bca",
      "date": "1979-02-02T00:00:00.000-05:00",
      "label": "02 February 1979 - Prohaska, Hwa",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Prohaska, Hwa"
      ],
      "destinations": [
        "<i>Ibiza</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/da6c42f2-570c-4829-9894-4f62871741f3",
            "display": "<section><p><strong>Composer</strong> Pasta Fasta</p>\n<p><strong>Title</strong> <i>She's Always In My Hair</i></p>\n<p><strong>Description</strong> Sriracha <i>cornhole selvage banh mi shabby chic whatever shoreditch kombucha</i> aesthetic.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6f844fed-e3e4-4731-98c9-ff5cae948354",
            "display": "<section><p><strong>Leisha Lueilwitz, 1904-1975</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f5742af5-aef3-4263-a279-c530ef9cf47c",
            "display": "<section><p><strong>Joya Strosin, 1904-1995</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a212c5fb-4862-415b-97a6-703ae3771a84",
            "display": "<section><p><strong>Milliways</strong></p>\n<p>Salvia kogi selvage chartreuse flannel seitan deep v flexitarian.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e9446449-15a8-4d15-9369-59231f93002d",
            "display": "<section><p><strong><i>Boston</i></strong></p>\n<p>Craft beer 1 vice pabst distillery goth wolf polaroid cray.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/181458cb-0656-4293-b89e-0b68bb3c1c21",
            "display": "<section><p><strong>Islington</strong></p>\n<p>Pourover keffiyeh before they sold out ugh retro fanny pack pug.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/08e7a2fc-0317-4788-bc66-6c33409521a2",
            "display": "<section><p><strong>Title</strong> Lilies of the Field</p>\n<p><strong>Proposal/Response</strong> ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Date</strong> 1972-08-06.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/366c0a52-26e8-4026-8a82-a7860e9c19db",
            "display": "<section><p><strong>Title</strong> <i>The Glory and the Dream</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Hactar</p>\n<p><strong>Date</strong> 1943-02-03.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ef0df132-9ce3-4f44-94a2-3de2b599ffea",
      "date": "1980-03-03T00:00:00.000-05:00",
      "label": "03 March 1980 - Gulgowski, Laverna",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Gulgowski, Laverna"
      ],
      "destinations": [
        "<i>Denmark</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e51648fd-c405-440f-bd6c-38ef7c2a3d02",
            "display": "<section><p><strong>Carlos Quitzon, 1911-1981</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/9e71796a-c9f5-4816-a28a-18f69f578346",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>Roof <i>90s selfies aesthetic biodiesel butcher neutra vinyl singleorigin</i> coffee.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/00763d55-5bc2-4a23-a8f1-40d40f4bdad7",
            "display": "<section><p><strong><i>Evildrome Boozarama</i></strong></p>\n<p>Semiotics yolo loko locavore kombucha butcher popup.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/443114cf-52a6-4fc1-a9ab-642579c21d60",
            "display": "<section><p><strong><i>Highgate Cemetery</i></strong></p>\n<p>Deep v letterpress wolf sriracha banjo cred.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/631d6684-a3f3-4bce-8792-2b068965f343",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1953-06-26.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/e81048f3-92e5-4236-aa46-7380f331481e",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1950-04-09.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a1dad533-4d3e-4851-b98b-85d85f8567bb",
            "display": "<section><p><strong>Artist</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> <i>Bambi</i></p>\n<p><strong>Description</strong> Actually <i>forage heirloom shoreditch pickled</i> flannel.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7cffbe55-649f-4358-9267-6d63908db199",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> Automatic</p>\n<p><strong>Description</strong> Tousled keytar lomo venmo keffiyeh vice.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dded3aa8-a875-4a17-8938-5e879a22e57a",
      "date": "1980-06-12T00:00:00.000-04:00",
      "label": "12 June 1980 - Carter, Wilbur",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Carter, Wilbur"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/7175e3ff-4f2d-4f66-917f-cc8374c5d2ea",
            "display": "<section><p><strong>Preliumtarn</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6a48ef99-adfa-4f53-aafc-2ba2c22edcc9",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6e677766-f241-4856-8c90-95968174e51b",
            "display": "<section><p><strong>Title</strong> Vertigo</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Bistromath, East Cythia</p>\n<p><strong>Date(s)</strong> 1938-02-11.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2fd0ed57-12b4-419f-be86-58bc026bacf8",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Apress</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> Pop-up mixtape pabst cardigan.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ebf5c9d4-847f-4133-b952-3b983687ebf1",
            "display": "<section><p><strong>Title</strong> <i>Brandy of the Damned</i></p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Date</strong> 1964-04-02.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ad976b5c-3e03-4ccf-bedb-01a1773c3dee",
            "display": "<section><p><strong>Title</strong> Consider the Lilies</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Date</strong> 1960-07-25.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ba7e50f0-30ce-4c18-961e-3b80e105607e",
            "display": "<section><p><strong>Title</strong> Tender Is the Night</p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Date</strong> 1941-07-29.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/309e3f8a-c496-418c-baf7-491878408ce7",
      "date": "1981-05-20T00:00:00.000-04:00",
      "label": "20 May 1981 - Wyman, Man",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Wyman, Man"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a326b602-8a64-4729-8bcc-42595d8a06d1",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Adis International</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Publication</strong> Celiac stumptown cray lomo banjo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4db85b40-8b36-4063-a95f-9acea529d422",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Carnegie Mellon University Press</p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Publication</strong> Squid narwhal small batch schlitz.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/96442d86-1d2a-425d-867b-92f76c3dbf4e",
            "display": "<section><p><strong>Author</strong> Beverly Braun</p>\n<p><strong>Title</strong> <i>Of Mice and Men</i></p>\n<p><strong>Publication</strong> No Starch Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/59353eeb-4ab8-46e8-a69c-555c03396e7a",
            "display": "<section><p><strong>Author</strong> Susanna Daniel V</p>\n<p><strong>Title</strong> Dying of the Light</p>\n<p><strong>Publication</strong> Pen and Sword Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/47f04feb-6780-4f1d-b1b7-3260207e55c4",
            "display": "<section><p><strong>Author</strong> Nguyet Ortiz</p>\n<p><strong>Title</strong> Great Work of Time</p>\n<p><strong>Publication</strong> George H. Doran Company.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8ea9179a-cac4-4863-bb31-77a2c56747ac",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> <i>New Position</i></p>\n<p><strong>Description</strong> Stumptown gentrify deep v microdosing blog singleorigin coffee.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d440aa3c-4aac-44d9-ac5e-551be45835fa",
            "display": "<section><p><strong>Artist</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> (There'll Never B) Another Like Me</p>\n<p><strong>Description</strong> Slowcarb <i>typewriter artisan photo</i> booth.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e598aaf7-63d6-4ea8-aac6-b44d399637a5",
            "display": "<section><p><strong>Title</strong> <i>Pale Kings and Princes</i></p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Date</strong> 1944-11-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/fd46b8ea-734b-4b0a-9ef8-bee323d0be26",
            "display": "<section><p><strong>Title</strong> <i>Brandy of the Damned</i></p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Date</strong> 1956-08-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a5a998a3-5db3-4c86-9286-90d480a62d5d",
            "display": "<section><p><strong>Title</strong> The Monkey's Raincoat</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Agda</p>\n<p><strong>Date</strong> 1943-08-02.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/11f19060-a8d8-4a0c-a2cc-f809755b8929",
      "date": "1981-10-17T00:00:00.000-04:00",
      "label": "17 October 1981 - Homenick, Roberto",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Homenick, Roberto"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7a2e60a1-6671-403f-a70e-e1da1f62151c",
            "display": "<section><p><strong>Composer</strong> Marvin</p>\n<p><strong>Title</strong> Funk n' Roll</p>\n<p><strong>Description</strong> Offal butcher cliche xoxo.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9264278f-1728-43da-90a3-44066f1e504a",
            "display": "<section><p><strong>Author</strong> Leanna Thompson</p>\n<p><strong>Title</strong> <i>Cabbages and Kings</i></p>\n<p><strong>Publication</strong> Brill Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c1838115-445d-409b-a35f-153244eb0148",
            "display": "<section><p><strong>Author</strong> Rep. Velia Kub</p>\n<p><strong>Title</strong> <i>Tirra Lirra by the River</i></p>\n<p><strong>Publication</strong> Jarrolds Publishing.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/97386a46-8e4f-4485-b7bd-f5143652deaa",
            "display": "<section><p><strong>Author</strong> Questular Rontok, <strong>Original Title</strong> Such, Such Were the Joys</p>\n<p><strong>Translated into</strong> Irish Gaelic by Barry Manilow</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/fe78ce08-120b-4031-8537-25fe51a5fc32",
            "display": "<section><p><strong>Author</strong> Hactar, <strong>Original Title</strong> From Here to Eternity</p>\n<p><strong>Translated into</strong> Spanish by Loonquawl</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2e415071-5056-4146-b64d-907d7b0be309",
            "display": "<section><p><strong>Artist</strong> Arthur Dent</p>\n<p><strong>Title</strong> <i>Joy In Repetition</i></p>\n<p><strong>Description</strong> Trust fund artisan tryhard bicycle rights tote bag.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1457b0b6-ff41-474e-b1a9-d1f7e6d7445b",
            "display": "<section><p><strong>Artist</strong> Deep Thought</p>\n<p><strong>Title</strong> Screwdriver</p>\n<p><strong>Description</strong> Seitan <i>microdosing flexitarian postironic ethical</i> yr.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cb5be44b-47fc-441c-a4ff-42935cf77e2d",
      "date": "1982-01-11T00:00:00.000-05:00",
      "label": "11 January 1982 - Bruen, Ramon",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Bruen, Ramon"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c4bc5ad3-f80c-40a6-828a-e7bb1e2b1f68",
            "display": "<section><p><strong>Composer</strong> Bowerick Wowbagger</p>\n<p><strong>Title</strong> <i>And God Created Woman</i></p>\n<p><strong>Description</strong> Chicharrones disrupt tryhard poutine pabst.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/6094c680-7eef-45c8-96df-58610ec256aa",
            "display": "<section><p><strong>Composer</strong> Yooden Vranx</p>\n<p><strong>Title</strong> Can't Stop This Feeling I Got</p>\n<p><strong>Description</strong> Marfa echo mlkshk trust fund gastropub.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/df4c3a55-5e36-4f75-9301-168991c266ad",
            "display": "<section><p><strong>Composer</strong> Marvin</p>\n<p><strong>Title</strong> <i>Funk n' Roll</i></p>\n<p><strong>Description</strong> Whatever <i>xoxo marfa fingerstache cliche mixtape viral</i> neutra.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/9d39980b-a44e-4535-aa28-f30c4299d67a",
            "display": "<section><p><strong>Title</strong> <i>Cidade de Deus</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Starship Titanic, East Trishborough</p>\n<p><strong>Date(s)</strong> 1948-12-25.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8ba735f4-2000-4370-9b51-f6d87f6246d2",
            "display": "<section><p><strong>Title</strong> V for Vendetta</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Don’t Panic</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Tanngrisnir, Harveystad</p>\n<p><strong>Date(s)</strong> 1936-07-06.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d2d314f8-63f0-47a6-b94b-3b11d9455035",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1962-12-31.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cb6c7672-fcdc-4938-9200-0cc4be9026db",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1965-04-22.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/84a3f810-2833-47b0-b0ac-fa2e627082d4",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1941-12-16.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d2bd8cff-d8d8-4b2c-97ab-974c21d2c82d",
            "display": "<section><p><strong>Title</strong> Time of our Darkness</p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Date</strong> 1959-05-07.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 14,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 4,
          "doc_count": 4
        },
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 3,
          "doc_count": 2
        },
        {
          "key": 2,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 14,
      "buckets": [
        {
          "key_as_string": "1952-01-01T00:00:00.000Z",
          "key": -568080000000,
          "doc_count": 1
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
          "doc_count": 2
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 0
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
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 0
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
          "doc_count": 2
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 0
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
          "doc_count": 1
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
          "doc_count": 0
        },
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1980-01-01T00:00:00.000Z",
          "key": 315532800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Larson Academy",
          "doc_count": 14
        },
        {
          "key": "Southern Roob Institute",
          "doc_count": 14
        },
        {
          "key": "Mosciski University",
          "doc_count": 13
        },
        {
          "key": "North Bins",
          "doc_count": 12
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 14,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 3
        },
        {
          "key": "french",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 14,
    "links": {
      "self": "http://example.org/letters?page=1&repositories=Larson+Academy"
    }
  }
}</pre>
