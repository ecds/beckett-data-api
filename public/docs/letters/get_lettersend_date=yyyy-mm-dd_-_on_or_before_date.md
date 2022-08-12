# Letters API

## GET /letters?end_date=:YYYY-MM-DD - On or Before Date

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels | false | null
| senders | Comma seperated list of sender labels | false | null
| repositories | Comma seperated list of repository labels | false | null
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?end_date=1959-05-04</pre>

#### Query Parameters

<pre>end_date: 1959-05-04</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1959-05-04&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 7
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c7c175108f4d7598a925e219c7503079&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 625c7dbc-4c57-42b3-85bf-1caa6f2de87e
X-Runtime: 2.559880
Vary: Origin
Content-Length: 12331</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/56d47971-b536-483b-9179-308133c584a2",
      "date": "1957-01-29T00:00:00.000-05:00",
      "label": "29 January 1957 - Harris, Patrice",
      "recipients": [
        "Harris, Patrice"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/664f14a5-62da-4f63-80e5-5aeabd44c5d8",
            "display": "Colin the Security Robot, <i>Thieves In The Temple</i> [Milk]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e4dd0c10-8faf-4258-8950-9b0c456538d4",
            "display": "Elvis, <i>Under The Cherry Moon</i> [Eureka]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4a5e0684-b829-4bfb-96b6-4565a644949f",
            "display": "<b>Dangrabad Beta</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c201fdc3-780b-4565-a2d9-11d0af687715",
            "display": "<b>Oglaroon</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1001fb41-7e74-4852-8c96-2ed12fa437ec",
            "display": "<b><i>Gemini</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6c5a52cd-f27e-4519-9582-5bd644532f44",
            "display": "<b>Apollo</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/fa1e9e55-c764-411a-856b-3c95732ba6bf",
            "display": "<b>Orion</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0a00c966-b2af-4268-88ba-d7eb5ac95e22",
            "display": "<i>Harcourt Trade Publishers</i>, Trin Tragula Direct trade irony pug +1 tousled."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c457042e-3d0a-4f6e-94ad-eedcea34da17",
      "date": "1957-04-14T00:00:00.000-05:00",
      "label": "14 April 1957 - Von, Dale",
      "recipients": [
        "Von, Dale"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c28280f5-56bd-4174-9993-25b44d8a3998",
            "display": "<strong>theatre</strong> <i>The Godfather: Part II</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cd0dcaa2-5bd2-4bde-bd31-fbb07dee8eeb",
            "display": "<strong>rehearsal</strong> Indiana Jones and the Last Crusade"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/045d66ba-e1c5-4d37-8696-c81d4577506a",
            "display": "<b>Heaney, Evalyn 1927-1976</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/398a6d3f-6456-47a6-acf2-d235b4a5f21b",
            "display": "<b>Predovic, Winfred 1902-1980</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6e8607d6-b081-43a2-9a51-4c2a4a7cfbc5",
            "display": "<i>Toy Story</i>, dir. Jesus Quintana, Heart of Gold, Dongport, 1958-08-30"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ca54f070-be76-4a2f-8f35-bb5d7cfd7b20",
            "display": "The Princess Bride, dir. Walter Sobchak, Tanngrisnir, Zacherytown, 1955-11-19"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0bb91f25-5b9a-405a-b973-8191ca80f43d",
            "display": "<i>Kessinger Publishing</i>, Oolon Colluphid Paleo occupy mlkshk humblebrag."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1bfec547-0af2-4721-9e5b-9c23fba2fd2a",
      "date": "1958-06-20T00:00:00.000-04:00",
      "label": "20 June 1958 - Considine, Herschel",
      "recipients": [
        "Considine, Herschel"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a8dc42d6-c08e-4ded-99e1-c63cec4d2946",
            "display": "Random Dent, <i>Another Lonely Christmas</i> [Miss Fame]"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/cffee6b3-bd10-4d9b-83e5-7ba4f8ba4e31",
            "display": "Newnes, Gail Andrews Raw denim umami marfa messenger bag polaroid freegan xoxo."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/158ed09e-cdf6-42d6-baa0-898ba9b789e4",
            "display": "Jess Dach Sr., <i>No Longer at Ease</i>, Golden Cockerel Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/33af8f4a-5abf-4d2b-a77b-46e0de5113b5",
            "display": "Armando Mayer, <i>The House of Mirth</i>, Voyager Books"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4117b004-84b5-4404-9cf3-6fa4afc3a147",
            "display": "Arthur Philip Deodat, D.M.S.R, Pbr&b yuccie craft beer single-origin coffee retro forage celiac health."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a8cf3f97-d808-4bdc-ba14-b951063ee050",
            "display": "Barry Manilow, <i>Crimson and Clover</i>, Austin <i>bitters flexitarian vegan</i> selfies."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bd213297-37eb-4e0c-ab94-5f4b27b8df65",
            "display": "Dan Streetmentioner, The Most Beautiful Girl In The World, Hashtag vice forage hella pabst yuccie distillery."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/101095a7-02b7-4624-a827-0c08c6f6de14",
      "date": "1958-09-03T00:00:00.000-04:00",
      "label": "03 September 1958 - Gottlieb, Benito",
      "recipients": [
        "Gottlieb, Benito"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/36f0c965-f4e9-43e3-801d-4106c25b98c4",
            "display": "<b>O'Hara, Aleisha 1903-1982</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/870cbf5d-cc97-41a4-9aca-6cca04f6f6f4",
            "display": "<b>Schneider, Asley 1909-1995</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c773d2b1-2ad9-46c8-b181-d33bd259a73b",
            "display": "<b>Bartell, Blanca 1904-1978</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/41a90d2f-7c33-415a-a4cc-f375592993ac",
            "display": "<b>Ziggie's Den of Iniquity</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/148547c7-dc2f-4452-a90e-623fc5bd982e",
            "display": "Hotblack Desiato, The Widening Gyre, Translated into finnish by Fenchurch"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/1e3852e6-0111-4fff-912d-613080dfc733",
            "display": "Deep Thought, <i>That Hideous Strength</i>, Translated into gaelic by Gag Halfrunt"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/2c3e1835-c490-4503-b961-54d919a93d28",
            "display": "Pizpot Gargravarr, Butter In a Lordly Dish, Translated into spanish by Prak"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/03ddd7f8-ad48-4191-9d4c-b882d2e5c5a3",
            "display": "Rob McKenna, <i>Sometimes It Snows In April</i>, Retro squid butcher selvage wes anderson mlkshk cliche kitsch chia."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/eed307e8-522d-4425-8202-aaf9bbd1e237",
            "display": "Loonquawl and Phouchg, When You Were Mine, Everyday <i>lumbersexual freegan trust fund deep</i> v."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/75ed6bd1-f44f-4719-94b9-164dba4a1ce4",
      "date": "1959-02-01T00:00:00.000-05:00",
      "label": "01 February 1959 - White, Elsie",
      "recipients": [
        "White, Elsie"
      ],
      "destinations": [
        "Pleiades system"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a108d332-032b-4c17-b9d8-fa54eed42521",
            "display": "Marvin, When Doves Cry [Vanessa Vanjie Mateo]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b39e5767-69bd-4011-b391-dd058a8c7ae7",
            "display": "Questular Rontok, Delirious [Jessica Wild]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2a60ff9e-ccba-4ef6-ac18-cc88d160e7ee",
            "display": "<b>Weissnat, Rogelio 1910-1980</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/28c9116f-56f9-4f80-a077-4f3c2083565a",
            "display": "Eddie the Computer, <i>Nectar in a Sieve</i>, Translated into italian by Magrathean sperm whale"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/659738b1-4a88-474b-8ef7-197b8b350abf",
            "display": "Dan Streetmentioner, The Skull Beneath the Skin, Translated into russian by Zarquon"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a02d043c-a033-474b-b1e8-4ade74e40faf",
            "display": "Questular Rontok, <i>Now Sleeps the Crimson Petal</i>, Translated into russian by Reg Nullify"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2f02133c-868f-4714-acd5-fed1299e7f0b",
            "display": "Loonquawl, How Come You Don't Call Me Anymore?, Sriracha 3 wolf moon forage yr post-ironic chicharrones tattooed helvetica."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd5b1027-938a-4cb7-ab55-b64bbba0bef6",
      "date": "1959-02-18T00:00:00.000-05:00",
      "label": "18 February 1959 - Rippin, Jackie",
      "recipients": [
        "Rippin, Jackie"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9512ba0b-d2da-4f4b-b8ba-66bd2d7e3cae",
            "display": "Charles Darwin, <i>Delirious</i> [Kenya Michaels]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c571db35-3906-426b-bec6-736c2022e808",
            "display": "JinJenz, Mountains [Pearl]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c3e6ef7a-4930-4ec4-9c4a-0fdf97b1394b",
            "display": "<b>Jaskolski, Carmelina 1914-1977</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/8ce21561-02c5-46d9-95e9-f12748f17eab",
            "display": "<b>Norway</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a10fb23d-da9e-4c8d-90f7-aa82594f6f46",
            "display": "<b><i>Lamuella</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/cf10362a-b463-49bb-9187-073d41a18885",
            "display": "<i>Harper & Brothers</i>, Charles Darwin Cronut listicle vinyl etsy loko tousled."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3f8b212a-54b1-47ae-af0c-12b0b2763f23",
      "date": "1959-05-04T00:00:00.000-04:00",
      "label": "04 May 1959 - Kutch, Sparkle",
      "recipients": [
        "Kutch, Sparkle"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0201b308-fb3e-46be-aa08-cb94da0c8799",
            "display": "<b><i>Evildrome Boozarama</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/32c76515-8d80-4cd7-97df-523f179b76b2",
            "display": "<b>Café Lou</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5db7dd4d-4869-450d-9877-e6e36544ddc8",
            "display": "<b><i>Zarss</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d36c3af6-8506-4d12-9574-ca4a39b02632",
            "display": "Papadakis Publisher, Frankie and Benjy Street celiac jean shorts pabst roof forage."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6e007888-1341-4de1-b180-d36b18d0a651",
            "display": "Questular Rontok, <i>Brandy of the Damned</i>, Translated into rumanian by Reg Nullify"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d07edfbf-0625-4f9e-bd27-e6c9c91ebdb2",
            "display": "Lintilla, Great Work of Time, Translated into italian by Zaphod Beeblebrox"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2f2d6711-d257-450d-bf21-2b619f35f44e",
            "display": "Eccentrica Gallumbits, Baltimore, Plaid <i>tacos messenger bag waistcoat locavore pork</i> belly."
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 7,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
        }
      ]
    },
    "repositories": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Western Missouri Academy",
          "doc_count": 4
        },
        {
          "key": "Stamm University",
          "doc_count": 3
        },
        {
          "key": "North Breitenberg Academy",
          "doc_count": 2
        },
        {
          "key": "Schultz Institute",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 2
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
    "total_count": 7,
    "links": {
      "self": "http://example.org/letters?end_date=1959-05-04&page=1"
    }
  }
}</pre>
