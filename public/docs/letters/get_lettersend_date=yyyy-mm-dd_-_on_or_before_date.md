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

<pre>GET /letters?end_date=1961-11-24</pre>

#### Query Parameters

<pre>end_date: 1961-11-24</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1961-11-24&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 17
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9c806b28213f5638d0315a7921034a97&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e2e65d89-ef9f-4b9e-b6ba-4d05a8f6c929
X-Runtime: 2.439272
Vary: Origin
Content-Length: 36433</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/ff7959fe-cccd-42aa-b4b1-1f562d9b2ed0",
      "date": "1957-02-11T00:00:00.000-05:00",
      "label": "11 February 1957 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "<i>Belgium</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/527002a0-70f3-41e5-b0ee-54dc1a5a8d29",
            "display": "<span>marfa, <i>Gone with the Wind</i>, Desiraeville, 20 May 1929.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6333f737-7ed4-4159-b25f-b07256dc1687",
            "display": "<span>sriracha, Braveheart, Lake Denismouth, 07 August 1951.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/700699aa-699d-4ae7-a31f-ac4e654cc082",
            "display": "<span>brunch, The Dark Knight, Hunterport, 30 May 1958.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/914c46a9-18ce-4cac-ab53-db68bd8e0675",
            "display": "<span>Becki Keebler, <i>Taming a Sea Horse</i>, Del Rey Books.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c287a3a6-d38c-4ace-a2a8-57628f7ec8cc",
            "display": "<span>Mella, Mr. Nelson, Master marfa selvage photo booth poutine tousled messenger bag authentic muggle magic.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e9aeb5cb-4353-460c-ba91-c5f419bb1d71",
            "display": "<span>Nine Coaches Waiting.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0365ba66-3561-49b8-8661-8d02f6553fab",
      "date": "1957-07-01T00:00:00.000-04:00",
      "label": "01 July 1957 - Scott Malkinson",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/94acf2c1-b22b-4614-aded-1b2128848561",
            "display": "<span>Sector XXXZ5QZX.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d575644e-c697-4131-9f6f-d13ebf2327ad",
            "display": "<span><i>Total Perspective Vortex</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d8e5cf9f-b399-49e2-9b40-7492926bd173",
            "display": "<span>Bistro Illegal.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1c5f4c94-866b-4e11-a506-234c54ae9ddd",
            "display": "<span>The Apartment, dir. Jackie Treehorn, Krikkit One, Aminafurt, 1924-08-25.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a8924b27-341d-4bf6-a890-c682964bc08e",
            "display": "<span><i>No Country for Old Men</i>, dir. Jackie Treehorn, Starship Titanic, North James, 1956-03-01.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/df3f159f-5e9f-4101-8e82-e9d96e27f557",
            "display": "<span><i>TRON</i>, dir. Jackie Treehorn, Starship Titanic, Port Irving, 1926-12-05.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/08b927f8-75e7-40c4-baf6-15c3fa3f65e0",
            "display": "<span>Prak, <i>Computer Blue</i>, Tacos health cornhole street 8-bit cred.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3c40eb8b-4b95-4ae1-9e3a-0d7bfca74346",
            "display": "<span>Emily Saunders, <i>Funk n' Roll</i>, Meggings food truck forage pabst blog tote bag ethical tattooed sriracha.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9e272548-e52f-42de-b630-c7ea4ce0c873",
            "display": "<span>Pasta Fasta, <i>Raspberry Beret</i>, Dreamcatcher farm-to-table 3 wolf moon flannel carry vice.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/af2b898f-80f8-4864-9e35-8e1fe5a494c9",
            "display": "<span><i>Vanity Fair</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd8b0ea4-beb2-4859-aa92-ba9a480c3a5d",
      "date": "1957-07-22T00:00:00.000-04:00",
      "label": "22 July 1957 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Denmark"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5774b159-afe8-4ae1-86c3-48487d69e448",
            "display": "<span>Paula Nancy Millstone Jennings, <i>Mountains</i> [Blair St. Clair].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/af103018-71e0-4732-81d0-1ee1208b1b72",
            "display": "<span>Genghis Khan, <i>Kiss</i> [Raja].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c198783a-4f4f-4d12-877f-44a6cff95fcc",
            "display": "<span>Magrathean sperm whale, <i>319</i> [Kenya Michaels].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c4c9f1ad-34b1-4511-9d75-90a5be817398",
            "display": "<span>Zarss.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3bbab296-0987-4ff8-8646-1c38129fbaad",
            "display": "<span>Marty Friesen II, From Here to Eternity, Berkley Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a5dbd411-3976-4dd5-9f91-e154d5fdaad6",
            "display": "<span>Mitsuko Hermiston, Dance Dance Dance, Farrar, Straus & Giroux.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/09b14c02-cc16-43c6-812a-ecd9ed7a1d4b",
            "display": "<span>Prak, From Here to Eternity, Translated into Bartledan by Prostetnic Vogon Kwaltz.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/765ac2f0-2f00-437d-8d7e-bf90cc26899e",
            "display": "<span>Gail Andrews, <i>Dulce et Decorum Est</i>, Translated into Magrathea by Hillman Hunter.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d02174f2-a33e-4cf6-9f74-d103a5a642e5",
            "display": "<span>Trillian, The Grapes of Wrath, Translated into Eroticon VI by Arthur Dent.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/eb08aaf1-3e64-42eb-8622-712551c51755",
      "date": "1957-08-08T00:00:00.000-04:00",
      "label": "08 August 1957 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2ec75963-9ff0-4c3a-9537-f8b5475cd392",
            "display": "<span>JinJenz, 17 Days [Vanessa Vanjie Mateo].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e3456cf8-d0d4-4164-a5f0-fa65dc3cfa8c",
            "display": "<span>Lintilla, <i>Funk n' Roll</i> [Jujubee].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fb5a7140-0ff3-4909-aae6-63b888a61a39",
            "display": "<span>Majikthise, Sexy MF [Violet Chachki].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/46f9a4fd-0d8b-4100-ab56-8d6189a7f2e4",
            "display": "<span>Citizen Kane, dir. Jackie Treehorn, RW6, Pamhaven, 1949-05-07.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8f59a7ee-3ff4-4ff3-b6a8-75bba58c4823",
            "display": "<span>Shutter Island, dir. Walter Sobchak, Starship Titanic, Hiramchester, 1955-10-08.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d19fc527-9c8c-41b0-97a4-6e9de0ebca29",
            "display": "<span>Questular Rontok, As I Lay Dying, Translated into Frogstar World A by Reg Nullify.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/86abb043-492b-48b7-a3ac-b5495c1c49eb",
            "display": "<span><i>A Handful of Dust</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/936a2c9e-1dbe-4466-a445-5e8470905414",
            "display": "<span><i>Far From the Madding Crowd</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cdd87261-66f6-49a5-b9df-f507a89b4988",
      "date": "1957-10-03T00:00:00.000-04:00",
      "label": "03 October 1957 - Lyra Erso",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "Preliumtarn"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6d472f81-4733-49cb-9baf-a3cb4cea0aa0",
            "display": "<span>loko, <i>Platoon</i>, Delenaview, 24 July 1929.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9001acc9-832f-404e-8e35-238beac26801",
            "display": "<span>Earth, Joslyn Fox.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c6c51460-e51b-42f0-be24-701707618e26",
            "display": "<span><i>Santraginus V</i>, Trixie Mattel.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/874c5721-78b1-4da8-86b7-2c88b919dbd3",
            "display": "<span>Ms. Jeanett Lakin, Death Be Not Proud, Random House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a16826b4-eea1-493f-82c4-264baf430360",
            "display": "<span>Theola Bruen, <i>Clouds of Witness</i>, Airiti Press.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/38aea51d-b549-41cc-9a08-6d2a18a5d2b2",
            "display": "<span>Lilies of the Field.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/4f87872b-4751-4b6a-906c-b87b1aab292c",
            "display": "<span>Frequent Hearses.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f4aa5fef-1583-4294-8c07-d3d598688e9a",
            "display": "<span>From Here to Eternity.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5c2595af-78f0-41b2-b484-27e9d5f41e2a",
      "date": "1958-02-07T00:00:00.000-05:00",
      "label": "07 February 1958 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Kakrafoon Kappa</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/20126d05-6004-456f-bed7-93eafcd7d60e",
            "display": "<span>roof, <i>In the Name of the Father</i>, New Beau, 06 January 1951.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3ea7cbfc-be43-4936-94d9-e0298ccb80d1",
            "display": "<span>roof, <i>Intouchables</i>, North Celestinaborough, 11 October 1949.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c003702e-9302-40a0-949c-8a5e54ceac02",
            "display": "<span>skateboard, Saving Private Ryan, Parkerborough, 21 December 1968.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/20ea5136-2f82-48a8-b643-b88a1274f712",
            "display": "<span><i>The Albino</i> (1907-1981). Portland austin disrupt +1.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/55cc66eb-c5b1-44ed-b246-9ec5ce815547",
            "display": "<span>Lamuella.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c25f5595-4442-4b6b-b725-932bd04dc788",
            "display": "<span><i>Total Perspective Vortex</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cee89e44-af3a-48b6-91ba-051d148c47a4",
            "display": "<span><i>Preliumtarn</i>.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/287db917-4fe4-4823-bb02-e9602c3e673d",
            "display": "<span>Agda, <i>Baby I'm A Star</i>, Ugh <i>actually flannel cray single-origin coffee salvia mustache</i> truffaut.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e5d855d4-ccf7-45df-9774-ce603576d689",
      "date": "1958-06-03T00:00:00.000-04:00",
      "label": "03 June 1958 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/460e252c-1872-4711-896f-ba1c68e9c4f0",
            "display": "<span>scenester, <i>The Usual Suspects</i>, Marjorystad, 30 October 1967.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e2b77645-512f-45c8-af60-3819844f8df4",
            "display": "<span>cronut, Bicycle Thieves, East Katharinaville, 04 July 1945.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6538a860-29fa-4777-a2be-639a691c998e",
            "display": "<span>Revolio 'Gearhead' Clockberg, Jr. (1928-1979). Irony jean shorts mustache asymmetrical sustainable pop-up biodiesel food truck 90's.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ea0586d3-25fa-4c9a-a0c7-5d4136c334f5",
            "display": "<span><i>William T. Riker</i> (1918-1974). Fingerstache heirloom put a bird on it chambray iphone +1 celiac umami.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/339cdb85-a51f-4a6f-80a5-13c054ba3c73",
            "display": "<span>Deep Thought, No Country for Old Men, Translated into Lamuella by The Allitnils.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ceb862fb-f706-4ad5-ab68-ef78e58ef9d9",
            "display": "<span>Genghis Khan, <i>Tiger! Tiger!</i>, Translated into Magrathea by Phouchg.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8ca4df8a-eeae-4525-b044-e68d2ee22629",
            "display": "<span><i>This Side of Paradise</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e5c811b4-cdcd-4351-a886-abd83863f15b",
            "display": "<span>Beyond the Mexique Bay.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8726f90a-765f-4228-859b-e27799b1c9db",
      "date": "1958-12-11T00:00:00.000-05:00",
      "label": "11 December 1958 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/d700acdd-d153-470b-8545-54d8695225b3",
            "display": "<span>pitchfork, Blade Runner, Schillerport, 09 October 1922.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e1f8ad02-3cad-4fc8-8dc7-be8c1a68ece8",
            "display": "<span>actually, <i>Room</i>, Tymouth, 14 April 1933.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f302df6d-fe88-4c3e-8d3b-6668d66ce56e",
            "display": "<span>selfies, Judgment at Nuremberg, Yostmouth, 30 April 1955.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/56ca30a9-2499-4d6a-abc1-8e1fae0cd905",
            "display": "<span>Jesus Quintana, Mario, Magrathean sperm whale Pinterest 8-bit ethical pitchfork salvia.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2f82b91b-01a1-42f7-ac25-c121f73cdbb5",
            "display": "<span>Deep Thought, <i>The House of Mirth</i>, Translated into Broop Kidron 13 by Loonquawl and Phouchg.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/85200753-3f00-401a-90a8-1d9c230b008f",
            "display": "<span>Charles Darwin, The Monkey's Raincoat, Translated into Kakrafoon Kappa by Oolon Colluphid.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/240a5d6c-8aca-44e1-a693-cd9bde729a38",
            "display": "<span>Antic Hay.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/33bae537-62e6-4923-85bc-daab7847268c",
            "display": "<span><i>Carrion Comfort</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f2ed16cc-ab19-4cb4-aba2-abdd89b9d4ac",
      "date": "1959-09-09T00:00:00.000-04:00",
      "label": "09 September 1959 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "Islington"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/009fd0ab-8306-416c-92c5-0e9fd86f65f8",
            "display": "<span>Fenchurch, Kiss [Nina Bonina Brown].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/bbc70cd6-9d23-425b-a609-dd18308b9239",
            "display": "<span>Preliumtarn, Blair St. Clair.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fa613bd7-941a-4b96-8a36-65c82eb7a468",
            "display": "<span>Sqornshellous Zeta, Mayhem Miller.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/35e83da2-21f0-4394-abfb-706114d561b3",
            "display": "<span><i>Elizabeth Hoover</i> (1916-1994). Direct trade goth lo-fi hoodie mustache chillwave migas food truck.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1654487d-0af2-40b1-8bc9-beac03bf6838",
            "display": "<span>Donny, <i>Steppenwolf</i>, Marvin Venmo vinegar scenester master schlitz phlogiston offal sriracha keffiyeh.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a0093f5b-df2d-48ac-80aa-17f406c0e817",
            "display": "<span>Karl Hungus, Oglethorpe, Hotblack Desiato's bodyguard Vegan roof trust fund brunch blue bottle typewriter narwhal kickstarter.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/db2d2408-eea6-4b70-a79c-3ee2de704300",
            "display": "<span>Karl Hungus, <i>Oglethorpe</i>, Gail Andrews Biodiesel williamsburg yr pork belly bespoke cardigan.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/da2d7385-32f2-4650-9df6-7a0fe5ec0b28",
      "date": "1960-01-07T00:00:00.000-05:00",
      "label": "07 January 1960 - <i>The Albino</i>",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>Easter Island</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/156652ba-0444-4b1f-a07c-c1f53a5bff26",
            "display": "<span>8-bit, <i>Sholay</i>, North Josefa, 03 May 1971.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ad0c9687-fb92-4e2c-bcc9-39f184133e0b",
            "display": "<span>chartreuse, <i>Nuovo Cinema Paradiso</i>, Runtemouth, 07 June 1960.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/bbff4f71-b467-44b3-aeba-8ba7e30a17ac",
            "display": "<span>Emily Saunders, <i>I Could Never Take The Place Of Your Man</i> [Aja].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c956eeae-95ac-40ad-bb13-a9a2fde3088e",
            "display": "<span>Trillian, <i>1-800-Newfunk Ad</i> [Miss Fame].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/126a6453-29dd-4d21-8785-8cb7a4ae6ec2",
            "display": "<span>Santraginus V, Yara Sofia.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a230ef25-0e7f-487e-9e58-b5ae064aad2d",
            "display": "<span><i>Golgafrincham</i>, Carmen Carrera.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a1cb2693-f2f2-440e-b0b4-f7505980a2ee",
            "display": "<span><i>Gemini</i> (1925-01-18).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b291fa38-6b16-4018-85fe-9fbe33a9b3df",
      "date": "1960-01-24T00:00:00.000-05:00",
      "label": "24 January 1960 - Lyra Erso",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/13f8ae69-d8ed-440c-a339-380b2ae77e88",
            "display": "<span>Hotblack Desiato, <i>Computer Blue</i> [A'keria Chanel Davenport].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5e118a42-7c87-4de2-91bf-e817b19b2856",
            "display": "<span>Trin Tragula, Uptown [Coco Montrese].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7c52ad4e-8f65-4e85-be63-dd6b7f752d2d",
            "display": "<span>Effrafax of Wug, Uptown [Chi Chi DeVayne].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3aa6bee1-2b5a-4635-b3ef-59e81c861c1c",
            "display": "<span>Frogstar World C, Mayhem Miller.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/3fa3415d-8deb-4da0-8aa5-c303b3fcd797",
            "display": "<span>Nano, Monet X Change.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d077e189-75fa-4adf-8f46-0e75db98481b",
            "display": "<span><i>Burphon XII</i>, Valentina.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0c721d5d-a0bd-4c6a-9186-b270b2e2c6c5",
            "display": "<span>Metropolis, dir. Jesus Quintana, Tanngrisnir, Sterlingport, 1932-04-29.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/5d81e61d-96af-4a99-a9e0-b5e5fa019291",
            "display": "<span><i>Alien</i>, dir. Walter Sobchak, Starship Titanic, Myeshafort, 1927-04-05.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/925b4473-eda7-4a72-afab-5f85fb303fd0",
            "display": "<span>Inception, dir. The Dude, Bistromath, Monahanside, 1932-02-29.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/88f3ba0a-c0ef-4584-a97c-358ea39ab82e",
            "display": "<span>Jackie Treehorn, <i>Oglethorpe</i>, Prostetnic Vogon Jeltz Tumblr ennui roof sustainable.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fe93d519-acd8-434e-bab3-b17fe0c296f2",
      "date": "1960-04-09T00:00:00.000-05:00",
      "label": "09 April 1960 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "Boston"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/dd3604c0-b1b8-4f11-af4b-87db48c0761a",
            "display": "<span><i>Steppenwolf</i> (1926-1983). Lo-fi <i>jean shorts umami photo booth sriracha echo slow-carb</i> +1.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/216fd535-649c-4c3a-9145-29de9935c514",
            "display": "<span>The Elephant Man, dir. Jackie Treehorn, Tanngrisnir, South Ivory, 1938-09-02.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/76b233b3-9627-4ed6-85d7-13f52fc2ebf5",
            "display": "<span>Terminator 2: Judgment Day, dir. Brandt, Vogon Constructor Fleet, Bartolettifort, 1970-01-10.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/be573f65-c7af-495a-baea-5b0e37575393",
            "display": "<span>The Gold Rush, dir. Brandt, RW6, New Leastad, 1952-06-08.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/294add82-d77d-4253-a82d-8ca21c0a07a2",
            "display": "<span><i>Atlantis</i> (1962-04-24).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/a9ef82f6-4139-47f0-b42e-360ebe6ee6c2",
            "display": "<span>Tania Torphy, <i>Cabbages and Kings</i>, Pantheon Books at Random House.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c8921c8c-ca96-47bf-bd3f-a98697168c34",
      "date": "1960-10-31T00:00:00.000-05:00",
      "label": "31 October 1960 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "<i>Pleiades system</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/407985c5-fe22-4a1f-b974-f586574cffd9",
            "display": "<span><i>Oglethorpe</i> (1904-1970). Xoxo skateboard forage celiac banh mi chia.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/aaf88dcb-8e57-4573-abe9-38ddb93297a4",
            "display": "<span><i>Oglethorpe</i> (1906-1988). Offal helvetica brunch lo-fi.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ea88dcdc-c544-4b52-b524-bcedcf7ef22b",
            "display": "<span>Majikthise (1923-1978). Meh cred waistcoat small batch single-origin coffee whatever fanny pack park.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/88a71332-9959-413f-bb78-7b67404cf3aa",
            "display": "<span>Slim's Throat Emporium.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6d3ca433-7444-4e8d-8734-b97474c4c865",
            "display": "<span>Dan Streetmentioner, Sexy MF, Direct trade blog humblebrag quinoa knausgaard fanny pack portland.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a729f4a1-8c9b-4a46-a4a9-29eb7e24876e",
            "display": "<span>Tricia McMillan, Mountains, Organic <i>carry fingerstache tacos meh +1 direct</i> trade.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a8b34915-15f6-48e0-a9d4-ec6dadb2fd05",
            "display": "<span>Agda, Breakfast Can Wait, Kale <i>chips readymade taxidermy pinterest waistcoat yr muggle</i> magic.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/6092cb22-02d6-4811-9427-62b1bd2d00ed",
            "display": "<span>Carrion Comfort.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/69bff46d-7b8a-4de0-97e6-603394bdd009",
            "display": "<span>Things Fall Apart.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c9031352-a89c-4221-a8f4-5801f1571489",
            "display": "<span>The Green Bay Tree.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ca06ad3d-6290-4d2c-b7b1-75f7b8eadc5e",
      "date": "1961-01-03T00:00:00.000-05:00",
      "label": "03 January 1961 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2e12039a-8add-44de-8b12-771e5c3b0eeb",
            "display": "<span><i>Gagrakacka</i>, Kameron Michaels.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/7acd23df-9b77-46c3-92a7-25d7281bae73",
            "display": "<span>Vogsphere, Shangela Wadley.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e10b19c0-5721-4837-8bc7-a799a20e1007",
            "display": "<span>Eroticon VI, Alaska.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/691d0ac6-e3ff-4d57-9df1-1d3ac2141214",
            "display": "<span><i>The Albino</i> (1909-1986). Scenester <i>phlogiston bushwick meditation offal cronut</i> cred.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8182d0d7-282c-4e74-8361-d0f28d973938",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1929-1971). Hoodie truffaut actually hashtag.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/886c0be5-6685-4801-96de-8f5b86551120",
            "display": "<span>Majikthise (1923-1997). Viral readymade beard wayfarers.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/ab7e0c1c-6919-413f-9924-eddfd12b8768",
            "display": "<span>Donte Abshire, <i>When the Green Woods Laugh</i>, Chronicle Books.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/05a6b1ea-9519-429f-9abf-0ba4d557b05a",
            "display": "<span><i>Stranger in a Strange Land</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7c08e196-bf09-41c7-9b7e-58765db73d6d",
            "display": "<span>To Sail Beyond the Sunset.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e03b8fc7-c4d9-4ccc-8328-8cb3fe6a1ba3",
            "display": "<span><i>From Here to Eternity</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/96e2d54c-ad77-4a16-8c3b-219035bbc393",
      "date": "1961-07-04T00:00:00.000-04:00",
      "label": "04 July 1961 - <i>Elizabeth Hoover</i>",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/35d97750-4c8e-49f4-aa86-37e3d49cfb72",
            "display": "<span>irony, <i>To Kill a Mockingbird</i>, North Jerome, 19 February 1927.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6c59e56e-eefa-4216-bc21-43156dcf7673",
            "display": "<span>helvetica, Gran Torino, Corwinmouth, 27 November 1941.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/138f4ab2-5b0b-4245-bc88-7a5a7ad0e5c2",
            "display": "<span><i>Hawalius</i>, Roxxxy Andrews.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/443b2bf2-d388-498a-bc3b-588a869113cb",
            "display": "<span><i>Argabuthon</i>, Yvie Oddly.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b73ddcbb-90b8-4548-b378-270783c6a13b",
            "display": "<span><i>Hawalius</i>, Alyssa Edwards.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9e8239f1-e199-4c1f-a759-52abdd384d1a",
            "display": "<span>Clementine Kuhlman, <i>Postern of Fate</i>, Happy House.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ca3e6930-1804-45e2-a374-b1f85a00e3af",
            "display": "<span>Zarniwoop, <i>Still Waiting</i>, Microdosing listicle seitan mumblecore.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7da9bb95-de62-4987-adac-137ce1914912",
      "date": "1961-09-16T00:00:00.000-04:00",
      "label": "16 September 1961 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4957f515-7c5e-4822-aed5-6a346f4a714a",
            "display": "<span><i>Majikthise</i> (1914-1970). Single-origin coffee tilde franzen actually.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/bee8305a-29bc-49e4-b23b-5162061f36be",
            "display": "<span><i>Majikthise</i> (1907-1980). Mumblecore <i>art party raw denim</i> distillery.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f2e32a3f-bb1d-46ef-87a0-526af5482156",
            "display": "<span>Mario (1908-1970). Green juice hella gastropub cleanse humblebrag cred narwhal sustainable.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/362e00c2-48c3-4e1d-8296-9424e841c6e5",
            "display": "<span>The Good, the Bad and the Ugly, dir. Walter Sobchak, Tanngrisnir, West Jermaine, 1962-01-05.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7f0e7281-1144-40f2-8b90-120aab67c534",
            "display": "<span>Persona, dir. Karl Hungus, Starship Titanic, Bridgetburgh, 1934-10-28.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/08cdd3f3-76c4-4ad2-9981-c421df31198b",
            "display": "<span><i>Apollo</i> (1925-07-14).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7c45875a-2ddd-446c-8437-c3aa9b2197bd",
            "display": "<span>Discovery (1938-01-28).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b13cfa27-e7e5-4359-abe5-6e7a6183f824",
            "display": "<span>Gemini (1927-11-19).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/8e237d55-3076-41da-b5b5-c6eba3ed6a03",
            "display": "<span>The Big Lebowski, Scott Malkinson, Slartibartfast Kickstarter williamsburg kombucha chicharrones pbr&b aesthetic vinegar kogi leggings.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a0ad0178-c69b-498f-8826-53b3f7bc8dfe",
            "display": "<span>Karl Hungus, Officer Meow Meow Fuzzyface, Colin the Security Robot Cold-pressed meditation wes anderson brunch pabst.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/26996cc3-78af-43dc-b469-856201bf0a4e",
      "date": "1961-11-24T00:00:00.000-05:00",
      "label": "24 November 1961 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Kakrafoon Kappa"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bbcde452-8a7b-4f2e-9916-5ce3d6e365ae",
            "display": "<span>offal, <i>Beauty and the Beast</i>, Vellaside, 24 May 1934.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f16d5de8-c129-48cd-ac83-216d9d4239a9",
            "display": "<span>yr, <i>Double Indemnity</i>, Turcottemouth, 08 March 1961.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/31e3d24c-ad5d-41d7-8a48-32eb1099c019",
            "display": "<span>Trillian, Alphabet St. [Monet X Change].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9668c95f-4595-4dab-9d6d-e7f30c67d309",
            "display": "<span>Phouchg, Lady Cab Driver [Monet X Change].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c670e187-ae44-4903-bc4d-3a6fde7f9cbd",
            "display": "<span>Hotblack Desiato, When You Were Mine [Yvie Oddly].</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/46d97cba-cac2-40a7-a07f-507cc50beaf6",
            "display": "<span>Donny, <i>Mario</i>, Gail Andrews Gastropub pour-over dreamcatcher beard thundercats master franzen schlitz health.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/54116f71-33e4-441f-a21f-97e76fd04fb9",
            "display": "<span>Jackie Treehorn, Elizabeth Hoover, Garkbit Gastropub salvia banh mi pbr&b mlkshk selvage brooklyn pitchfork.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a16b60bd-a2b2-4702-8f33-15dfadbafd2f",
            "display": "<span>Jesus Quintana, Bunny Lebowski, Garkbit Paleo cred semiotics messenger bag chillwave shoreditch brooklyn humblebrag try-hard.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2c6fe6fa-d558-49ff-bae7-23d54c21700a",
            "display": "<span>Prostetnic Vogon Jeltz, <i>Time To Murder And Create</i>, Translated into Frogstar World B by Emily Saunders.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/69d27f50-b452-4641-a35a-36ee6863acf6",
            "display": "<span>Hotblack Desiato, When the Green Woods Laugh, Translated into Poghril by Rob McKenna.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e818994c-79ce-4e55-94c8-551789363846",
            "display": "<span>Lunkwill and Fook, <i>The Parliament of Man</i>, Translated into Xaxis by Zaphod Beeblebrox.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 17,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 5
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
          "doc_count": 4
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
        }
      ]
    },
    "repositories": {
      "doc_count": 17,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Kunde University",
          "doc_count": 8
        },
        {
          "key": "Eastern VonRueden",
          "doc_count": 7
        },
        {
          "key": "Smitham College",
          "doc_count": 6
        },
        {
          "key": "Parisian College",
          "doc_count": 5
        }
      ]
    },
    "language": {
      "doc_count": 17,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 8
        },
        {
          "key": "french",
          "doc_count": 4
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "english",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 17,
    "links": {
      "self": "http://example.org/letters?end_date=1961-11-24&page=1"
    }
  }
}</pre>
