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

<pre>GET /letters?repositories=Gorczany+Academy</pre>

#### Query Parameters

<pre>repositories: Gorczany Academy</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=Gorczany+Academy&gt;; rel=&#39;self&#39;
X-Total-Count: 15
Content-Type: application/json; charset=utf-8
ETag: W/&quot;177c531590598b2242d591c90a20e42d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f1370708-ebdc-45b5-a21f-11fc44b09d77
X-Runtime: 2.677657
Vary: Origin
Content-Length: 26705</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/aaab42fd-f84a-42e2-88fb-7759df6485fa",
      "date": "1957-10-06T00:00:00.000-04:00",
      "label": "06 October 1957 - Zulauf, Jefferey",
      "recipients": [
        "Zulauf, Jefferey"
      ],
      "destinations": [
        "Zarss"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2d382145-2df0-4a91-949b-7192082c1b9f",
            "display": "<strong>rehearsal</strong> Life Is Beautiful"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ce0d0871-f649-428a-a7d0-3f94e697bbc4",
            "display": "<strong>radio_broadcast</strong> <i>Toy Story 3</i>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/79c70591-e3fb-4d02-9497-7f8e9fff1335",
            "display": "Barry Manilow, <i>Nothing Compares 2 U</i> [Derrick Barry]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/87fca40a-e6f1-460c-8c1f-a12ddda4a52c",
            "display": "Dan Streetmentioner, Another Lonely Christmas [Carmen Carrera]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e200111b-4a52-4c36-9c05-9c6febb2717a",
            "display": "Prostetnic Vogon Kwaltz, <i>Mr. Nelson</i> [The Vixen]"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3c5e5006-9397-4fc9-9153-9a7f93007f65",
            "display": "Scarface, dir. Walter Sobchak, Vogon Constructor Fleet, East Ladybury, 1957-05-02"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/db58e4d8-0312-4573-8935-2e08bb883c6b",
            "display": "The Lion King, dir. Karl Hungus, Bistromath, West Alaineside, 1943-01-20"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/10fad6f9-2d1c-47c3-bef2-bcb68d65603f",
            "display": "<i>Voyager Books</i>, Bowerick Wowbagger Salvia hashtag lo-fi mustache microdosing shoreditch selvage cleanse freegan."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/80c1e278-b8ac-4b3c-af22-ba3c9ce8b246",
            "display": "Pen and Sword Books, Garkbit Typewriter locavore swag try-hard."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/88cec09b-a0ae-4f17-9dc7-9cea567ab42f",
      "date": "1957-10-24T00:00:00.000-04:00",
      "label": "24 October 1957 - Kulas, Mazie",
      "recipients": [
        "Kulas, Mazie"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/68729e24-ecdd-40da-9b9f-979f0deca67d",
            "display": "<strong>radio_broadcast</strong> 2001: A Space Odyssey"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/140e67ae-7dc7-40e7-9be2-7d54cc95efcd",
            "display": "Elvis, <i>Let's Go Crazy</i> [Blair St. Clair]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c064a231-f155-452b-afb7-ffb5f0cc66ab",
            "display": "Prak, Cream [Pearl]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3483f3e6-f29c-40b0-8805-bed600713780",
            "display": "<b><i>NowWhat</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b3648112-0a30-46f1-b1b3-eab41327589d",
            "display": "<b><i>Arkintoofle Minor</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5462d372-0fc3-49f3-80ef-be1bb26e509f",
            "display": "<i>Fargo</i>, dir. Karl Hungus, Heart of Gold, Port Shainahaven, 1933-09-29"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/115e90fd-3ab2-4f8f-b8ef-57d253d4e883",
      "date": "1957-11-28T00:00:00.000-05:00",
      "label": "28 November 1957 - Schamberger, Cleora",
      "recipients": [
        "Schamberger, Cleora"
      ],
      "destinations": [
        "<i>Seventh Galaxy of Light and Ingenuity</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/57837a91-6918-4c0e-86a1-19371a920a8b",
            "display": "<b><i>Magrathea</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4f12ec8e-a5fe-4146-b0b1-3749d8b26b7f",
            "display": "<i>Gladiator</i>, dir. Jackie Treehorn, Starship Titanic, Emileberg, 1958-01-26"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/d51aa73d-3297-43dd-9fc3-78b359f8e070",
            "display": "<i>All About Eve</i>, dir. Karl Hungus, Bistromath, Hoytfurt, 1967-06-05"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6a8158e1-6a06-4790-b9e3-1e75ca7f858c",
            "display": "Trillian, <i>A Swiftly Tilting Planet</i>, Translated into finnish by Bowerick Wowbagger"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/021ee2ae-a1b8-46a9-8c0e-5d387325edd8",
            "display": "Magrathean sperm whale, New Position, Gluten-free yr humblebrag jean shorts authentic schlitz mixtape."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4741e232-45f1-4ec1-9ef3-ea7f23c9a092",
            "display": "Eccentrica Gallumbits, D.M.S.R, Vinyl try-hard master ramps aesthetic vhs."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a01e93c3-cd4c-49e0-832f-f41bf3fa357f",
            "display": "JinJenz, Still Waiting, Tumblr mixtape phlogiston meh."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/49e61aa6-a1f8-41b4-8ebe-121728315e14",
      "date": "1958-01-26T00:00:00.000-05:00",
      "label": "26 January 1958 - Jacobi, Leandro",
      "recipients": [
        "Jacobi, Leandro"
      ],
      "destinations": [
        "<i>Frogstar system</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2f98760e-c876-473a-8d6c-98ea7214b0c0",
            "display": "<strong>theatre</strong> <i>The Thing</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e748a0ea-6f25-4373-963a-bd770ec052b7",
            "display": "<strong>theatre</strong> <i>Batman Begins</i>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1a4d49ac-d420-40bd-a219-a9f9ac6f32c1",
            "display": "<b>Ziggie's Den of Iniquity</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/300960e4-3a5d-4b5d-ac2f-ad35e4a2998b",
            "display": "<b><i>The Big Bang Burger Bar</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4aa5dbc1-955f-401e-94ee-2556089dec5a",
            "display": "<b><i>Horse and Groom</i></b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/aaf8a95f-b4f2-4824-9efa-dfd8c954f4ee",
            "display": "Arthur Philip Deodat, <i>Antic Hay</i>, Translated into french_and_english by Arthur Dent"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f1272f01-09a4-4900-a2e6-640d2e8ccbfd",
            "display": "Questular Rontok, <i>Ego Dominus Tuus</i>, Translated into japanese by Mr. Prosser"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ffaf6572-d73a-478a-b5c2-f3f301e57f2d",
            "display": "Genghis Khan, <i>Such, Such Were the Joys</i>, Translated into rumanian by Colin the Security Robot"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1774f1b0-fc10-40a3-99f2-4339d4c6d3c9",
            "display": "<b>Brandy of the Damned</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1dd328a4-4e6c-471c-beea-1717d38f422d",
            "display": "<b>The Man Within</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f014a0d3-d9c5-4ad2-ba10-ba419144d5c6",
            "display": "<b>The Last Enemy</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/88fec025-b7bf-44c0-8bdf-6501362b7183",
      "date": "1959-04-10T00:00:00.000-05:00",
      "label": "10 April 1959 - Wolf, Lorette",
      "recipients": [
        "Wolf, Lorette"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/4c9e8cab-8020-4359-abb8-c08f625019e7",
            "display": "<b>Sector XXXZ5QZX</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fc2ff1c0-e640-4b6d-ba36-df8fb7e0e5af",
            "display": "<b><i>Denmark</i></b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/305fc6cd-5848-4751-b2a1-50acba186084",
            "display": "Walker Boehm, Little Hands Clapping, Mark Batty Publisher"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/5de22dac-3818-4991-b5d9-d5c962d8dcab",
            "display": "Nickie Ortiz, The Doors of Perception, Unfinished Monument Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b22acf8f-485a-4476-ac50-f2acae459c35",
            "display": "Dudley Hayes, <i>Dance Dance Dance</i>, Hodder & Stoughton"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3055e87f-8c46-4012-b8dd-cb755a38c547",
            "display": "Agrajag, <i>Girls & Boys</i>, Poutine <i>put a bird on it pop-up wayfarers leggings literally brooklyn single-origin coffee</i> roof."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7ae7c7f6-700c-45b1-9ae3-2a0c27bd9fc8",
            "display": "Hotblack Desiato's bodyguard, I Love U, but I Don't Trust U Anymore, Gluten-free meditation listicle bitters."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/38bcb987-1ce6-40bd-99ac-b293fa4f7520",
            "display": "<b>I Know Why the Caged Bird Sings</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/703cffcf-345c-457a-a433-7c6bfb44eec9",
            "display": "<b>A Glass of Blessings</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/fe8ab978-7117-43b0-929d-a5411f66ea42",
            "display": "<b><i>Number the Stars</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b2d2eca4-b558-4416-9c53-4fac25ee38a9",
      "date": "1959-08-24T00:00:00.000-04:00",
      "label": "24 August 1959 - Kulas, Benito",
      "recipients": [
        "Kulas, Benito"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5d27f62b-dcfd-4603-8d18-f0bb0f682663",
            "display": "Bowerick Wowbagger, <i>Kiss</i> [BenDeLaCreme]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7cf7cc2f-9c8c-4a7e-a8dd-4e6c9b7a5039",
            "display": "Eccentrica Gallumbits, Partyman [Ginger Minj]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ad39107b-6c49-436d-bae2-38932f5b4d01",
            "display": "Eccentrica Gallumbits, I Wanna Be Your Lover [Tatianna]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0c291c75-7142-445a-8c5c-1bb59461d839",
            "display": "<b>Bournemouth</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b543cb22-d2cc-44dd-b732-d8beabc6f6ec",
            "display": "<b>Guildford</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/38f5cb7b-3b03-4617-821d-baa2380fb1a1",
            "display": "<b>Enterprise</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4a082ba5-8eaa-4178-8b02-9e5ea615ef69",
            "display": "<b>Atlantis</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ad3ea26f-5d69-4db1-9804-d0e8b8f002ad",
            "display": "Zarniwoop, I Will Fear No Evil, Translated into norwegian by Elvis"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/eadfa217-3eac-4964-abb7-bc020ce1604a",
            "display": "Majikthise, The Wealth of Nations, Translated into italian by Max Quordlepleen"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4619e754-3a17-4d75-918d-6c6c9c6091c2",
      "date": "1959-09-18T00:00:00.000-04:00",
      "label": "18 September 1959 - Nicolas, Trinidad",
      "recipients": [
        "Nicolas, Trinidad"
      ],
      "destinations": [
        "Rickmansworth"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/0b407a51-ab2f-4e99-b251-f9e9b498ccda",
            "display": "Agrajag, <i>Cindy C.</i> [Pearl]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/332a2128-4d1d-4fed-923f-898baf29944a",
            "display": "<b>Pollich, Neil 1908-1982</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b10d4528-2482-4ab9-a438-2d990f84332a",
            "display": "<b>Mitchell, Lavenia 1907-1996</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/04440859-69a3-4e22-a881-8b920a8dbfa1",
            "display": "Mr. Gabrielle Schimmel, <i>The Mermaids Singing</i>, Shire Books"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ac788fc2-aacb-47fd-ad2b-53f6da4c67bf",
            "display": "Agda, <i>Brandy of the Damned</i>, Translated into greek by Slartibartfast"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d65c8d9a-47b9-426c-9c68-0c4fa5b7c4e1",
            "display": "Grunthos the Flatulent, <i>After Many a Summer Dies the Swan</i>, Translated into flemish by Yooden Vranx"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e4e96725-2fa2-4c05-85d5-58f74b2d835f",
            "display": "Ford Prefect, <i>Those Barren Leaves, Thrones, Dominations</i>, Translated into schweizerdeutsche by Reg Nullify"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e4a83997-339b-4a19-9513-b09a5b571376",
      "date": "1960-02-29T00:00:00.000-05:00",
      "label": "29 February 1960 - Pfeffer, Thalia",
      "recipients": [
        "Pfeffer, Thalia"
      ],
      "destinations": [
        "<i>Western Spiral Arm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/393b8206-536d-46b5-bebb-710b415090f7",
            "display": "<strong>radio_broadcast</strong> Star Wars: Episode II – Attack of the Clones"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ad594b9f-d43c-4559-b291-69583565c30a",
            "display": "<strong>radio_broadcast</strong> <i>Apocalypse Now</i>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/49465863-8f20-44fb-b710-c964f8fa285f",
            "display": "The Big Lebowski, dir. Brandt, RW6, Kirkview, 1925-05-07"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/93474bde-f3fe-403f-a6bc-f355ec5f926e",
            "display": "<i>Leafwood Publishers</i>, Paula Nancy Millstone Jennings Pug meditation scenester you probably haven't heard of them letterpress deep v."
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8b7aee9a-af0c-4268-a95c-ec88776792b8",
            "display": "Eccentrica Gallumbits, <i>Darling Nikki</i>, Flannel mlkshk godard waistcoat."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fe304546-a9b7-4356-b2aa-a8088d0e99a5",
            "display": "Agda, I Wish U Heaven, Listicle wes anderson flexitarian narwhal 90's you probably haven't heard of them tofu phlogiston pop-up."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f736f479-daf5-470e-baeb-c63da2a4ea7b",
      "date": "1960-09-26T00:00:00.000-04:00",
      "label": "26 September 1960 - Lebsack, Kit",
      "recipients": [
        "Lebsack, Kit"
      ],
      "destinations": [
        "<i>France</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8f6fb109-31c3-40f3-b397-1ca1ae29319f",
            "display": "Mella, <i>Anotherloverholenyohead</i> [The Vixen]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/95d8df3c-19c5-481f-9bb7-2170526ee1a5",
            "display": "Grunthos the Flatulent, Joy In Repetition [Kenya Michaels]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/de1e7f1a-12f0-4b58-b24f-e77f6f5a5f5d",
            "display": "<b><i>29 Arlington Avenue</i></b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/07d41308-1da8-4f09-b20f-75030cbaf707",
            "display": "<b>Endeavour</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b85af0bc-4521-4fcd-a06c-cca7d2857859",
            "display": "<b><i>Apollo</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ff226779-c466-4c47-9dc2-8b01c7feea71",
            "display": "<b><i>Atlantis</i></b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/710d281b-7b0a-432b-bed4-6d157addbbfd",
            "display": "Sofia Stamm LLD, A Darkling Plain, University of Minnesota Press"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e186afac-cbff-4887-83a9-73ac5ee3630e",
      "date": "1960-11-25T00:00:00.000-05:00",
      "label": "25 November 1960 - Donnelly, Samuel",
      "recipients": [
        "Donnelly, Samuel"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2fb1e719-f8f5-4499-972e-86ddb6390ea6",
            "display": "<strong>theatre</strong> <i>Paths of Glory</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/60047171-bae9-43a1-8533-0ae9799d3031",
            "display": "<strong>_reading</strong> La La Land"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c4deda1c-a820-4c50-b531-f250b4e4ab11",
            "display": "<b><i>Frogstar World C</i></b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2a8e3894-be3c-4c2d-ab7a-549cea1e408a",
            "display": "Vroomfondel, <i>She's Always In My Hair</i>, Aesthetic squid cold-pressed franzen."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a4357030-4e61-475d-93c2-c41e27d5ef97",
            "display": "<b><i>Clouds of Witness</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/533fb9b7-8124-499c-b306-afb5abfecd12",
      "date": "1961-03-07T00:00:00.000-05:00",
      "label": "07 March 1961 - Turcotte, Jamal",
      "recipients": [
        "Turcotte, Jamal"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/27334981-3c16-4eb7-b765-c626f56cd804",
            "display": "<strong>theatre</strong> <i>Million Dollar Baby</i>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7fbb5343-40a5-4278-a014-bb631a5fc2fe",
            "display": "<b>Apollo</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/51216538-4fe8-4233-a707-4115c89e4e87",
            "display": "Refugio Cruickshank, <i>Tender Is the Night</i>, Virgin Publishing"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7f208a3a-3738-48da-85a2-44580a43f7ce",
            "display": "Billie Raynor, Wildfire at Midnight, Harlequin Enterprises Ltd"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/89b24d99-dab9-4a92-90fb-b0df1037ac70",
            "display": "Suzanne Rohan DC, Eyeless in Gaza, Velazquez Press"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/05aac9af-297a-4438-aff9-7ab173d1e2e5",
            "display": "Prostetnic Vogon Jeltz, Baltimore, Vinegar banh mi beard synth semiotics."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/758c228a-6176-41e1-8d5e-adf39dbe1e27",
            "display": "Hactar, <i>Let's Work</i>, Sriracha typewriter austin cliche semiotics slow-carb."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d4bea2f5-26d1-428e-b825-4a9694ac5109",
            "display": "Random Dent, <i>Take Me With U</i>, Quinoa brunch kitsch chartreuse roof."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9cdc2e48-f43a-43a7-8af6-8816a8f32b93",
      "date": "1962-09-28T00:00:00.000-04:00",
      "label": "28 September 1962 - Ritchie, Sonya",
      "recipients": [
        "Ritchie, Sonya"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3c32f67f-ff24-45fc-ae27-3bd0b97c550e",
            "display": "Colin the Security Robot, <i>I Wish U Heaven</i> [Jessica Wild]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/87136d6d-8387-422e-a143-9b6aa9bb1802",
            "display": "<b>Argabuthon</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9a12c4de-c162-4773-a744-f914f169ed1f",
            "display": "<b><i>Broop Kidron 13</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a4eb6c06-6866-45f2-9990-72e066b7594f",
            "display": "<b>Kakrafoon Kappa</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7881c8a3-f213-4256-9f38-7b4d748b8c3a",
            "display": "Slartibartfast, Eyeless in Gaza, Translated into polish by Tricia McMillan"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ea8f1987-1bc1-416d-97a7-3262deca23fb",
            "display": "Slartibartfast, <i>Now Sleeps the Crimson Petal</i>, Translated into hebrew by Hillman Hunter"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0dd96c3b-4846-4c44-ac50-bcce14e07b19",
            "display": "<b><i>The Last Temptation</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2c29bcef-bfbc-4994-ae43-8b6f7cf50993",
      "date": "1963-11-03T00:00:00.000-05:00",
      "label": "03 November 1963 - Ritchie, Ronda",
      "recipients": [
        "Ritchie, Ronda"
      ],
      "destinations": [
        "<i>Total Perspective Vortex</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/20038a2f-19ab-47ba-aff4-a047c6e8de8b",
            "display": "<b>Balistreri, Maryanna 1909-1991</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/154e2e02-6d69-44ad-b671-249f1a1f0238",
            "display": "<b>Atlantis</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4ff42a0d-c19a-4450-8101-83fc535563a6",
            "display": "Zarquon, Arms and the Man, Translated into norwegian by Paula Nancy Millstone Jennings"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6d05d38a-edd8-43df-a5be-0401b2670a89",
            "display": "Lunkwill and Fook, Where Angels Fear to Tread, Translated into dutch by Prostetnic Vogon Jeltz"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e5674399-e892-4ef8-8cc1-55d393f49c82",
            "display": "Lunkwill and Fook, Have His Carcase, Translated into hebrew by Bowerick Wowbagger"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/27b52167-2479-4016-8159-3fd4889d65e0",
            "display": "Emily Saunders, <i>Thunder</i>, 8-bit yuccie bespoke ethical photo booth sartorial put a bird on it."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3f5ede1a-2ab5-48f8-a66d-71bb9d5997e6",
            "display": "Charles Darwin, <i>319</i>, Roof <i>next level umami flexitarian meditation retro</i> street."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6b34e7eb-4fe0-4591-ab38-f1b7e9a6f485",
      "date": "1964-09-06T00:00:00.000-04:00",
      "label": "06 September 1964 - Wyman, Dwayne",
      "recipients": [
        "Wyman, Dwayne"
      ],
      "destinations": [
        "<i>Horsehead Nebula</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/db09902c-9870-48a6-aff4-71d576443e83",
            "display": "<b>Ratke, Javier 1918-1971</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e0a8dfad-efff-480c-8349-3a8e134f4cd7",
            "display": "<b>Hane, Armand 1925-1984</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f06bacf1-d4de-41fe-829a-debbbda309ca",
            "display": "<b>Gutkowski, Randell 1920-1994</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c554d564-8b3f-40fe-9b11-2cbed6598da1",
            "display": "<i>Haynes Manuals</i>, Agda Jean shorts fanny pack humblebrag pickled."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/fea3bc0a-555e-4451-8541-263828bb319b",
            "display": "Adela Koelpin, <i>Frequent Hearses</i>, Brill"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/165ba2f5-2de3-4b44-bc6d-44186d3bc226",
            "display": "Lunkwill and Fook, <i>Surprised by Joy</i>, Translated into spanish by The Allitnils"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/45b38b44-a928-4483-a388-d09646a49bd5",
            "display": "Mr. Prosser, <i>Such, Such Were the Joys</i>, Translated into dutch by Slartibartfast"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c7d56054-5638-4621-8d94-d1e3d6167ebb",
      "date": "1964-09-06T00:00:00.000-04:00",
      "label": "06 September 1964 - Yundt, Eddie",
      "recipients": [
        "Yundt, Eddie"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1529f50a-3e38-420f-bd4c-366683b2a74b",
            "display": "<strong>_reading</strong> <i>The Dark Knight</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cc055b1b-cf04-41d1-ace3-d0ff20ae6a03",
            "display": "<strong>radio_broadcast</strong> <i>Memento</i>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f3593eba-803b-4b2f-b95a-5762e5ebcd8c",
            "display": "<b><i>Apollo</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b6d4fbf1-0469-42f6-bfdd-9a777cd99634",
            "display": "<i>Martinus Nijhoff Publishers</i>, Eccentrica Gallumbits Tacos health deep v jean shorts hella."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/68839134-7a15-47bc-bd78-07e907ee259a",
            "display": "Lintilla, <i>Edna O'Brien</i>, Translated into norwegian by Eddie the Computer"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c4b3c975-e72c-47a7-822a-7fe81153d38e",
            "display": "Pizpot Gargravarr, Nectar in a Sieve, Translated into german by Bowerick Wowbagger"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 15,
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
          "doc_count": 3
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
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
          "doc_count": 1
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
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
          "key": "Gorczany Academy",
          "doc_count": 15
        },
        {
          "key": "Hudson College",
          "doc_count": 13
        },
        {
          "key": "West Lockman",
          "doc_count": 12
        },
        {
          "key": "Eastern Vermont University",
          "doc_count": 11
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 15,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 4
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 2
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 15,
    "links": {
      "self": "http://example.org/letters?page=1&repositories=Gorczany+Academy"
    }
  }
}</pre>
