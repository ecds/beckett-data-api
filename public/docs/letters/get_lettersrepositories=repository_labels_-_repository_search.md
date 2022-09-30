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

<pre>GET /letters?repositories=Northern+Kunde</pre>

#### Query Parameters

<pre>repositories: Northern Kunde</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=Northern+Kunde&gt;; rel=&#39;self&#39;
X-Total-Count: 14
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cd54ab623f453fc2fdab91fbdc3cc60f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 45d632d7-4e3f-4c7b-bc73-47126e01f0e6
X-Runtime: 2.835922
Vary: Origin
Content-Length: 66375</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/daa9b6e4-3f5e-43d9-9db9-03781bd3dd5d",
      "date": "1956-01-08T00:00:00.000-05:00",
      "label": "08 January 1956 - Roob, Moira",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Roob, Moira"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/593400f8-573f-4d79-bb2d-83ad9e9861c4",
            "display": "<section><p><strong>Composer</strong> Genghis Khan</p>\n<p><strong>Title</strong> I Would Die 4 U</p>\n<p><strong>Description</strong> Neutra heirloom muggle magic yr drinking tousled.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/afd051b3-9ff3-4c13-aefe-5a94d0b630bd",
            "display": "<section><p><strong>Brontitall</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/59075055-07da-40ae-aee2-f210e9d548a0",
            "display": "<section><p><strong><i>Argabuthon</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/71cdf48c-8270-41c2-b3b1-9b5966ae6627",
            "display": "<section><p><strong>Kria</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/bf544bf4-906a-48b0-9605-df9179c4dcca",
            "display": "<section><p><strong>Author</strong> Pres. Camellia Von</p>\n<p><strong>Title</strong> Precious Bane</p>\n<p><strong>Publication</strong> Eel Pie Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a890db2b-a63b-4d1b-8544-16467a2856f3",
            "display": "<section><p><strong>Author</strong> Amb. Drema Batz</p>\n<p><strong>Title</strong> The Lathe of Heaven</p>\n<p><strong>Publication</strong> Borgo Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2041f458-0c31-496e-b372-4eccab8877c9",
            "display": "<section><p><strong>Artist</strong> Emily Saunders</p>\n<p><strong>Title</strong> Under The Cherry Moon</p>\n<p><strong>Description</strong> Flexitarian hammock 1 migas.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6f8a9b04-f41a-4563-b906-db97c99c2fad",
            "display": "<section><p><strong>Artist</strong> Zarquon</p>\n<p><strong>Title</strong> <i>I Love U, but I Don't Trust U Anymore</i></p>\n<p><strong>Description</strong> Popup marfa offal mustache pinterest park freegan chia.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/349dad6c-8835-488d-83e2-eecf1b591535",
      "date": "1960-06-01T00:00:00.000-04:00",
      "label": "01 June 1960 - Schimmel, Cleo",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Schimmel, Cleo"
      ],
      "destinations": [
        "Boston"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5c8f3b93-03d1-47ae-a077-c032bbe713cd",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Endorphinmachine</i></p>\n<p><strong>Description</strong> Cleanse <i>raw denim locavore photo booth neutra</i> goth.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/644db27f-005c-4311-947c-909b72ffc593",
            "display": "<section><p><strong>Composer</strong> Charles Darwin</p>\n<p><strong>Title</strong> <i>(There'll Never B) Another Like Me</i></p>\n<p><strong>Description</strong> Fingerstache sartorial yr 8bit.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c84c09d7-9bac-4ec9-b8fa-3ad35de64f60",
            "display": "<section><p><strong>Carley Steuber, 1923-1971</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/037ae294-5be3-475e-adec-8d6953b74c62",
            "display": "<section><p><strong>Modesta Hahn, 1904-1975</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e18d673b-7e7b-4ce1-a2f9-4abce9c80de7",
            "display": "<section><p><strong>Rudy Bahringer, 1902-1995</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/59e7f148-3161-4a5a-a1da-fff6a369170e",
            "display": "<section><p><strong>Asbleg</strong></p>\n<p>Meh meditation skateboard kogi.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c26015b1-7c4a-4047-8519-0d718f2ca456",
            "display": "<section><p><strong><i>Horse and Groom</i></strong></p>\n<p>Lomo craft beer raw denim pug twee tacos.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/124704b9-0e93-4cae-ba1c-911ebcbd058e",
            "display": "<section><p><strong>Author</strong> Dewitt Durgan</p>\n<p><strong>Title</strong> The Violent Bear It Away</p>\n<p><strong>Publication</strong> Marshall Pickering.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/bbc4d11a-b609-4867-949e-b0a6cd34a0a1",
            "display": "<section><p><strong>Author</strong> Susana Fadel</p>\n<p><strong>Title</strong> <i>Unweaving the Rainbow</i></p>\n<p><strong>Publication</strong> Cengage Learning.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3e9f69ac-8126-4857-bc92-cebf17e1e398",
      "date": "1961-09-10T00:00:00.000-04:00",
      "label": "10 September 1961 - Schuppe, Ervin",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Schuppe, Ervin"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b63dde6c-6e64-4f69-9c08-602602e40d2b",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1926-06-09.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/53c47704-450a-459a-a963-be1a31798ce0",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1952-05-11.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/97303054-8a55-4a6f-932b-3a52fa3cb76e",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>University of Nebraska Press</i></p>\n<p><strong>Translator</strong> Trin Tragula</p>\n<p><strong>Publication</strong> Pbr&amp;b semiotics hashtag put a bird on it phlogiston freegan narwhal.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/68529d4e-3ab1-4938-bc65-e9e50a7858ea",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Broadview Press</i></p>\n<p><strong>Translator</strong> Pasta Fasta</p>\n<p><strong>Publication</strong> Chambray shoreditch helvetica trust fund.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/8e0891a1-3422-4c8b-a397-e0620d5a2952",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Pen and Sword Books</i></p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Publication</strong> Bitters vinyl aesthetic lo-fi wolf you probably haven't heard of them vegan direct trade literally.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/192eea11-d661-4a8a-b22c-c21b1e500136",
            "display": "<section><p><strong>Author</strong> Galaxia Woonbeam, <strong>Original Title</strong> <i>O Jerusalem!</i></p>\n<p><strong>Translated into</strong> Finnish by Yooden Vranx</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a7e5370d-df44-4758-b6c3-9c42510f40a1",
            "display": "<section><p><strong>Author</strong> JinJenz, <strong>Original Title</strong> <i>The Golden Bowl</i></p>\n<p><strong>Translated into</strong> Hebrew by Charles Darwin</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3f19a339-c55a-4a55-8ba3-099e67efcca4",
            "display": "<section><p><strong>Author</strong> Agda, <strong>Original Title</strong> For Whom the Bell Tolls</p>\n<p><strong>Translated into</strong> Ukrainian by Questular Rontok</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a5024986-d3e7-4580-8250-14e118c5b698",
            "display": "<section><p><strong>Title</strong> An Instant In The Wind</p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Date</strong> 1923-02-06.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/6e2461a8-4c7b-4a4b-a28c-bd6d69995157",
            "display": "<section><p><strong>Title</strong> <i>The Sun Also Rises</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Date</strong> 1964-11-04.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fa531d63-8423-4fef-8b64-c17c12815e24",
      "date": "1962-07-13T00:00:00.000-04:00",
      "label": "13 July 1962 - Leannon, Maia",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Leannon, Maia"
      ],
      "destinations": [
        "<i>Croydon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/989808f4-0791-4021-8789-a7bc5a4f971c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Truffaut seitan lumbersexual whatever popup.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Gag Halfrunt</p>\n<p><strong>Place, Date</strong> Lake Mauricechester, 20 December 1944</p>\n<p><strong>Director</strong> Grunthos the Flatulent</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/642a9d7d-0537-4b23-b7d9-e963778f001d",
            "display": "<section><p><strong>Theatre</strong>, Trust <i>fund chambray carry</i> tofu.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Questular Rontok</p>\n<p><strong>Place, Date</strong> Port Karri, 31 August 1937</p>\n<p><strong>Director</strong> Pizpot Gargravarr</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f1277a17-2de8-4fe3-b8e2-87c440188cfe",
            "display": "<section><p><strong>Title</strong> <i>Star Wars: Episode I – The Phantom Menace</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Vogon Constructor Fleet, Jessieburgh</p>\n<p><strong>Date(s)</strong> 1967-11-07.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8f96bd6f-a95b-4769-8c10-3cbc27bcc73a",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1929-03-03.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ef6345cd-9ccf-443a-94cb-60667e0168fd",
            "display": "<section><p><strong>Title</strong> <i>In a Dry Season</i></p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Date</strong> 1957-10-11.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7085b7e9-1cd6-4113-96d9-fb6293195879",
      "date": "1963-09-22T00:00:00.000-04:00",
      "label": "22 September 1963 - Nienow, Otis",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Nienow, Otis"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2a07a806-2d1f-47db-bef8-e54c013a7add",
            "display": "<section><p><strong>Composer</strong> Grunthos the Flatulent</p>\n<p><strong>Title</strong> <i>Uptown</i></p>\n<p><strong>Description</strong> Pinterest hashtag bicycle rights craft beer tumblr disrupt sriracha yolo.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e71fd9d2-e77c-4291-8a7a-99a0c2f97c73",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Candlewick Press</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Publication</strong> Truffaut asymmetrical normcore kinfolk.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/fb707365-9049-4eab-abe9-a038a81ef79b",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Leafwood Publishers</i></p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Publication</strong> Plaid quinoa messenger bag hella yolo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c116241b-d2b9-4a22-aa61-5cf25e5bd133",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Horizon Scientific Press</i></p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Publication</strong> Blog pinterest muggle magic yolo cardigan thundercats.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/20f8dd59-4801-41e2-b817-3fbd53d0f9a9",
            "display": "<section><p><strong>Author</strong> Willy Bailey Sr.</p>\n<p><strong>Title</strong> No Country for Old Men</p>\n<p><strong>Publication</strong> Etruscan Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4d9fe910-4231-4946-ae96-485a03b02b5d",
            "display": "<section><p><strong>Author</strong> Jonathon Goyette</p>\n<p><strong>Title</strong> <i>The Violent Bear It Away</i></p>\n<p><strong>Publication</strong> Emerald Group Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fa6ee5b8-8b31-469e-8b04-2bb156c8492b",
            "display": "<section><p><strong>Author</strong> Jere Luettgen</p>\n<p><strong>Title</strong> <i>From Here to Eternity</i></p>\n<p><strong>Publication</strong> Indiana University Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c1b775e0-e439-45ae-9cef-421764516958",
            "display": "<section><p><strong>Artist</strong> Marvin</p>\n<p><strong>Title</strong> Scandalous!</p>\n<p><strong>Description</strong> Direct trade kale chips franzen before they sold out roof synth pug.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2da5e6df-563a-4d81-8129-7b88b4153f39",
            "display": "<section><p><strong>Artist</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>It's Gonna Be A Beautiful Night</i></p>\n<p><strong>Description</strong> Vinegar <i>kickstarter selvage direct</i> trade.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6c17bc00-d994-4b57-8736-7df553f91031",
            "display": "<section><p><strong>Artist</strong> Magrathean sperm whale</p>\n<p><strong>Title</strong> <i>Eye No</i></p>\n<p><strong>Description</strong> Trust <i>fund kitsch kinfolk kogi banh mi paleo</i> sartorial.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6ec6ddeb-dfb4-4548-952b-986c957b0d4e",
      "date": "1963-11-26T00:00:00.000-05:00",
      "label": "26 November 1963 - Lynch, Ira",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Lynch, Ira"
      ],
      "destinations": [
        "<i>Easter Island</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/777c5c22-87ff-4c48-9531-8af6ca511692",
            "display": "<section><p><strong>Composer</strong> Humma Kavula</p>\n<p><strong>Title</strong> She's Always In My Hair</p>\n<p><strong>Description</strong> Pbrb <i>biodiesel thundercats sartorial brooklyn kogi fanny pack</i> readymade.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/87c9951b-57c9-4ccb-8dd0-45c64abe3f8f",
            "display": "<section><p><strong><i>Golgafrincham</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/9c048f12-b998-4602-b0c8-e27afd356829",
            "display": "<section><p><strong>Title</strong> <i>The Thing</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Starship Titanic, Carrollmouth</p>\n<p><strong>Date(s)</strong> 1961-08-15.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/91ebf178-d175-43e1-b6f5-b17577e219c3",
            "display": "<section><p><strong>Title</strong> The Dark Knight</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Krikkit One, Gabrielstad</p>\n<p><strong>Date(s)</strong> 1959-09-25.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7338b069-39d4-456d-b424-fc33136b373d",
            "display": "<section><p><strong>Title</strong> <i>Witness for the Prosecution</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Robenaberg</p>\n<p><strong>Date(s)</strong> 1922-12-20.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/09ff316c-c97b-4f73-87a2-6e29ec62120d",
            "display": "<section><p><strong>Title</strong> This Side of Paradise</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Date</strong> 1944-12-02.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/be4ec3c7-0e7c-48ae-aefd-8ed92f6c8f38",
            "display": "<section><p><strong>Title</strong> A Scanner Darkly</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Marvin</p>\n<p><strong>Date</strong> 1958-10-10.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ba6b7481-b57b-4a16-8369-7193b53dbe6e",
            "display": "<section><p><strong>Title</strong> <i>Mother Night</i></p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Date</strong> 1957-03-07.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e213ba7f-7300-473b-b035-b9573af71a87",
      "date": "1963-12-18T00:00:00.000-05:00",
      "label": "18 December 1963 - Wehner, Anamaria",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Wehner, Anamaria"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/180ff2b1-6b26-46e4-a01d-9f7f1e4775e0",
            "display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fd461dbd-e650-470b-9d47-1dd5113b2cfb",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/fc549137-51b0-48b6-a5db-bb4667699f59",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1947-02-04.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bbd923ae-3900-422b-9a28-65a56f46f6eb",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>University of Michigan Press</i></p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Publication</strong> Quinoa pbr&amp;b single-origin coffee squid.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cce02d7c-48aa-4976-a927-5e5e5e301c18",
            "display": "<section><p><strong>Artist</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> <i>Funk n' Roll</i></p>\n<p><strong>Description</strong> Chia pinterest venmo small batch street pitchfork.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/96b1dadf-9e9f-41d2-b412-bae2dfc57461",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> A Love Bizarre</p>\n<p><strong>Description</strong> Photo <i>booth meditation drinking</i> gentrify.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/17364265-b261-42e8-adc8-058fb126a8e4",
            "display": "<section><p><strong>Artist</strong> Eddie the Computer</p>\n<p><strong>Title</strong> Thunder</p>\n<p><strong>Description</strong> Viral popup pbrb flexitarian.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8bc9e20d-5682-4c7b-8708-e7a43c58663c",
      "date": "1964-04-13T00:00:00.000-05:00",
      "label": "13 April 1964 - O'Conner, Dione",
      "language": "german",
      "volume": 2,
      "recipients": [
        "O'Conner, Dione"
      ],
      "destinations": [
        "<i>Seventh Galaxy of Light and Ingenuity</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6d25ffec-70a1-4e2b-a2a1-864724ee4911",
            "display": "<section><p><strong>Theatre</strong>, Typewriter <i>williamsburg marfa beard twee</i> coldpressed.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Loonquawl and Phouchg</p>\n<p><strong>Place, Date</strong> East Cedrick, 02 October 1937</p>\n<p><strong>Director</strong> Zarquon</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d085aef0-d4a0-4f11-8e33-a29f49d774a0",
            "display": "<section><p><strong>Radio Broadcast</strong>, Leggings scenester messenger bag raw denim mlkshk.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Charles Darwin</p>\n<p><strong>Place, Date</strong> New Tanashire, 09 December 1945</p>\n<p><strong>Director</strong> Pizpot Gargravarr</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6e588c1e-551c-4bf4-9978-1197d92d558c",
            "display": "<section><p><strong>Theatre</strong>, Freegan aesthetic literally chambray trust fund.</p>\n<p><strong>Attended with</strong> Brandt and Grunthos the Flatulent</p>\n<p><strong>Place, Date</strong> South Johnie, 06 February 1930</p>\n<p><strong>Director</strong> Agrajag</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/145e3d36-fa42-49da-afd4-d603c612fbac",
            "display": "<section><p><strong>The Domain of The King</strong></p>\n<p>Chillwave deep v normcore cred.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6ab90fbc-450b-4bc7-acfb-62231dcd36b7",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Forage <i>pourover microdosing tryhard hoodie art party bicycle</i> rights.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f078a9ce-236c-4259-800c-cb8c5458fd8d",
            "display": "<section><p><strong>Author</strong> Lourie King</p>\n<p><strong>Title</strong> Little Hands Clapping</p>\n<p><strong>Publication</strong> Adis International.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e518c031-fcc3-456b-9971-c4808b45087d",
            "display": "<section><p><strong>Author</strong> Audrie Cormier</p>\n<p><strong>Title</strong> <i>A Monstrous Regiment of Women</i></p>\n<p><strong>Publication</strong> Hodder Headline.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f5907926-b4b9-49fb-a26b-716ec51c2fff",
            "display": "<section><p><strong>Author</strong> Preston Rice Sr.</p>\n<p><strong>Title</strong> <i>By Grand Central Station I Sat Down and Wept</i></p>\n<p><strong>Publication</strong> Etruscan Press.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f9ab91a8-657e-47ef-8670-42d6943c39c1",
            "display": "<section><p><strong>Title</strong> Fair Stood the Wind for France</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Date</strong> 1958-07-18.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/91b58ae2-1af3-4f1c-aeda-a6ac11721daf",
            "display": "<section><p><strong>Title</strong> <i>O Jerusalem!</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Date</strong> 1960-10-14.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/0218670b-281f-4f2c-90cf-f000d3aedfd3",
            "display": "<section><p><strong>Title</strong> A Darkling Plain</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1950-09-16.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9820056b-6919-460f-a148-3fc93669ae5d",
      "date": "1967-12-23T00:00:00.000-05:00",
      "label": "23 December 1967 - Beer, Nickie",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Beer, Nickie"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0b993e1f-383e-4411-a79f-70f4de14637c",
            "display": "<section><p><strong>Rehearsal</strong>, Austin <i>synth health readymade ugh seitan</i> disrupt.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Trillian</p>\n<p><strong>Place, Date</strong> Luannachester, 06 February 1969</p>\n<p><strong>Director</strong> Random Dent</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f8f3975a-74bb-40dc-8b8c-e06470717385",
            "display": "<section><p><strong>Theatre</strong>, Chillwave <i>keytar portland knausgaard tumblr seitan typewriter small</i> batch.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Pasta Fasta</p>\n<p><strong>Place, Date</strong> West Oneidafort, 05 February 1940</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/17c2c574-dd74-4724-90ac-f95c905cb3c5",
            "display": "<section><p><strong>Theatre</strong>, Next <i>level street chicharrones disrupt kale chips before they sold out celiac</i> portland.</p>\n<p><strong>Attended with</strong> Brandt and Loonquawl and Phouchg</p>\n<p><strong>Place, Date</strong> Kellyfurt, 13 September 1933</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/20250d55-9914-4400-9836-25d68a4e7588",
            "display": "<section><p><strong>Composer</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> <i>Joy In Repetition</i></p>\n<p><strong>Description</strong> Seitan <i>90s tilde tote bag</i> normcore.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bd28adf2-f07c-49f7-bd6a-ef6478cec57f",
            "display": "<section><p><strong>Composer</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Something in the Water (Does Not Compute)</i></p>\n<p><strong>Description</strong> Intelligentsia <i>pabst dreamcatcher 90s stumptown farmtotable</i> keffiyeh.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/dc074153-cefd-4c1c-9590-684a9eebdc42",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1970-08-17.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/2046cae6-0a50-4b67-a8cc-0d25bbf13c04",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1933-11-22.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/9d59c1a9-4908-466d-9b73-e1b872c9dd35",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> <i>The Cricket on the Hearth</i></p>\n<p><strong>Translated into</strong> Braille by Charles Darwin</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e2ab5a5d-a19d-4b05-b766-a5d22e3620fa",
            "display": "<section><p><strong>Author</strong> Pasta Fasta, <strong>Original Title</strong> Butter In a Lordly Dish</p>\n<p><strong>Translated into</strong> Russian by Phouchg</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/011588c9-ab49-4026-a88a-1cc80a9faf90",
      "date": "1972-10-11T00:00:00.000-04:00",
      "label": "11 October 1972 - Boyer, Brittny",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Boyer, Brittny"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/17345739-e7e5-4c70-a598-f022da09e799",
            "display": "<section><p><strong>Theatre</strong>, 1 <i>vinyl typewriter art party</i> meggings.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Phouchg</p>\n<p><strong>Place, Date</strong> Raufort, 02 November 1935</p>\n<p><strong>Director</strong> Prostetnic Vogon Kwaltz</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b71f00ee-b3c1-4c3f-9f78-04be3835496b",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> Alphabet St.</p>\n<p><strong>Description</strong> Cliche sustainable migas everyday flexitarian irony pinterest blog.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/89d6f71b-6f79-4711-833a-a9dfff771c14",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> <i>Breakfast Can Wait</i></p>\n<p><strong>Description</strong> Ramps hammock sartorial normcore selvage organic 1.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f4bf0f35-43df-4db1-a598-129f1187e537",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>Pop Life</i></p>\n<p><strong>Description</strong> Dreamcatcher <i>hammock flannel umami</i> lumbersexual.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a49730fe-bcf8-404f-a498-073172b4a12e",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1967-04-28.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/be7daa77-8b22-4af1-8422-3feb58dc1c4b",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1959-05-22.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/65dcb6cb-bae6-4ccf-9e1d-1dcdde7b93b6",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1943-12-04.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e7065271-9f1a-4847-8e3e-bf5a2fc1f469",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Virgin Publishing</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Publication</strong> Xoxo salvia lomo brooklyn narwhal master carry microdosing thundercats.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8407fa22-6576-4e18-b812-b7c2a3d029e1",
      "date": "1979-11-09T00:00:00.000-05:00",
      "label": "09 November 1979 - Spencer, Kiley",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Spencer, Kiley"
      ],
      "destinations": [
        "Lord's Cricket Ground"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e49a3d87-98d5-4704-8f61-2ca20559e49c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Singleorigin coffee listicle muggle magic occupy pabst street before they sold out.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Pasta Fasta</p>\n<p><strong>Place, Date</strong> West Nolan, 23 August 1971</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/80bacbb4-8a20-4528-8ec7-ebb5aeb22996",
            "display": "<section><p><strong>Composer</strong> Agrajag</p>\n<p><strong>Title</strong> <i>I Wanna Be Your Lover</i></p>\n<p><strong>Description</strong> Listicle <i>tilde kogi yuccie lofi waistcoat blue bottle selfies direct</i> trade.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/53512361-ab80-4ebb-837e-36bff89939e7",
            "display": "<section><p><strong>Composer</strong> Yooden Vranx</p>\n<p><strong>Title</strong> <i>Let's Go Crazy</i></p>\n<p><strong>Description</strong> Neutra <i>you probably havent heard of them five dollar toast yuccie sartorial slowcarb lomo ugh</i> gastropub.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2363da64-30d7-4317-88dd-457b45212812",
            "display": "<section><p><strong>Krikkit</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/43c4f5c9-3e07-49cf-b01f-adf57a6bf561",
            "display": "<section><p><strong><i>Burphon XII</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/4800dce2-baee-464d-8a8e-7a0d838fabb1",
            "display": "<section><p><strong>Damogran</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0f522b63-16d5-4dde-bd8f-83ffd9c0c579",
            "display": "<section><p><strong>Author</strong> Marvin, <strong>Original Title</strong> <i>That Good Night</i></p>\n<p><strong>Translated into</strong> Italian by Zaphod Beeblebrox</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7f7ea03c-ecb4-4eb4-85b4-421b2aea43d4",
            "display": "<section><p><strong>Author</strong> Roosta, <strong>Original Title</strong> <i>To a God Unknown</i></p>\n<p><strong>Translated into</strong> Greek by Zarquon</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f416bf5f-f490-4198-9f4e-c4ca56323a7f",
            "display": "<section><p><strong>Author</strong> Colin the Security Robot, <strong>Original Title</strong> The Little Foxes</p>\n<p><strong>Translated into</strong> Spanisn by Hotblack Desiato</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0862c17b-d27e-4d7e-a248-cc9059e4ad8d",
      "date": "1982-07-23T00:00:00.000-04:00",
      "label": "23 July 1982 - Mayer, William",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Mayer, William"
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3846919c-8de3-4eec-9844-8ee0ca27243d",
            "display": "<section><p><strong><i>Rupert</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/954d5d02-45b6-413c-a295-30ddfedcd902",
            "display": "<section><p><strong>Evildrome Boozarama</strong></p>\n<p>Synth <i>small batch blog</i> quinoa.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/bb20e01b-a4f5-402c-a35e-f06b96984120",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>Ramps <i>photo booth sustainable etsy cray marfa whatever blue bottle</i> carry.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fd4793ea-c72f-47f1-896b-0ce4a6f0f25e",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Lumbersexual <i>readymade messenger bag lofi pinterest intelligentsia gastropub</i> 1.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/64d9b84a-4fe9-4b0e-a87a-dbf8f86ed4c3",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1944-07-08.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/8808c2b6-2189-435e-aa64-c5ef027f4f10",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1957-10-25.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/afc7a0ac-a81e-4d0f-80fe-65c536f59b93",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1942-04-19.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/91b0dcaa-d24e-4ae0-a598-227b07116747",
            "display": "<section><p><strong>Author</strong> Trinidad Marks Sr.</p>\n<p><strong>Title</strong> <i>This Lime Tree Bower</i></p>\n<p><strong>Publication</strong> Bloodaxe Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d0171cc4-903a-4969-98ba-8c17fc01e952",
            "display": "<section><p><strong>Author</strong> Camille Ondricka</p>\n<p><strong>Title</strong> Ah, Wilderness!</p>\n<p><strong>Publication</strong> Central European University Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fecdfda5-4c68-4431-9fe7-5f93a4afd18e",
            "display": "<section><p><strong>Author</strong> Lorrie Anderson</p>\n<p><strong>Title</strong> <i>East of Eden</i></p>\n<p><strong>Publication</strong> Shuter &amp; Shooter Publishers.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5d2b0fc7-f338-4aaf-bb7b-d8c60472a369",
      "date": "1982-08-06T00:00:00.000-04:00",
      "label": "06 August 1982 - Towne, Chelsea",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Towne, Chelsea"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5748c6e3-6a84-499e-8136-b3e1bacd6598",
            "display": "<section><p><strong><i>Frogstar World A</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/7ef470d2-c967-4773-a542-4569247f1a82",
            "display": "<section><p><strong>Bistro Illegal</strong></p>\n<p>Banjo <i>wayfarers celiac goth freegan mlkshk bushwick</i> keytar.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c3154b51-2f34-4f18-8276-ed298f180f18",
            "display": "<section><p><strong><i>Western Spiral Arm</i></strong></p>\n<p>Health letterpress venmo bicycle rights meditation.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/0bdbab6e-7067-43e8-9000-3cc4e146135b",
            "display": "<section><p><strong><i>Space</i></strong></p>\n<p>Vice glutenfree leggings chartreuse.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/74467e3c-afce-48b0-81b2-edc67524ba3d",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1959-02-16.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9f9a1bac-3292-4d2d-8b46-685e665dff80",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1971-06-19.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/840bb499-3464-4798-a5ea-3de164845fe0",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1972-05-01.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4477dc51-8cbc-4aba-a0c4-3bc0f1b0ced7",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> When the Green Woods Laugh</p>\n<p><strong>Translated into</strong> Hebrew by Random Dent</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/57a031ee-a331-4dd0-bc22-1da1428bd846",
            "display": "<section><p><strong>Author</strong> Wonko the Sane, <strong>Original Title</strong> <i>Butter In a Lordly Dish</i></p>\n<p><strong>Translated into</strong> Gaelic by Frankie and Benjy</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0383e0b7-a073-465a-80f7-75540aa6da80",
      "date": "1987-08-08T00:00:00.000-04:00",
      "label": "08 August 1987 - Rutherford, Dagny",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Rutherford, Dagny"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/d1c6822d-1807-4eed-8854-6c6802056c70",
            "display": "<section><p><strong>Theatre</strong>, Intelligentsia <i>pitchfork cliche 1 five dollar toast literally franzen cleanse</i> crucifix.</p>\n<p><strong>Attended with</strong> Donny and Eccentrica Gallumbits</p>\n<p><strong>Place, Date</strong> Nedramouth, 10 April 1940</p>\n<p><strong>Director</strong> Zaphod Beeblebrox</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/adc8c2bf-2486-4b9f-ae92-a569a3ff0a5d",
            "display": "<section><p><strong>Reading</strong>, Vice <i>squid bicycle rights</i> blog.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Frankie and Benjy</p>\n<p><strong>Place, Date</strong> Soview, 19 June 1960</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1e8b99c5-e76b-461a-bc27-a2d169fa4b5d",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Kogan Page</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Publication</strong> Kinfolk tacos pop-up kitsch cornhole chicharrones ugh hoodie thundercats.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/da73e4a1-1934-4f63-b6c0-1777eaebe5d4",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> FabJob</p>\n<p><strong>Translator</strong> Mr. Prosser</p>\n<p><strong>Publication</strong> Locavore typewriter direct trade swag portland meditation pbr&amp;b roof taxidermy.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/94c0e4c6-e723-4343-bf96-0e918ba7334c",
            "display": "<section><p><strong>Author</strong> Aron Williamson</p>\n<p><strong>Title</strong> The House of Mirth</p>\n<p><strong>Publication</strong> Atlas Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8322f887-5de9-46f0-9c70-9cbd038e1844",
            "display": "<section><p><strong>Artist</strong> JinJenz</p>\n<p><strong>Title</strong> And God Created Woman</p>\n<p><strong>Description</strong> Poutine <i>vice leggings sriracha mixtape keytar kickstarter</i> lofi.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8b82f1fb-fb4b-4f7c-8858-b8f0fc1ab9eb",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Little Red Corvette</i></p>\n<p><strong>Description</strong> Normcore <i>3 wolf moon plaid heirloom shoreditch park bicycle rights helvetica</i> yuccie.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
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
          "key": 4,
          "doc_count": 4
        },
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 3,
          "doc_count": 3
        },
        {
          "key": 1,
          "doc_count": 2
        },
        {
          "key": 2,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 14,
      "buckets": [
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
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1968-01-01T00:00:00.000Z",
          "key": -63158400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 0
        },
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1972-01-01T00:00:00.000Z",
          "key": 63072000000,
          "doc_count": 1
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
          "doc_count": 2
        },
        {
          "key_as_string": "1983-01-01T00:00:00.000Z",
          "key": 410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1984-01-01T00:00:00.000Z",
          "key": 441763200000,
          "doc_count": 0
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
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Kunde",
          "doc_count": 14
        },
        {
          "key": "Western Effertz",
          "doc_count": 14
        },
        {
          "key": "South Streich",
          "doc_count": 12
        },
        {
          "key": "The Pennsylvania Institute",
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
          "key": "german",
          "doc_count": 5
        },
        {
          "key": "italian",
          "doc_count": 5
        },
        {
          "key": "english",
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
      "self": "http://example.org/letters?page=1&repositories=Northern+Kunde"
    }
  }
}
~~~

