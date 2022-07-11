# Letters API

## GET /letters?start_date=:YYYY-MM-DD - On or After Date

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

<pre>GET /letters?start_date=1960-08-31</pre>

#### Query Parameters

<pre>start_date: 1960-08-31</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1960-08-31&gt;; rel=&#39;self&#39;
X-Total-Count: 19
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fd67608255663943c5ae11809fb2c7db&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 270ef14c-c7c9-4e4e-8983-ca07d703716e
X-Runtime: 3.103630
Vary: Origin
Content-Length: 37225</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/43da007b-b861-49e6-9e6c-f7dac28cd51a",
      "date": "1960-08-31T00:00:00.000-04:00",
      "label": "31 August 1960 - Scary Terry",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/95046578-cc6c-4671-9663-291ee81c2bc8",
            "display": "<span>Colin the Security Robot (1924-1985). Hoodie ramps chia twee.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f93c66e5-8c0f-4b6e-9fcd-94198ae314fc",
            "display": "<span>Sector XXXZ5QZX.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a525c4aa-eb9f-4819-8cf3-45a88d6618b0",
            "display": "<span><i>Milliways</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7d5c0e37-e253-49f4-8802-a8987296115b",
            "display": "<span><i>Cathedral of Chalesm</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/88110298-d5aa-4d2d-8201-cdc254557f4f",
            "display": "<span>Atlantis (1927-02-22).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bb100711-3723-41b8-8b7f-fadf008892a4",
            "display": "<span>The Big Lebowski, <i>Butterscotch Horseman</i>, Arthur Philip Deodat Jean shorts cleanse meh bitters.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/abd7ca0b-c49b-43e0-bcb2-ff552de75ac9",
      "date": "1960-09-21T00:00:00.000-04:00",
      "label": "21 September 1960 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Ziggie's Den of Iniquity</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b6700ee1-3d90-441c-aa8b-76b7d8bcc667",
            "display": "<span>Prostetnic Vogon Jeltz, Black Sweat [Sahara Davenport].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/6f1411ed-afcf-4334-a77b-7e3449a05453",
            "display": "<span>Prostetnic Vogon Kwaltz, 200 Balloons [Raja].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/bfa5ae53-7a5e-41a6-9ea6-507c55893e19",
            "display": "<span><i>Poghril</i>, Brook Lynn Hytes.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/70de2c73-6720-45d3-9844-17b1dd4e2852",
            "display": "<span><i>Poghril</i>, Acid Betty.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/fc00dedb-f049-41ee-b57b-c12f6dc74161",
            "display": "<span>Café Lou.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cb3fbe05-eac6-44d8-8109-d276ffdfb1ec",
            "display": "<span><i>Zarss</i>.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/67b5898d-2a9b-4181-8b20-e3ab6e58ed38",
            "display": "<span>Karren Stark II, The Torment of Others, Carcanet Press.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/79f4f2b4-b64b-4ffb-a915-d03526ca7e92",
      "date": "1960-12-29T00:00:00.000-05:00",
      "label": "29 December 1960 - Scary Terry",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "Stavro Mueller Beta"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b21da6f7-527d-4c22-9b82-660dc420c4c1",
            "display": "<span>forage, <i>Taxi Driver</i>, Bergstromton, 13 August 1929.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/776cc8b3-d20c-41f0-a97e-f4a641b6d10c",
            "display": "<span>Oglaroon.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/56e14b5d-5654-4d4e-a926-362effbc5321",
            "display": "<span>Denmark.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c73003f5-fd32-42b9-9026-fd6179aa3342",
            "display": "<span><i>Horse and Groom</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/eebed44b-0068-445f-a3ad-82e9930073b4",
            "display": "<span><i>The Departed</i>, dir. Jackie Treehorn, Starship Titanic, Lake Kenthaven, 1937-06-12.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6c059632-dc0d-4530-9d9e-a20a3a00a4f3",
            "display": "<span><i>Fight Club</i>, dir. Bunny Lebowski, Golgafrinchan Ark Fleet Ship B, Lednermouth, 1972-06-19.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/23425a53-06ca-42b5-907e-eee8d6d90f62",
            "display": "<span>Life Is Beautiful, dir. Donny, Bistromath, East Carlamouth, 1938-11-26.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2cb750a3-b525-4e23-9b9d-a8c5f354971f",
            "display": "<span><i>Number the Stars</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9fa81ab8-8aa3-493e-b4b8-11050c3bd448",
            "display": "<span><i>Eyeless in Gaza</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1855f8a6-1f49-41d8-aad0-fb5d4b52f570",
      "date": "1961-01-06T00:00:00.000-05:00",
      "label": "06 January 1961 - <i>Otto Aquarius</i>",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "Barnard's Star"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1575a057-0a7a-4c4f-b80d-c3990ffe7822",
            "display": "<span>Pizpot Gargravarr, Take Me With U [Adore Delano].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b8bf5223-f6e6-4754-ba19-66badce2b74f",
            "display": "<span>Emily Saunders, <i>Strange Relationship</i> [Alyssa Edwards].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4234e1bc-cf49-4f26-aae3-59eab16edf8f",
            "display": "<span>Frogstar World C, Raja.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b1bd3e5d-32e4-46b8-85d0-a10a7f7ccb29",
            "display": "<span>Broop Kidron Thirteen, Cynthia Lee Fontaine.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a97e5395-1dd4-4ddd-9973-92669940e487",
            "display": "<span>Discovery (1971-07-28).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/444a4155-d190-4319-8f1d-61dc5b88955b",
            "display": "<span>Apollo (1934-01-29).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/47766a42-93e3-4686-b4de-04df3714417e",
            "display": "<span>Charles Darwin, A Monstrous Regiment of Women, Translated into Golgafrincham by Agda.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/18adb562-3f75-4a55-aa8c-b670bbad3513",
            "display": "<span>Paula Nancy Millstone Jennings, <i>A Swiftly Tilting Planet</i>, Translated into Lamuella by Slartibartfast.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5988ce78-66ce-4626-ba9c-9b63fcc581ef",
      "date": "1961-08-19T00:00:00.000-04:00",
      "label": "19 August 1961 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "<i>Pleiades system</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7d360b29-9949-45a4-b9a3-f59f7fa8a514",
            "display": "<span><i>Persona</i>, dir. The Big Lebowski, Krikkit One, North Mariann, 1946-11-15.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7653143b-d306-4851-9ad2-f1c405ea0adc",
            "display": "<span>Mickey Turcotte, Dance Dance Dance, City Lights Publishers.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ef6fbfc2-89f1-4b82-b184-f2f178a566db",
            "display": "<span>Lynette McGlynn PhD, The Daffodil Sky, Atlantic Books.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/71d1cf86-6731-4f3b-8553-51a920831d3b",
            "display": "<span>Charles Darwin, <i>Those Barren Leaves, Thrones, Dominations</i>, Translated into Allosimanius Syneca by Hactar.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b9a8775e-f4e3-48d8-ab29-1684d269444e",
            "display": "<span>The Needle's Eye.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1659cbd1-b396-44f9-b04e-ecaee9c8b306",
      "date": "1962-05-26T00:00:00.000-04:00",
      "label": "26 May 1962 - <i>Butterscotch Horseman</i>",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/153838db-529d-4a92-b5cb-b43292dccb00",
            "display": "<span>Frogstar World B, Jessica Wild.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b9c3ae73-54f5-43fe-9b25-0748c52753bb",
            "display": "<span><i>Nano</i>, Thorgy Thor.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/041c57a1-af6e-45b9-a162-0cabb4cc108c",
            "display": "<span>Dangrabad Beta, Jinkx Monsoon.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a8e72adf-9fa2-4788-be87-10a9a9851d9c",
            "display": "<span>Preliumtarn.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/13bbfefe-3596-418f-8f38-475a1cd8b620",
            "display": "<span><i>Fenchurch Street railway station</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4871fd9f-da7a-46f7-8534-eb21253616e1",
            "display": "<span>Slim's Throat Emporium.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7f3f0ffa-3b47-4265-9f23-5618921d3961",
            "display": "<span>Jesus Quintana, <i>Miracle Max</i>, Majikthise Brooklyn keffiyeh next level thundercats vhs tilde cronut ugh loko.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/f1d4384f-a6c7-481b-a60f-5f6d397b3448",
            "display": "<span>Reg Nullify, <i>Cover Her Face</i>, Translated into Hawalius by Ford Prefect.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c0816546-05d4-4c4b-9f3f-3f6176276f1f",
      "date": "1962-08-12T00:00:00.000-04:00",
      "label": "12 August 1962 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8219cd8f-912c-4d66-b729-c032e7022e17",
            "display": "<span>Hotblack Desiato, Breakfast Can Wait [Pandora Boxx].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f1cebc26-832f-498e-85ab-7fec6464ac7b",
            "display": "<span>The Big Bang Burger Bar.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d6849abe-20ed-4cef-88ca-c1635e8470d4",
            "display": "<span><i>Western Spiral Arm</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6943d80a-9805-4532-8e85-6a1fc485613a",
            "display": "<span><i>Into the Wild</i>, dir. The Dude, Krikkit One, South Celestina, 1958-04-03.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/fe775883-5872-410a-85a0-3a28076c5dc8",
            "display": "<span>The Big Lebowski, <i>Brandt</i>, Dan Streetmentioner Asymmetrical gluten-free retro microdosing hammock meggings lo-fi photo booth wes anderson.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b2f2dc99-90a1-48de-9f74-809602bac336",
            "display": "<span>Maude Lebowski, <i>Data</i>, Garkbit Mlkshk meggings echo fingerstache flexitarian raw denim fanny pack venmo pitchfork.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b249d6b8-39c9-4c11-92e5-fb8b1ec58013",
            "display": "<span>Karl Hungus, <i>Mario</i>, Galaxia Woonbeam Sustainable kitsch pabst lumbersexual muggle magic.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7506c183-5bba-4efa-8576-f09b3e10b7c4",
      "date": "1962-11-17T00:00:00.000-05:00",
      "label": "17 November 1962 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c2efed3a-0215-410a-ba1c-5cf94e2d526a",
            "display": "<span>street, Raging Bull, Simonishaven, 17 July 1938.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/fa78c488-e9ef-4ddb-ac8d-e32ba8033889",
            "display": "<span>butcher, Jurassic Park, Lake Salvador, 21 May 1952.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4306f119-eeaa-4ed2-adc9-21e32e562fe2",
            "display": "<span>Lintilla, <i>Another Lonely Christmas</i> [A'keria Chanel Davenport].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d9df0dff-dd54-432e-9527-d551d43aab1e",
            "display": "<span>Vroomfondel, <i>When 2 R In Love</i> [Trinity K Bonet].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a51d2905-2f25-41a6-83b0-c97eae1c0d77",
            "display": "<span>Miracle Max (1929-1977). Slow-carb <i>ennui poutine cleanse fingerstache</i> gentrify.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f2a8bac2-cb52-4998-97a9-fc8fb1d3613c",
            "display": "<span>Mario (1924-1993). Small <i>batch vinegar meh bicycle rights beard hashtag</i> 90's.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/020c3e52-a723-4686-9013-501ea385ae3c",
            "display": "<span>Mario (1916-1996). Williamsburg keffiyeh kickstarter pabst loko direct trade kitsch.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4c0a907a-b17b-4f75-9857-61e017f28e78",
            "display": "<span>Phouchg, What's Become of Waring, Translated into Eroticon VI by Magrathean sperm whale.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3eaf8e4c-fe4c-4417-be70-9b08ddc668bd",
            "display": "<span>Elvis, Vile Bodies, Translated into Flargathon by Rob McKenna.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4e65a67f-2435-49c7-ac80-41ffb74449b2",
      "date": "1963-01-17T00:00:00.000-05:00",
      "label": "17 January 1963 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/62cfbcaf-a3a1-47fd-8ca8-3667a8f5e590",
            "display": "<span>cardigan, <i>Paris, Texas</i>, Stephanestad, 17 May 1963.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/eaf8e264-3548-4a5e-81e9-116b9cb6abad",
            "display": "<span>Reg Nullify, <i>I Wanna Be Your Lover</i> [A'keria Chanel Davenport].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/a1c68dc8-ba39-4cf8-ba15-19214e42de69",
            "display": "<span>Arthur Dent, Delirious [Chad Michaels].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0dd06757-7433-4dbe-a265-9abc5fcee9f6",
            "display": "<span><i>Allosimanius Syneca</i>, Willam.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0a1e3006-592d-45e2-9390-e5831f37c150",
            "display": "<span>Mercury (1960-10-10).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c60f8083-6d88-4c4d-9dcd-c72cf75da7df",
            "display": "<span><i>Challenger</i> (1930-03-11).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/700d7092-1e79-4670-88e1-1710960dd7b4",
      "date": "1963-09-05T00:00:00.000-04:00",
      "label": "05 September 1963 - <i>Colin the Security Robot</i>",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0e9cbc56-577e-4bc8-be46-61f6f5663bb1",
            "display": "<span><i>Rupert</i>, Kim Chi.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/eb931e9e-45ec-4672-be1c-6bdfe51495a1",
            "display": "<span><i>Traal</i>, Pearl.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/649fac12-28fc-455a-add2-3751aa4da6af",
            "display": "<span>Horse and Groom.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a55ece98-e0e5-4b2e-a19f-9a03e541355e",
            "display": "<span>Cinema Paradiso, dir. Jackie Treehorn, Billion Year Bunker, Lake Brittanie, 1968-09-21.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/293a35f3-db47-4327-938d-fcd7b9c6e59f",
            "display": "<span><i>Blade Runner 2049</i>, dir. Brandt, Billion Year Bunker, Rodriguezview, 1952-02-06.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ba42b990-49dc-4355-987f-d586f4f96956",
            "display": "<span>Hillman Hunter, <i>I Sing the Body Electric</i>, Translated into Sqornshellous Zeta by Barry Manilow.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/56d083a4-f709-41f1-82ab-8aba3c6ced80",
      "date": "1963-10-21T00:00:00.000-04:00",
      "label": "21 October 1963 - Ned Gerblansky",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "<i>Ziggie's Den of Iniquity</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/97895444-8d0c-4331-aec5-4d6eb463ee64",
            "display": "<span>Oolon Colluphid, My Name Is Prince [Willam].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/61e659bd-1bea-4577-af39-f56070ae152f",
            "display": "<span>Rob McKenna, <i>Scandalous!</i> [Bob The Drag Queen].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/bf0b6638-f3dc-4ae9-916d-b3018ab9d79a",
            "display": "<span>Sqornshellous Zeta, Adore Delano.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/269d4b98-d239-49bc-8af4-08e808f028e6",
            "display": "<span>Jaglan Beta, Sahara Davenport.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/60811aad-820d-49f7-bcd2-cab93b0ad127",
            "display": "<span>Jackie Treehorn, Brandt, Gag Halfrunt Whatever narwhal humblebrag vegan asymmetrical cleanse wes anderson twee.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e6f46898-9c44-4a34-a036-465033ef29d6",
            "display": "<span>Jackie Treehorn, Homer Simpson, Hactar Umami farm-to-table post-ironic plaid franzen.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4a9694e7-1c9b-4565-a693-64d854723699",
            "display": "<span>Lunkwill and Fook, The Heart Is a Lonely Hunter, Translated into Bethselamin by Loonquawl and Phouchg.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c5e29f4b-428a-40f7-a272-6a1baf5e7d2e",
      "date": "1963-11-08T00:00:00.000-05:00",
      "label": "08 November 1963 - Brandt",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/fd7f37d8-a32f-40dc-bd46-a104eb83b24f",
            "display": "<span>sartorial, <i>Finding Nemo</i>, Ornton, 20 August 1951.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f4e69f2f-e698-4398-a852-58a98e1ab665",
            "display": "<span>wolf, <i>Blade Runner</i>, New Rossiebury, 11 December 1932.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/68facf2d-d196-4534-8869-07b28e87b2a9",
            "display": "<span><i>Otto Aquarius</i> (1902-1993). Blue bottle sriracha bushwick vinyl cleanse.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/007dd2e2-e0f8-4382-9897-eb420780daa7",
            "display": "<span>Data (1913-1974). Polaroid lumbersexual kogi celiac.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1d1db962-6ef3-4b9e-b6b1-a400e6ec0bfc",
            "display": "<span>Kakrafoon Kappa.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/665412cb-f15e-4794-b346-d704d67354a0",
            "display": "<span><i>Stavro Mueller Beta</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/512c1e4f-20e5-4954-a538-7a1f87563255",
            "display": "<span>Xaxis.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b46a906f-e893-4df2-933a-d6e2191fe582",
            "display": "<span>Donny, Scary Terry, Trillian 8-bit cray 3 wolf moon shabby chic cardigan quinoa kinfolk cred.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/894964ce-aa95-4316-97c8-f7d1b701780a",
            "display": "<span>Bunny Lebowski, <i>Otto Aquarius</i>, Effrafax of Wug Paleo seitan brunch post-ironic pinterest portland hella.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c0d7f39f-2076-41d5-b876-455e209ef5d3",
      "date": "1964-01-08T00:00:00.000-05:00",
      "label": "08 January 1964 - Butterscotch Horseman",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/53020857-8555-45ee-9a73-b3491de8facc",
            "display": "<span>hoodie, <i>V for Vendetta</i>, Stacymouth, 27 May 1923.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/64054651-8863-48a8-a558-ecd1d43180ee",
            "display": "<span>Dwayne Schaefer, <i>Everything is Illuminated</i>, Jarrolds Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7229079b-8f59-45c6-b4a7-842b4090dc96",
            "display": "<span>Laveta Schoen, An Evil Cradling, Bella Books.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/14b874a7-6395-43a6-846f-208b7a9d05d5",
            "display": "<span>Lintilla, <i>Quo Vadis</i>, Translated into Kria by Zarniwoop.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d2ccfbc3-59a4-4ef2-8fb0-cec66c810175",
            "display": "<span>Magrathean sperm whale, <i>Consider Phlebas</i>, Translated into Broop Kidron 13 by Deep Thought.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c814888f-34ec-4d01-95c7-41facf462b4d",
            "display": "<span>Mella, The Lathe of Heaven, Translated into Brontitall by Agrajag.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4fe060ba-adfb-4845-b27b-8c0f24e49e73",
            "display": "<span>Oolon Colluphid, <i>Peach</i>, Freegan <i>ramps truffaut twee meggings pabst meditation blue</i> bottle.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0c7bdc93-51a8-4555-a478-6ccbe20ebc75",
      "date": "1964-06-30T00:00:00.000-04:00",
      "label": "30 June 1964 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c6a8f800-0bd0-470c-abf9-1fa45ee5f290",
            "display": "<span>Hactar, Play In The Sunshine [Coco Montrese].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ccbe3617-49cc-4e0b-a327-918da6285c88",
            "display": "<span>Garkbit, Tamborine [Aquaria].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/91c4869b-b601-469d-8895-8f01c6d46c6b",
            "display": "<span>Deep Thought, <i>Anotherloverholenyohead</i> [Yara Sofia].</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/96d9c8ef-4f2e-4ba6-919d-605bcdad40e0",
            "display": "<span><i>Discovery</i> (1970-03-04).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/637ab766-175c-47de-afb2-a0173a471c23",
            "display": "<span>Endeavour (1925-07-02).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/fb6827e0-91b1-4e8a-986b-10a0bd0b6a1b",
            "display": "<span><i>Apollo</i> (1971-10-25).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/798ed0ef-0526-4703-8ec3-a8d9fed9d69c",
            "display": "<span>The Big Lebowski, <i>Homer Simpson</i>, Hactar Meggings synth freegan wolf direct trade salvia.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/302556ae-29e3-4903-b25c-d10fae7e3485",
            "display": "<span>Jesus Quintana, <i>Butterscotch Horseman</i>, Eccentrica Gallumbits Master pickled brunch twee vegan.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d741267a-bd32-4fcf-8459-9e12f5f2c69c",
            "display": "<span>Jesus Quintana, <i>Scary Terry</i>, Elvis Pabst occupy yolo master letterpress dreamcatcher bicycle rights cred.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1d7dc29f-0696-4b3f-ba89-b3436ea2d8b1",
            "display": "<span>Roman Bartoletti, A Handful of Dust, Mainstream Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ba73cf22-bc4e-4fbf-901a-e89d4ab52b2c",
            "display": "<span>Philip Friesen, <i>Dying of the Light</i>, Schocken Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d53695b2-07f6-40a2-b745-31c1bee2fd08",
            "display": "<span>Alex Koch, From Here to Eternity, Reed Elsevier.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c679771c-5a9c-4e61-a51f-72f5abbb67cf",
      "date": "1965-02-13T00:00:00.000-05:00",
      "label": "13 February 1965 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/550c2557-ff49-4cd1-a8a5-d7357cc9ecfb",
            "display": "<span>Grunthos the Flatulent, <i>Sometimes It Snows In April</i> [Gia Gunn].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7656e510-3bbf-4904-9809-c567b33c8659",
            "display": "<span>Hillman Hunter, U Got The Look [Alaska].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ba779957-b8e6-45c2-96e4-0718129ae55e",
            "display": "<span>Hotblack Desiato's bodyguard, <i>Baby I'm A Star</i> [Jinkx Monsoon].</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4035870b-b599-42d4-91aa-965d4f6afbc0",
            "display": "<span>Deshawn Wintheiser, <i>Now Sleeps the Crimson Petal</i>, Nonesuch Press.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/53899e77-5cce-4060-a379-618353adb3ad",
            "display": "<span>Charles Darwin, Rosemary Sutcliff, Translated into Earth by Agrajag.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/18eebc5e-6c48-449e-a559-3664e8546452",
            "display": "<span>Gag Halfrunt, <i>It's Gonna Be A Beautiful Night</i>, Fanny pack cliche polaroid stumptown mlkshk master seitan farm-to-table ethical.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6bccdfdd-c41d-45fb-ad8a-93b7b8344beb",
      "date": "1965-04-28T00:00:00.000-04:00",
      "label": "28 April 1965 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ff4b68d8-84d5-4d81-b4e1-f30e1147cad5",
            "display": "<span>franzen, <i>The Intouchables</i>, Vanbury, 12 April 1960.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3b0d193e-f1f1-48e2-a7de-0af1679ffa59",
            "display": "<span><i>Brontitall</i>, Tyra Sanchez.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8a58d071-ff8e-4793-b569-f56d1d739640",
            "display": "<span><i>Rupert</i>, BenDeLaCreme.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/65a7ac23-475a-4eb3-860a-d2f6ecc2d44b",
            "display": "<span>Hawalius, Monet X Change.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/537e9667-b715-4e7d-bf0c-659927e63ab9",
            "display": "<span><i>Frogstar system</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7d94ad56-d0fa-4b2a-8b9b-ce33ecd4b488",
            "display": "<span><i>Zarss</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/50581bf2-6ac8-48d0-a8d4-5950b1f681ed",
            "display": "<span>Stavro Mueller Beta.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5e9bf6b9-8697-4f7a-91fd-df7faf251b06",
            "display": "<span>The Big Lebowski, dir. Bunny Lebowski, Billion Year Bunker, Calistabury, 1932-10-29.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f81fabec-7620-4747-bcd1-36e1a346b985",
            "display": "<span>Hacksaw Ridge, dir. Brandt, Krikkit One, Brainberg, 1934-09-17.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/df8dc236-03ab-47f1-aeed-64a72351805e",
            "display": "<span>Indiana Jones and the Last Crusade, dir. Walter Sobchak, Heart of Gold, Lake Donnport, 1945-07-14.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a88c199-79e6-457c-a678-6d0157827a9f",
      "date": "1965-07-28T00:00:00.000-04:00",
      "label": "28 July 1965 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Ziggie's Den of Iniquity</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/cd4a8f2f-651f-4079-98b2-494b7e8417f3",
            "display": "<span>NowWhat, Nina Bonina Brown.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c03306fc-9507-4e55-a3ef-06d9c5fad7e8",
            "display": "<span>Horsehead Nebula.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/eb555a57-f16b-40a5-8714-bdbb38f2482b",
            "display": "<span>Amos Nicolas, O Jerusalem!, UCL Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1f82850e-cbb6-4f92-baf7-8ab083f68b2a",
            "display": "<span>Wally Schultz, The Golden Apples of the Sun, Hamish Hamilton.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2182dca0-b242-4aa7-ac8f-eefb1b4f01a6",
            "display": "<span>Evalyn Armstrong, <i>Stranger in a Strange Land</i>, Atlantic Books.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f7c8348c-5470-4942-9cbe-a4b00d739b67",
            "display": "<span><i>A Confederacy of Dunces</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/0382589e-6894-4089-aaa6-409e3ab733a1",
            "display": "<span><i>The Monkey's Raincoat</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/386638ed-be63-4a7d-83ed-1f35743a89e9",
            "display": "<span><i>Little Hands Clapping</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/42e11091-5727-4573-bdd7-96348ae25f3e",
      "date": "1965-09-27T00:00:00.000-04:00",
      "label": "27 September 1965 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Ysllodins</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/fee46347-51f0-4d6e-b95a-d66cdec6dacb",
            "display": "<span>mlkshk, <i>Vertigo</i>, Glenmouth, 08 June 1963.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ef4d39d4-499c-4304-83df-8c649a1b0d34",
            "display": "<span>Oglaroon.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/8c8f00ac-0c05-4087-9d68-f6ad3bf340f3",
            "display": "<span><i>Bistro Illegal</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f7360eef-36d2-4cba-92ba-2ad8861f19f9",
            "display": "<span>Madagascar.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/26753ec3-5375-4291-a407-ab34d49d015a",
            "display": "<span>Woodrow Padberg, <i>A Scanner Darkly</i>, Tachyon Publications.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2b5f70f2-f338-4ead-8741-152aa795865f",
            "display": "<span>Valorie Parker IV, <i>In a Dry Season</i>, Mandrake of Oxford.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fbb56512-58bf-4826-8457-02a300158d90",
            "display": "<span>Marvin, <i>Sexy MF</i>, Tumblr lumbersexual mustache 3 wolf moon microdosing.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/826d2a3a-7742-446c-b6ca-1dd53bdf20f7",
            "display": "<span>Eccentrica Gallumbits, Still Waiting, Fashion <i>axe kale chips poutine sriracha dreamcatcher narwhal</i> mumblecore.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/216e77f3-2ff4-4cba-9043-de5316a56d57",
      "date": "1965-09-29T00:00:00.000-04:00",
      "label": "29 September 1965 - <i>Colin the Security Robot</i>",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "Café Lou"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ff74d8f5-e2be-40e3-9ad2-94bb0fc27019",
            "display": "<span>Happi-Werld III, Thorgy Thor.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/1e444a7b-4c9d-4aae-8d02-75a0b0af7619",
            "display": "<span><i>Rupert</i>, Brook Lynn Hytes.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e1a7abdb-13d1-4902-94be-2e112bb23664",
            "display": "<span><i>Dog Day Afternoon</i>, dir. Walter Sobchak, Heart of Gold, North Noah, 1967-04-22.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4c411d50-e4e4-4a7f-8ccb-5a21e4dfa335",
            "display": "<span><i>Monty Python and the Holy Grail</i>, dir. The Dude, Tanngrisnir, Arlinehaven, 1938-11-23.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/595d9bb1-3ded-49bb-9b3a-d567418a57e2",
            "display": "<span>The Big Lebowski, <i>Leia Organa</i>, Zarquon Raw denim quinoa fixie before they sold out crucifix.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/784186de-2d3b-4874-b4fa-9efcd5000ee9",
            "display": "<span>The Dude, <i>Butterscotch Horseman</i>, Zaphod Beeblebrox Pork belly everyday typewriter crucifix.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/311ec343-43f3-4aa8-be07-5aef2009ca7d",
            "display": "<span>Roosta, <i>Jacob Have I Loved</i>, Translated into Lamuella by Emily Saunders.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 19,
      "buckets": [
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 5
        }
      ]
    },
    "repositories": {
      "doc_count": 19,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "West Illinois College",
          "doc_count": 12
        },
        {
          "key": "Southern Jacobson University",
          "doc_count": 10
        },
        {
          "key": "Brown University",
          "doc_count": 9
        },
        {
          "key": "The Skiles College",
          "doc_count": 3
        }
      ]
    },
    "language": {
      "doc_count": 19,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 8
        },
        {
          "key": "english",
          "doc_count": 5
        },
        {
          "key": "german",
          "doc_count": 3
        },
        {
          "key": "italian",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 19,
    "links": {
      "self": "http://example.org/letters?page=1&start_date=1960-08-31"
    }
  }
}</pre>
