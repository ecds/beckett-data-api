# Letters API

## GET /letters?per_page=:results_per_page&amp;page=:offset - Paginated results

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

<pre>GET /letters?page=2&amp;per_page=10</pre>

#### Query Parameters

<pre>page: 2
per_page: 10</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=2&amp;per_page=10&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;first&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;next&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;prev&#39;
X-Total-Count: 30
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a73584239a983d789a0134514a35c9e5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 96197842-3660-4c14-889a-e096326c144a
X-Runtime: 2.507961
Vary: Origin
Content-Length: 24289</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/0e8d6501-ffdd-476f-b3ad-7453ccece8d4",
      "date": "1960-11-26T00:00:00.000-05:00",
      "label": "26 November 1960 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0a4d937d-bf6e-41c8-8efb-7ec47854f51d",
            "display": "<span>mumblecore, Stalker, Port Youngfurt, 20 October 1943.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5c3696b2-0111-426e-903d-6bf573955500",
            "display": "<span>pabst, <i>Shutter Island</i>, Purdymouth, 28 April 1935.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3d538fcb-aac5-4b17-8ddb-cd149787b6a3",
            "display": "<span><i>Majikthise</i> (1919-1973). Humblebrag hoodie hammock migas wayfarers.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4ec4f86c-e60f-4e6c-a98a-64ca94ca33e0",
            "display": "<span><i>Oglethorpe</i> (1903-1991). Heirloom health distillery cleanse +1 try-hard carry.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/618dff78-08a1-458d-a4f3-b42ce8547da7",
            "display": "<span>Seventh Galaxy of Light and Ingenuity.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b7e90a74-bb4b-4375-a0a6-114faf77d208",
            "display": "<span><i>Islington</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c7b99e51-ebbb-4995-bac7-ed56ffb4247b",
            "display": "<span>Horse and Groom.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d6ec91fd-704b-46e9-acaf-a4491dab3af2",
            "display": "<span>Zarquon, <i>The Heart Is a Lonely Hunter</i>, Translated into Jaglan Beta by Eddie the Computer.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f057d70c-a51c-4882-b239-cb6c1c9fb57c",
      "date": "1960-12-04T00:00:00.000-05:00",
      "label": "04 December 1960 - Steppenwolf",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5596131e-6f03-404b-85a7-1345d3a08496",
            "display": "<span>Paula Nancy Millstone Jennings, Guitar [Laganja Estranja].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5f22fbf8-aa0f-4c34-a265-8889977bf4cf",
            "display": "<span>Prak, Let's Work [Naomi Smalls].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3387115a-6f91-4a8c-b619-e96a7eb352df",
            "display": "<span><i>Fallia</i>, Sasha Velour.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e3a73274-505e-4c80-8c72-979d3db42e6b",
            "display": "<span>Traal, Thorgy Thor.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/70247992-664e-44e9-b204-7593e163a327",
            "display": "<span>Donny, Revolio 'Gearhead' Clockberg, Jr., Ford Prefect Normcore cold-pressed blue bottle meggings vhs.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/717502d3-bd4f-434a-bbc5-6b40bcdbc8e2",
            "display": "<span>Jesus Quintana, Bunny Lebowski, Hotblack Desiato's bodyguard Retro fingerstache sustainable mumblecore pbr&b.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b4766c1a-da95-4464-b139-42041d4195a1",
            "display": "<span>Jackie Treehorn, Officer Meow Meow Fuzzyface, Elvis Banh mi offal meh fixie photo booth 8-bit plaid.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/20702fbb-cea9-42a1-80b6-28d6d984f2c3",
            "display": "<span>Questular Rontok, <i>Tiger! Tiger!</i>, Translated into Burphon XII by Phouchg.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/27f8b5ea-7ed5-495d-be56-7de0e9805162",
            "display": "<span>Lunkwill and Fook, <i>The Sun Also Rises</i>, Translated into Sqornshellous Zeta by Gail Andrews.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ae950e83-90e9-4fca-a84d-d9b6d9c3806a",
            "display": "<span>Zarniwoop, An Instant In The Wind, Translated into Kria by Random Dent.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/97374f92-01aa-4223-b0b9-2d2bc68fdd18",
      "date": "1961-02-04T00:00:00.000-05:00",
      "label": "04 February 1961 - <i>Bunny Lebowski</i>",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1371bcb6-b596-4ef1-827c-277a7f3a6449",
            "display": "<span>chicharrones, All About Eve, Koeppside, 14 April 1954.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ce2a5d64-550e-4601-92be-16a6b85b9913",
            "display": "<span>Sector XXXZ5QZX.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a70206f7-e72b-4ddc-b41b-185052fac58e",
            "display": "<span>Jackie Treehorn, William T. Riker, Arthur Dent Farm-to-table tattooed post-ironic meggings church-key.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3f7cddb6-c82e-479c-a7d2-cc40a6a14c7f",
            "display": "<span>Griselda Hilpert, <i>Taming a Sea Horse</i>, Target Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/42769867-fd17-44d7-ae38-720d61eb21db",
            "display": "<span>Julietta Windler, Lilies of the Field, Viking Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fefb54c2-d320-43d4-a5dd-875b8c3d0b02",
            "display": "<span>Armand Deckow, <i>Taming a Sea Horse</i>, Barrie & Jenkins.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fbec634c-7d58-4f2c-a5d0-db0b25bb6a5b",
      "date": "1961-03-21T00:00:00.000-05:00",
      "label": "21 March 1961 - <i>The Albino</i>",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f71734db-b184-4ea4-95b9-3d6aea8a635c",
            "display": "<span>bitters, <i>Mad Max: Fury Road</i>, Port Otis, 19 June 1963.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/33865028-b0e5-44a5-b4d7-cb71144edee5",
            "display": "<span>Horsehead Nebula.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/74f88fcf-a350-4608-972f-a51de841299c",
            "display": "<span>Ysllodins.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8df62e73-6f90-4a5c-90c4-3eebfeacc6fb",
            "display": "<span>Laronda Weber, <i>Dying of the Light</i>, D. Appleton & Company.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e875a22b-b861-4ae4-8b68-542e82aa0cd9",
            "display": "<span>Neville Reichel, Death Be Not Proud, D. Appleton & Company.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f7521561-135b-41da-a568-fbd9b0569338",
            "display": "<span>Michel VonRueden, <i>The Golden Apples of the Sun</i>, Focal Press.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/70925f28-12d6-49bf-927d-118a0bba6e7d",
            "display": "<span>Prostetnic Vogon Jeltz, Crimson and Clover, Food truck cronut roof yr semiotics humblebrag.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8d8d7482-1213-4171-a450-f78fa6a652c0",
            "display": "<span>Random Dent, It's Gonna Be A Beautiful Night, Brunch viral occupy tattooed pabst readymade wolf synth iphone.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d5dcdadb-ca75-483c-ae43-4c0076346c52",
            "display": "<span>Prak, <i>Computer Blue</i>, Authentic bicycle rights synth sustainable meggings sriracha bitters.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/63dacf05-c6b7-43e7-9db1-2a4b60b542a3",
      "date": "1961-04-28T00:00:00.000-05:00",
      "label": "28 April 1961 - <i>The Albino</i>",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "Fenchurch Street railway station"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0d4aba22-5292-47fc-ab68-0d11b4253aa4",
            "display": "<span>keffiyeh, <i>Die Hard</i>, Jolieside, 04 January 1950.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/af598f41-bf03-455a-88b8-27296cb1b642",
            "display": "<span>selvage, <i>Batman Begins</i>, East Nelsonborough, 09 September 1948.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cb5aefa2-51ae-4083-8136-b6cbd276c207",
            "display": "<span>typewriter, Casino, Port Mica, 22 July 1926.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/17515cf4-df39-4000-80b6-61309ded0207",
            "display": "<span><i>Sesefras Magna</i>, Jiggly Caliente.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cd5f4c5d-f04d-4bed-9039-dae2e2736b8b",
            "display": "<span><i>Flargathon</i>, Tyra Sanchez.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/52937cd9-b930-41d9-ac07-f3d1ccaee57e",
            "display": "<span>The Big Lebowski, <i>Majikthise</i>, Arthur Dent Cray butcher hella diy chartreuse iphone waistcoat phlogiston.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/742fb89e-6512-46f7-b026-bba70c38c3d1",
            "display": "<span>Walter Sobchak, Bunny Lebowski, Prostetnic Vogon Jeltz Venmo etsy sartorial humblebrag plaid pinterest tousled biodiesel lumbersexual.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/eba86cad-841e-4f21-acb6-ac32a6e09b09",
            "display": "<span>Donny, <i>Bunny Lebowski</i>, Loonquawl Polaroid austin carry dreamcatcher direct trade biodiesel put a bird on it.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4cb7519d-c929-47d9-800e-bde62fc1b622",
            "display": "<span>Prostetnic Vogon Jeltz, <i>Cindy C.</i>, Meggings <i>butcher salvia hashtag put a bird on it cleanse</i> paleo.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/104c0423-09de-47ee-adc9-2e77fc6127b3",
      "date": "1961-07-27T00:00:00.000-04:00",
      "label": "27 July 1961 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Stavromula Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b73cdf4b-c2a6-472f-95f0-e1111a7e3083",
            "display": "<span>Rob McKenna, Eye No [Trinity Taylor].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4cf7d193-c8ad-4402-81b6-b38b595f6823",
            "display": "<span><i>Star Wars: Episode V - The Empire Strikes Back</i>, dir. Donny, Heart of Gold, Luanaberg, 1944-10-06.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/86360a8c-9c80-4e04-8ca7-8c67317e8a3d",
            "display": "<span>Psycho, dir. Karl Hungus, Tanngrisnir, Kiethstad, 1956-06-15.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/fa135d46-1f41-43e3-ba84-241703c3ec42",
            "display": "<span>Twelve Monkeys, dir. Karl Hungus, Bistromath, East Andres, 1929-07-19.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0e906054-5555-4851-b678-3542abaa63ce",
            "display": "<span>Dave Schmidt MD, Where Angels Fear to Tread, DAW Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f592be0a-a7f0-4614-8f2c-e5c701b18442",
            "display": "<span>Mr. Marcelo Lebsack, <i>A Handful of Dust</i>, Unfinished Monument Press.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/236e0368-77c3-43cd-9d05-19985cbe71c9",
            "display": "<span>Majikthise, O Jerusalem!, Translated into Fallia by Oolon Colluphid.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/5bd11d68-aa15-4139-9139-914d842ce9e8",
            "display": "<span>Lunkwill and Fook, The Wings of the Dove, Translated into Viltvodle VI by Loonquawl.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/af05f65c-21c5-4d78-a0e5-8d2595d6bd6f",
            "display": "<span>Oolon Colluphid, <i>Those Barren Leaves, Thrones, Dominations</i>, Translated into Sqornshellous Zeta by Humma Kavula.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/34073019-83f2-4665-992c-18b176283386",
      "date": "1961-11-24T00:00:00.000-05:00",
      "label": "24 November 1961 - <i>Revolio 'Gearhead' Clockberg, Jr.</i>",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e68e90bf-725c-46e6-9023-3701b695f5db",
            "display": "<span><i>Sesefras Magna</i>, Shuga Cain.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/06688fdb-6800-458b-9dca-a4d87d0c048e",
            "display": "<span><i>Asbleg</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/362b84d8-d4bd-42fd-a565-740f1ef336c3",
            "display": "<span>Horsehead Nebula.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4b659ce0-7747-4c34-95a0-c8aa1bbd4e4e",
            "display": "<span>France.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/07ff113b-09ef-4a06-9cd8-44fec6f195a7",
            "display": "<span>Brandt, <i>Majikthise</i>, Mr. Prosser Put a bird on it kitsch chia ethical raw denim.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1fda3306-4448-4544-8f21-25e86005ec49",
            "display": "<span>Jesus Quintana, <i>Mario</i>, Wonko the Sane Chambray banjo squid ramps brooklyn chartreuse tumblr pitchfork.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5174b0b5-d27a-4d1b-9e88-37db58229cb3",
            "display": "<span>Bunny Lebowski, Majikthise, Oolon Colluphid Street sartorial godard slow-carb xoxo tofu forage chicharrones iphone.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4c16b7d6-3db6-4cc5-8f3d-05757fa14c90",
            "display": "<span>Codi Boyle, The Moon by Night, Andrews McMeel Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/be2a6a13-fc14-477f-b3ac-3866b0844d14",
            "display": "<span>Miss Blake Hills, Mother Night, DAW Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fb8f6f05-ddd3-4401-8f21-f2646b89d330",
      "date": "1962-04-14T00:00:00.000-05:00",
      "label": "14 April 1962 - William T. Riker",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "Café Lou"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ad6b7633-26a6-463f-afc4-c5106ef55666",
            "display": "<span>waistcoat, <i>Paris, Texas</i>, Lake Nathanael, 12 September 1970.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c85d1ba0-885e-44a4-9296-474866d251df",
            "display": "<span>fingerstache, <i>Jaws</i>, Blandabury, 19 March 1943.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/453103c5-d941-48b4-a1a1-9951bf27ffed",
            "display": "<span><i>Discovery</i> (1936-03-23).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7bb69b92-6c8c-4065-a92b-62247724d6c0",
            "display": "<span><i>Enterprise</i> (1935-04-21).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/80144d05-a79b-4407-bc2c-58a443ea959e",
            "display": "<span>Jesus Quintana, Mario, Emily Saunders Letterpress stumptown shabby chic celiac deep v synth flexitarian freegan actually.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1c51f6f0-e327-46c0-9660-2a0882a1006a",
            "display": "<span>Phouchg, Kiss, Chambray godard selvage brunch echo muggle magic fanny pack kitsch aesthetic.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bf5669f5-c96d-45bd-9cce-5abd1f378e64",
            "display": "<span>Pizpot Gargravarr, My Name Is Prince, Lumbersexual <i>quinoa artisan diy single-origin coffee</i> cred.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7503f2b7-208e-423e-9381-c598e107566f",
      "date": "1962-07-26T00:00:00.000-04:00",
      "label": "26 July 1962 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/62eaa0fa-a593-4c11-8027-97e448817174",
            "display": "<span>Oglethorpe (1912-1988). Whatever before they sold out marfa chillwave master tacos.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d6e7ba1b-6f84-4aa5-9875-581f5cabd114",
            "display": "<span>Scott Malkinson (1917-1993). Goth normcore diy kale chips church-key gastropub hoodie beard.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/093f9fdc-1907-446d-846f-660c758c2d3d",
            "display": "<span>North by Northwest, dir. Jackie Treehorn, Vogon Constructor Fleet, Daughertyland, 1927-02-24.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/30190a44-fa24-4cb8-a740-146d9f57ca62",
            "display": "<span><i>Sunrise: A Song of Two Humans</i>, dir. Karl Hungus, Billion Year Bunker, Jeannineton, 1939-09-25.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a7cdeb23-1fd2-4c4e-9b50-6a5c88f63e8c",
            "display": "<span><i>Star Wars: Episode VI - Return of the Jedi</i>, dir. Jackie Treehorn, Heart of Gold, Port Feliciaport, 1958-12-19.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/02fec6cb-abcc-47e1-8f7c-e9577befa938",
            "display": "<span>Maude Lebowski, <i>Majikthise</i>, Trillian Chillwave tacos schlitz readymade asymmetrical locavore salvia.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/03368aa5-c9be-4f2b-bd80-7aedd9363486",
            "display": "<span>Karl Hungus, Oglethorpe, Lintilla Kitsch paleo green juice art party locavore small batch photo booth intelligentsia.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d52f9736-a1e6-4ef4-a76f-beafffb9cb16",
            "display": "<span>Jesus Quintana, <i>The Albino</i>, Prak Mixtape 90's chartreuse kogi pinterest hashtag chillwave.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1cc744d1-1c64-421b-87fd-def5c5f1fa47",
            "display": "<span>Lawerence Kemmer, <i>Paths of Glory</i>, Leaf Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/963b311d-b8fa-4f14-a604-e0ea4c97dea0",
      "date": "1962-08-11T00:00:00.000-04:00",
      "label": "11 August 1962 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/06f95423-5680-4797-a903-c07383462079",
            "display": "<span><i>Oglethorpe</i> (1902-1980). Portland ugh master stumptown asymmetrical yr pug schlitz cred.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/30811737-2206-4832-a1f2-0f950dff8177",
            "display": "<span>Oglethorpe (1923-1985). Freegan <i>chicharrones helvetica kinfolk venmo</i> polaroid.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/bc7b4502-4d1a-4713-bfe8-862b70f3b85c",
            "display": "<span><i>William T. Riker</i> (1910-1991). Cliche cleanse muggle magic flexitarian artisan wolf.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1843d708-0fb0-41a1-a8f0-9e707f3f763d",
            "display": "<span><i>Jaws</i>, dir. Bunny Lebowski, Billion Year Bunker, New Linh, 1930-07-19.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/54954825-1728-49dd-9f98-c897677963ca",
            "display": "<span><i>Star Wars: Episode VII - The Force Awakens</i>, dir. Bunny Lebowski, Bistromath, New Alidafort, 1930-07-14.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/379a1da8-0579-45e8-aca0-a05f9bb06e84",
            "display": "<span>Dannielle Mann, <i>For a Breath I Tarry</i>, Paulist Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/3b582c8c-581f-4e98-bd7d-c8287116274e",
            "display": "<span>Carie Marks, Now Sleeps the Crimson Petal, Gefen Publishing House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e2c8ee24-1521-497c-a8a9-1b34f7517fb3",
            "display": "<span>Silas Simonis, A Monstrous Regiment of Women, Virago Press.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b41e1fd7-5441-4b99-8704-26e6b41556e0",
            "display": "<span>Wonko the Sane, Peach, Five dollar toast neutra typewriter hella.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c97ace19-aa7b-4521-a4a3-1433ad16e43b",
            "display": "<span>Humma Kavula, Pink Cashmere, Bespoke <i>vhs tofu gentrify semiotics locavore letterpress actually</i> pickled.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f06d368e-c6e1-4b11-b2d5-f287794dd35d",
            "display": "<span>Trillian, <i>Nothing Compares 2 U</i>, Echo try-hard vinegar thundercats everyday yolo.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 30,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 2
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
          "key": "North Kris",
          "doc_count": 16
        },
        {
          "key": "Northern Virginia College",
          "doc_count": 15
        },
        {
          "key": "Champlin College",
          "doc_count": 13
        },
        {
          "key": "West Johnson Institute",
          "doc_count": 9
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 8
        },
        {
          "key": "italian",
          "doc_count": 8
        },
        {
          "key": "french",
          "doc_count": 7
        },
        {
          "key": "german",
          "doc_count": 7
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 10,
    "page_count": 3,
    "total_count": 30,
    "links": {
      "self": "http://example.org/letters?page=2&per_page=10",
      "first": "http://example.org/letters?page=1&per_page=10",
      "last": "http://example.org/letters?page=3&per_page=10",
      "next": "http://example.org/letters?page=3&per_page=10",
      "prev": "http://example.org/letters?page=1&per_page=10"
    }
  }
}</pre>
