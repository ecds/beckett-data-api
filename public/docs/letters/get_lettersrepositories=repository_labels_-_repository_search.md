# Letters API

## GET /letters?repositories=:repository_labels - Repository Search

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

<pre>GET /letters?repositories=Eastern+Arizona+College</pre>

#### Query Parameters

<pre>repositories: Eastern Arizona College</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=Eastern+Arizona+College&gt;; rel=&#39;self&#39;
X-Total-Count: 14
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0b33158ba4a5c3de74678f56fb0a077b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9dd61552-3458-4f0c-a8f8-616537369223
X-Runtime: 2.373198
Vary: Origin
Content-Length: 28711</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/5cffab3b-4dda-47ea-9899-cfeabfa6b90d",
      "date": "1957-03-28T00:00:00.000-05:00",
      "label": "28 March 1957 - <i>Brandt</i>",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "<i>Ibiza</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/77272ffb-6020-4303-96c1-512c17d69383",
            "display": "<span><i>Arkintoofle Minor</i>, Sahara Davenport.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e3507730-f7dd-49bd-bae0-d76e5b8aca67",
            "display": "<span><i>Kakrafoon Kappa</i>, Mayhem Miller.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/353920f9-666a-4b47-ae0e-286e031e0f83",
            "display": "<span>Ned Gerblansky (1914-1980). Blue <i>bottle organic fixie vinyl franzen paleo park typewriter</i> waistcoat.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4727437a-8912-4e49-a523-726844e95409",
            "display": "<span>Butterscotch Horseman (1917-1981). You <i>probably haven't heard of them pinterest gastropub</i> intelligentsia.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/29705c05-9f85-43cf-ac76-efe2a1ab9746",
            "display": "<span>Apollo (1959-10-10).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f72f23a0-304c-4d08-a02f-d723029c1c96",
            "display": "<span>Apollo (1950-10-30).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/989f8c2f-88fa-4461-8524-822b3d3d4e9e",
            "display": "<span>Clinton Heller, Time of our Darkness, Nauka.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/aed2c4ff-2367-4174-94ff-fa837fb0c994",
            "display": "<span>Chantay Nader Jr., Edna O'Brien, Pecan Grove Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ea820b7f-d129-4d83-939a-42ad320b5f54",
            "display": "<span>Wm Murazik, <i>The Curious Incident of the Dog in the Night-Time</i>, Bantam Spectra.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f94c65c1-dff8-4b1e-a90e-318a4816ff5e",
      "date": "1958-02-17T00:00:00.000-05:00",
      "label": "17 February 1958 - <i>Brandt</i>",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "Zarss"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c134bf38-24a3-4c4d-9dbb-8cc8018707f0",
            "display": "<span>pop-up, <i>Braveheart</i>, Florabury, 16 March 1955.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0320a7f5-212d-4206-a6d3-02d85ab928a0",
            "display": "<span>Colin the Security Robot (1903-1991). Art party ethical diy irony vinyl viral pickled.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/535db8ce-09b4-44f5-8b1b-86bb0beb6414",
            "display": "<span><i>Ned Gerblansky</i> (1902-1973). Shabby chic readymade authentic etsy cleanse heirloom asymmetrical farm-to-table mlkshk.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8308e062-6311-435a-a575-1a6bf9314fd6",
            "display": "<span>Ned Gerblansky (1904-1989). Gentrify <i>pop-up letterpress xoxo keffiyeh cliche heirloom cronut</i> viral.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4441fb2f-2c27-42cf-a90d-70b7c0246cf4",
            "display": "<span>Maude Lebowski, Leia Organa, Yooden Vranx Freegan forage twee next level selfies yr yolo.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/694eb35c-5b93-43fb-b820-fd3d0f5a378f",
            "display": "<span>The Daffodil Sky.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/86c95d0e-ef70-4e7c-8dce-882829c98eb0",
            "display": "<span><i>Sleep the Brave</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/aa0dbf16-de7b-4b58-be47-4ea2d45c4e72",
      "date": "1958-02-23T00:00:00.000-05:00",
      "label": "23 February 1958 - <i>Ned Gerblansky</i>",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/77c23200-2e1a-4680-a62d-c5e4b02752dc",
            "display": "<span>drinking, <i>Judgment at Nuremberg</i>, Lindseyville, 06 January 1957.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e07a8681-60f1-4687-9776-c8375fd7ceef",
            "display": "<span>brunch, <i>The Lion King</i>, Yasminside, 20 January 1969.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/13496fdc-4229-494d-94ee-464a924eba11",
            "display": "<span>Maude Lebowski, Miracle Max, Phouchg Williamsburg godard tofu slow-carb pug keffiyeh actually dreamcatcher.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/532f5800-59a3-40e4-88e0-b4a2b45c072b",
            "display": "<span>Eccentrica Gallumbits, Under The Cherry Moon, Brooklyn <i>lo-fi mlkshk fanny pack</i> pour-over.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/c565e5b4-4f57-40f5-b4d3-ee6330e7d0bd",
            "display": "<span>The Sun Also Rises.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/afae329f-1007-40c2-9371-eb6b8a91072d",
      "date": "1958-03-22T00:00:00.000-05:00",
      "label": "22 March 1958 - <i>Ned Gerblansky</i>",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6afe4262-3bfe-4515-a5a6-3da670b7773f",
            "display": "<span>Frogstar World A, Chad Michaels.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6d5f92dd-993b-4fcd-908e-b66f074f14bb",
            "display": "<span><i>Viltvodle VI</i>, Aja.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/4f657bc1-f0ef-40d9-ba65-a0f346d1d1df",
            "display": "<span><i>Café Lou</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/8b8810d1-f1aa-4e99-bad0-cf10a554f9ef",
            "display": "<span>Ysllodins.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3d4171cc-d24b-433b-8fa1-0b7d45670fa5",
            "display": "<span>Zaphod Beeblebrox, Another Lonely Christmas, Squid godard photo booth intelligentsia offal.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e40296dc-5708-415a-ae2d-d06dd39758c1",
            "display": "<span>Roosta, Crimson and Clover, Chambray venmo wolf cronut.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f935bb91-529a-41e3-a5bd-ba59bd471d33",
            "display": "<span>Loonquawl, I Hate U, Irony cardigan polaroid typewriter.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/85f3f031-c874-40e0-a354-f61b9d903b8e",
            "display": "<span>A Confederacy of Dunces.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/8d05bf46-830a-462d-9c50-17d20d6ef836",
            "display": "<span><i>The Golden Bowl</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c370de75-a40b-4129-80a0-5a61c7b51a49",
            "display": "<span><i>In a Dry Season</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a857a662-3cde-42e6-aff8-0531ff2ce324",
      "date": "1958-07-13T00:00:00.000-04:00",
      "label": "13 July 1958 - <i>Emory</i>",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/76601a01-4992-4ce8-a5d5-afab83ed265d",
            "display": "<span>Nano, Mimi Imfurst.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/78f9892d-c203-4cf6-8d46-14c79dd0f97a",
            "display": "<span>Viltvodle VI, Roxxxy Andrews.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8e2d6dc4-c3e3-48fa-b32b-df85be6d10ab",
            "display": "<span><i>Allosimanius Syneca</i>, Milk.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/919fcfdf-23c3-480c-b98f-a01620a2fa31",
            "display": "<span>Scary Terry (1924-1972). Twee <i>mlkshk semiotics loko before they sold out phlogiston</i> offal.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ac128157-c2cc-44d5-b65b-cda416566720",
            "display": "<span><i>Otto Aquarius</i> (1917-1979). Pug lo-fi normcore echo.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/fab1332c-09bc-47af-a9ee-5cb358b8a41a",
            "display": "<span><i>Otto Aquarius</i> (1916-1993). Neutra synth street 3 wolf moon skateboard cray chia.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b2bbf65d-c913-40dd-b867-e6910cb70519",
            "display": "<span>Orion (1935-10-09).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/18e2a902-84fc-4a5e-8f73-739cc58a719b",
            "display": "<span>Noli Me Tangere.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/8c8951c4-3e64-4534-b37c-4addaa3dc12e",
            "display": "<span><i>A Scanner Darkly</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/8e3c0a2d-6f87-4fa4-b6a3-5e80951b0b57",
            "display": "<span><i>A Swiftly Tilting Planet</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d87cce45-f4c8-4673-ac2c-8f006c3f53e8",
      "date": "1959-04-24T00:00:00.000-05:00",
      "label": "24 April 1959 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "<i>France</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c1abded4-6ba2-4420-8689-9eaf4401b4ca",
            "display": "<span>Pizpot Gargravarr, U Got The Look [BenDeLaCreme].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/61ca8137-c0e5-4d6e-9064-a29be920f58b",
            "display": "<span>Broop Kidron Thirteen, Scarlet Envy.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6a0e95e5-28b1-4c0c-b965-cc93f06c8291",
            "display": "<span><i>Poghril</i>, Detox.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ae882490-7e9a-4f84-9472-579c489427bd",
            "display": "<span><i>Broop Kidron Thirteen</i>, Sahara Davenport.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/248a3ab8-6a31-444f-b06e-7a6b5fba5945",
            "display": "<span>Enterprise (1940-07-05).</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e32e2562-6410-4b2f-8716-c0773f406e49",
            "display": "<span>Trin Tragula, <i>319</i>, Bushwick <i>bespoke selvage twee</i> hoodie.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5116641c-f995-42d4-aaef-54ddf4241456",
      "date": "1961-05-06T00:00:00.000-04:00",
      "label": "06 May 1961 - Brandt",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "<i>Total Perspective Vortex</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/256f238c-b7fd-48ec-8368-2d75ab8de395",
            "display": "<span>offal, L.A. Confidential, Farrahshire, 02 November 1924.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/801ccd45-bd30-4467-b733-c61d7a4ca5f8",
            "display": "<span>offal, Oldeuboi, Breitenberghaven, 04 December 1957.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/03177fcc-2f41-4da8-84ba-d5c7259dbee6",
            "display": "<span><i>Data</i> (1914-1972). Meditation <i>deep v migas hammock squid tote bag</i> occupy.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/41e17466-c36b-4ce8-bb1d-396da8aa81d0",
            "display": "<span><i>Mario</i> (1918-1977). Cred <i>muggle magic retro meditation</i> wolf.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e796e966-a32a-4609-ad78-76442e0cb656",
            "display": "<span><i>Brandt</i> (1902-1992). Mustache <i>mixtape neutra normcore plaid marfa</i> tattooed.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/931c066c-8ef9-47a3-8ecb-589b0513d54b",
            "display": "<span>Café Lou.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a9b9c46d-af4b-41ed-b880-931eee8b5635",
            "display": "<span>Garkbit, <i>This Lime Tree Bower</i>, Translated into Jajazikstak by Phouchg.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/eb19b95d-ca68-460a-8b02-4142565668ff",
            "display": "<span>Wonko the Sane, A Handful of Dust, Translated into Earth by Fenchurch.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6d8e03dc-d798-4a7d-84c8-a08447cd394a",
      "date": "1961-08-03T00:00:00.000-04:00",
      "label": "03 August 1961 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3e852d11-0f80-4c1b-b925-7204105975b9",
            "display": "<span>Eccentrica Gallumbits, <i>Superfunkycalifragisexy</i> [Darienne Lake].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/55795833-0a94-4ec0-93c3-895ff9f81627",
            "display": "<span>Lunkwill and Fook, <i>Thieves In The Temple</i> [Tyra Sanchez].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/98cb1d68-a2d8-41c7-8e49-a186d1985754",
            "display": "<span>Grunthos the Flatulent, Head [Pandora Boxx].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6628c821-db20-4447-8aea-d0c1b5a5d72f",
            "display": "<span><i>Jajazikstak</i>, Gia Gunn.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/10f8fcf5-bca7-4ca9-9372-268d707e4aad",
            "display": "<span><i>Saving Private Ryan</i>, dir. Maude Lebowski, RW6, South Coltonport, 1937-03-15.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/395cc64c-7573-4a3a-a001-b0eaa94afcaf",
            "display": "<span><i>The Bourne Ultimatum</i>, dir. The Big Lebowski, Golgafrinchan Ark Fleet Ship B, Deangeloview, 1922-08-30.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8ca39302-5706-4d8d-87c4-6d5e5f98bf78",
            "display": "<span>Arthur Sawayn, <i>The Far-Distant Oxus</i>, Holt McDougal.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/90490d15-eb87-4df5-8502-d7264f6266c5",
      "date": "1962-06-08T00:00:00.000-04:00",
      "label": "08 June 1962 - <i>Homer Simpson</i>",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/24e87b54-77e1-483f-ad05-fac443150dba",
            "display": "<span>Fenchurch Street railway station.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1609fe2d-cee8-424e-af9f-11fc0e2823d5",
            "display": "<span>Sen. Ezekiel Satterfield, <i>The Monkey's Raincoat</i>, Apress.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1eb64d5f-060b-42eb-b8d5-8183989b2d02",
            "display": "<span>Dixie Hartmann Sr., <i>Tender Is the Night</i>, G. P. Putnam's Sons.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/80baeda5-11b0-4718-a435-5ff3d4815b26",
            "display": "<span>Christian Hessel, <i>The Way Through the Woods</i>, Tartarus Press.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4f8cea44-dd8a-42fd-a4d1-daafa74ee370",
            "display": "<span>Prostetnic Vogon Kwaltz, I Sing the Body Electric, Translated into Kakrafoon Kappa by Paula Nancy Millstone Jennings.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6e471446-6e68-44de-a785-478af89e83b9",
            "display": "<span>Reg Nullify, Brandy of the Damned, Translated into Poghril by Humma Kavula.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/25e7a0ae-0af5-4cea-89fc-d811cd6b1f4f",
            "display": "<span><i>Vile Bodies</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ef807b74-0ea6-48ec-8df6-b7296d61c393",
            "display": "<span>For Whom the Bell Tolls.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0e32290f-9e6c-4dba-8360-6f198e16aecb",
      "date": "1964-02-08T00:00:00.000-05:00",
      "label": "08 February 1964 - <i>Otto Aquarius</i>",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c7704ea1-bf64-4237-b865-6aed89eb40e0",
            "display": "<span><i>Brandt</i> (1900-1991). Kinfolk microdosing whatever seitan keffiyeh.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ccdbe7d8-e092-445a-a944-3c0587f54f79",
            "display": "<span>Butterscotch Horseman (1908-1975). Fingerstache blue bottle dreamcatcher ugh austin fanny pack.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1b179785-b11a-432c-af84-ed8856e39787",
            "display": "<span>The Dude, <i>Miracle Max</i>, Majikthise Retro chicharrones bespoke chambray blog tousled vice.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3bdd07c5-39ce-4f13-936e-474980cc5f38",
            "display": "<span>The Big Lebowski, <i>Homer Simpson</i>, Prostetnic Vogon Jeltz Hoodie kickstarter austin small batch biodiesel whatever hella.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/667cfe9b-8aed-4081-a5f8-e82d56fd145f",
            "display": "<span>Marshall Hartmann, The Other Side of Silence, Reed Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/eb533b57-e962-452a-8722-fc6c7442f94a",
            "display": "<span>Mrs. Asa Monahan, The Wind's Twelve Quarters, New Directions Publishing.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2423e375-97f7-456c-8a36-ea12480fd00d",
            "display": "<span>Zarniwoop, <i>Paisley Park</i>, Cronut <i>jean shorts hashtag butcher quinoa readymade yr fixie</i> farm-to-table.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b320781c-e39d-487e-94cf-d422bbe09419",
            "display": "<span>Hotblack Desiato, <i>I Would Die 4 U</i>, Xoxo cred kombucha vinyl you probably haven't heard of them carry distillery master.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/dcdf3873-acf9-469a-87f2-fcb84e58b8ee",
            "display": "<span>Eccentrica Gallumbits, New Position, Next <i>level chicharrones cornhole retro brooklyn yuccie</i> gentrify.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c51378da-d967-4f2b-91e3-daa497f7b237",
      "date": "1964-03-19T00:00:00.000-05:00",
      "label": "19 March 1964 - <i>Scary Terry</i>",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/33665b6e-64eb-4585-9c0f-9319ed615471",
            "display": "<span>Arthur Dent, Joy In Repetition [Violet Chachki].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b5497a8e-c71f-4cc2-b245-1b9ef93088ae",
            "display": "<span>Pasta Fasta, <i>Play In The Sunshine</i> [Trinity Taylor].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e32b7cd6-9ea8-4478-aceb-c2736f723ea3",
            "display": "<span>Agda, Dead On It [Robbie Turner].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/be08b972-3a54-49b4-8f7d-3e94ed674418",
            "display": "<span>Colin the Security Robot (1907-1987). Pop-up narwhal lomo hella neutra pickled williamsburg.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0730a145-c937-46fc-bbdd-d378ad16956b",
            "display": "<span><i>Pleiades system</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1e90b28a-78b5-4e52-af5b-e2459206b32d",
            "display": "<span>Belgium.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3791544e-a76d-46c2-8bca-cbdc5b508ccb",
            "display": "<span>JinJenz, Tamborine, Fingerstache pitchfork bushwick fixie vice biodiesel retro.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6418d351-5fe2-4b34-838f-43480da9b33d",
            "display": "<span>Ford Prefect, <i>Partyman</i>, Semiotics <i>food truck sartorial vinegar humblebrag kale chips</i> salvia.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2df09d76-f6bc-4849-a561-1db33092fcaa",
      "date": "1964-05-10T00:00:00.000-04:00",
      "label": "10 May 1964 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "<i>Bistro Illegal</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/32d5f945-ed64-4c52-a1c7-51e918fba218",
            "display": "<span>Slartibartfast, <i>Pop Life</i> [Bianca Del Rio].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9fa1ea7d-a6cd-46c1-ac06-bf8e88c21cce",
            "display": "<span>JinJenz, Another Lonely Christmas [Jessica Wild].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/11a24900-66eb-416f-ba53-e4fb4187dd72",
            "display": "<span>Lamuella.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/68c662c1-cd03-434d-b144-948261d699ae",
            "display": "<span><i>Highgate Cemetery</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1997cc5e-8faa-40b9-8133-bf8242ad1138",
            "display": "<span>Jesus Quintana, <i>Scary Terry</i>, Questular Rontok Banjo synth keytar ramps viral shoreditch health.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/59d09bb3-7cb5-4c03-b88c-2e8e1e54aa3f",
            "display": "<span>Karl Hungus, <i>Homer Simpson</i>, Vroomfondel Next level yr diy aesthetic fanny pack cliche fashion axe.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c4b621b6-ff21-4a2d-a451-e647392b2043",
            "display": "<span>The Big Lebowski, Miracle Max, Reg Nullify Fashion axe austin chartreuse chambray.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0d098640-1cb3-44de-9729-5994e3a1e717",
            "display": "<span>Joy Champlin I, Quo Vadis, Tate Publishing & Enterprises.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9d744b49-34d8-4288-b48f-c5bbff51d78d",
      "date": "1964-06-27T00:00:00.000-04:00",
      "label": "27 June 1964 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "The Domain of The King"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/b2e7ba72-fc94-44ac-9215-ac43fc5f43d1",
            "display": "<span>Blagulon Kappa, Adore Delano.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fc6cb2c7-1e15-4afa-9496-43f781a0c33a",
            "display": "<span>Viltvodle VI, A'keria Chanel Davenport.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fc9c4d0b-bd20-4cd5-823a-50dae0b794ca",
            "display": "<span>Sesefras Magna, Cynthia Lee Fontaine.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8865d1d8-3d71-45de-ac27-3f87622f1762",
            "display": "<span><i>Butterscotch Horseman</i> (1915-1978). Try-hard <i>health cornhole crucifix sriracha locavore echo bitters green</i> juice.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6b407230-2c90-412a-a276-ef6bb0f3a6ca",
            "display": "<span>Brandt, Scary Terry, Fenchurch Locavore health chia helvetica chartreuse banh mi pinterest try-hard.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e15a01fb-b54d-4ccc-8012-c832e707406d",
            "display": "<span>Bunny Lebowski, Otto Aquarius, Mr. Prosser Sartorial quinoa carry pitchfork freegan shabby chic cronut chillwave.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/626cd1ef-6789-4664-aaf5-99d1784d26e2",
            "display": "<span>Danyell Koch III, The Mermaids Singing, Pantheon Books at Random House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/eeb21cac-d7d2-4f3a-b17a-28861bf7ec53",
            "display": "<span>Felipa O'Reilly, A Glass of Blessings, Lethe Press.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c7dc9bfe-3175-4106-8120-5eef66a04ffd",
      "date": "1965-05-16T00:00:00.000-04:00",
      "label": "16 May 1965 - <i>Butterscotch Horseman</i>",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "Ysllodins"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/9ba2af4d-e729-451c-bbba-d3564444461a",
            "display": "<span>schlitz, Paper Moon, West Alexandermouth, 07 March 1931.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9119a2ed-14e2-4d27-8a4c-e957972fc6cb",
            "display": "<span>Bartledan, Tyra Sanchez.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a8a23ba1-59c9-4c1e-8070-eb5124df9f44",
            "display": "<span><i>Preliumtarn</i>, Jessica Wild.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/10d391c7-2c33-42d7-96c9-9edfaa8b808a",
            "display": "<span>Prostetnic Vogon Jeltz, Fear and Trembling, Translated into Santraginus V by Bowerick Wowbagger.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6d73984a-84de-4935-b1a8-3fa81488ef07",
            "display": "<span>Trin Tragula, <i>I Wanna Be Your Lover</i>, Lomo lumbersexual tousled swag.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 14,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 4
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
          "doc_count": 4
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
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
          "key": "West Anderson",
          "doc_count": 16
        },
        {
          "key": "Eastern Arizona College",
          "doc_count": 14
        },
        {
          "key": "Eastern Indiana Academy",
          "doc_count": 12
        },
        {
          "key": "West Iowa University",
          "doc_count": 8
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
          "key": "french",
          "doc_count": 5
        },
        {
          "key": "german",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 2
        },
        {
          "key": "italian",
          "doc_count": 2
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
      "self": "http://example.org/letters?page=1&repositories=Eastern+Arizona+College"
    }
  }
}</pre>
