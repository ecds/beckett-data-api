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

<pre>GET /letters?start_date=1962-06-17</pre>

#### Query Parameters

<pre>start_date: 1962-06-17</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1962-06-17&gt;; rel=&#39;self&#39;
X-Total-Count: 14
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b8be03ab3ec0238cd28fc4e2969420e0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: cc121713-3d69-4ef7-99a2-8a6e2b3e3874
X-Runtime: 2.686723
Vary: Origin
Content-Length: 25244</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/b47234aa-1579-49e7-9934-b2ea6d7ee95a",
      "date": "1962-06-17T00:00:00.000-04:00",
      "label": "17 June 1962 - Wehner, Francesco",
      "recipients": [
        "Wehner, Francesco"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3f255666-9581-448d-8467-1c52c882757e",
            "display": "<b>Jaglan Beta</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e9ce8698-5a77-4885-b5c4-d2cb06c27aa7",
            "display": "<b><i>Earth</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f4befea1-3a8a-40e0-9113-1d2e2b019b11",
            "display": "<b>Eroticon VI</b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/85943cdf-1985-4ee4-8901-774b0f83d935",
            "display": "<b>Ferry, Leo 1908-1980</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/92b78348-af7a-45ce-a320-4efb24ff3486",
            "display": "<b>Ritchie, Agueda 1917-1997</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c5ad47e5-4a12-4c70-ab02-32edc9ae2289",
            "display": "<b>Hauck, Erin 1928-1980</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/056bfdf5-f341-42f2-a124-cadef75f51e4",
            "display": "<i>Taxi Driver</i>, dir. Maude Lebowski, Starship Titanic, Port Cecil, 1960-10-08"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/13d102e7-1e3d-4a55-82ef-93cc3b00ffc4",
            "display": "<i>Nuovo Cinema Paradiso</i>, dir. The Big Lebowski, Heart of Gold, Rogerborough, 1948-10-12"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/28223ba7-e102-4680-86e4-516a1f0f6525",
            "display": "Dean Kerluke III, <i>A Time to Kill</i>, George Newnes"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/5d37b943-4e57-4e65-a7d1-1a9f20dfc0da",
            "display": "Tommie Johnson, Tiger! Tiger!, Viking Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/6fe8fd66-2656-47ac-979c-9e3aec02ddaa",
            "display": "Diamond Runte Ret., In Death Ground, Reed Elsevier"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4b9e84fb-539b-4184-a2de-8d6e7017cec3",
      "date": "1962-06-24T00:00:00.000-04:00",
      "label": "24 June 1962 - Murray, Billy",
      "recipients": [
        "Murray, Billy"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/673f62a5-881d-4f9b-8905-9df28c8bcc04",
            "display": "<b>Allosimanius Syneca</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/bf557484-00c4-4c51-86d3-b397735bb268",
            "display": "<b><i>Burphon XII</i></b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3cf997ab-0f9d-482d-93b2-617c5729be8e",
            "display": "<b><i>Oglaroon</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a6bc0170-798c-4519-b6de-b4b62ff3974b",
            "display": "<b>Ysllodins</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ff1447ef-22d0-4119-bb94-ce7fba853b8f",
            "display": "Hotblack Desiato's bodyguard, His Dark Materials, Translated into danish by Paula Nancy Millstone Jennings"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/43373420-5433-44a1-b5d7-87b6190d3e8a",
            "display": "Majikthise, <i>Paisley Park</i>, Plaid pitchfork hashtag stumptown."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a2540cc-7fca-4a2d-86ec-aa81175a504c",
      "date": "1963-01-23T00:00:00.000-05:00",
      "label": "23 January 1963 - Runolfsson, Cindi",
      "recipients": [
        "Runolfsson, Cindi"
      ],
      "destinations": [
        "<i>Ziggie's Den of Iniquity</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0186c2a0-e9b7-48c5-a917-a485f9e7a4d9",
            "display": "<b>Bartledan</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/486fdd0c-8bd3-4562-8d2f-456c841aa98c",
            "display": "<b><i>Han Wavel</i></b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b45dbfc3-2940-48af-9a91-f48d32d8ff5a",
            "display": "<b>Purdy, Andrew 1923-1977</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e19d5377-0a45-4754-893e-d961fe20777c",
            "display": "<b><i>Challenger</i></b>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/62d604eb-77b7-4406-892f-aebd31214268",
            "display": "<b>Blithe Spirit</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ae29cd82-f2d8-4f90-bcd6-e6a34b88746c",
      "date": "1963-02-26T00:00:00.000-05:00",
      "label": "26 February 1963 - Quitzon, Titus",
      "recipients": [
        "Quitzon, Titus"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/51e4ae95-691e-42fe-a76f-708ca457d705",
            "display": "<strong>_reading</strong> Star Wars: Episode VII - The Force Awakens"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/b7526192-e4ca-4058-9d85-11bd1991ad47",
            "display": "<b><i>Preliumtarn</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f79725e0-a3a8-4e4a-8d0c-9570ae512555",
            "display": "<b>Stavromula Beta</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c0bf2fd1-6107-4d3e-a0ea-4b6ae1556c98",
            "display": "Miss Tracy Tillman, Tirra Lirra by the River, Churchill Livingstone"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e782de06-3f05-4cdb-97f5-16db2473bd6a",
            "display": "Avis Cronin LLD, <i>Mr Standfast</i>, Chick Publications"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ff78435d-88b2-44bd-91e8-bb02a3063595",
            "display": "Prof. Leonardo Mueller, <i>Eyeless in Gaza</i>, Haynes Manuals"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/13580348-2c8e-44c9-bbf0-21b5e11d9cb2",
            "display": "Mella, As I Lay Dying, Translated into polish by Pasta Fasta"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b2ee17dc-33ac-4e70-b047-36ba22108dd1",
      "date": "1963-03-30T00:00:00.000-05:00",
      "label": "30 March 1963 - Mills, Opal",
      "recipients": [
        "Mills, Opal"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0e2a4b3e-752d-4a96-ba55-31f6378b2346",
            "display": "<strong>radio_broadcast</strong> The Bourne Ultimatum"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4af7b1e2-1897-4e2e-9a61-7b2784d84574",
            "display": "<strong>theatre</strong> <i>The Matrix</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/52df0f1f-9107-4143-b5fa-4c953e153c18",
            "display": "<strong>radio_broadcast</strong> <i>Jaws</i>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0d201e22-c8ca-4f9d-83cb-b8e651979e6d",
            "display": "<b>Apollo</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6ef40f54-8f76-416a-8304-653ed3b7e2b3",
            "display": "Schocken Books, Zaphod Beeblebrox Keffiyeh shoreditch normcore meggings etsy iphone letterpress narwhal."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/9f2fe5f2-233f-4325-a97d-13a735b5123c",
            "display": "<b><i>A Farewell to Arms</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4034f077-f370-43b3-8243-3e5653794d16",
      "date": "1963-06-08T00:00:00.000-04:00",
      "label": "08 June 1963 - Kautzer, Zack",
      "recipients": [
        "Kautzer, Zack"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/27386782-bbe0-4dfc-b3c1-4f5614c70b8e",
            "display": "Agrajag, When You Were Mine [Ra'jah O'Hara]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/28805dd9-f700-410b-b764-8d8cfa32ee2b",
            "display": "Humma Kavula, <i>Baby I'm A Star</i> [Silky Nutmeg Ganache]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bf1cb0df-b265-4718-8782-7b9c6ef5bb2e",
            "display": "Barry Manilow, The Greatest Romance Ever Sold [Aja]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2b67687a-a842-45a1-bf29-ac515656a99d",
            "display": "<b><i>Han Wavel</i></b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/04d21bfd-7f3d-4745-a757-88fb891b3317",
            "display": "<b>Treutel, Jason 1913-1989</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/850d7fa6-8016-4ade-abe2-e07e9ff36de6",
            "display": "<b>Green, Quinn 1917-1993</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e512362b-429c-47b8-8ce5-62ea2e42f500",
            "display": "<b>Grady, Alysia 1923-1980</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/684a9f9a-3832-4bf3-952d-a8d567ddb4b0",
            "display": "<b><i>The Big Bang Burger Bar</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c2fde42c-9a39-45c1-840c-eb9b65cd7c25",
            "display": "<b><i>Lord's Cricket Ground</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/434fbd7e-b387-494b-b80f-3b0a13b113e2",
      "date": "1963-07-05T00:00:00.000-04:00",
      "label": "05 July 1963 - Collier, Claudia",
      "recipients": [
        "Collier, Claudia"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b0ba50fb-24e0-4c37-b99c-9c6c5e33d514",
            "display": "<b>Kshlerin, Irvin 1912-1997</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c6045826-24ee-45e4-9e5b-f3d87dfdeec7",
            "display": "<b>Anderson, Estell 1905-1986</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/db8862e3-35e0-4c1c-a246-65d86599fdf3",
            "display": "<b>Reichel, Waldo 1929-1973</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f2bc8ad8-0c79-4923-9d86-3aab4666eadb",
            "display": "<i>Metropolis</i>, dir. Bunny Lebowski, Heart of Gold, New Lyman, 1963-07-09"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/11fb328a-d111-4167-b4b1-9b4344f862a0",
            "display": "Dan Streetmentioner, Tamborine, Flexitarian yuccie mlkshk park."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4b3fd9c6-04c9-44f0-81dd-9b7322442ec3",
            "display": "Trillian, Guitar, Ugh jean shorts vinegar disrupt cardigan mixtape keytar actually thundercats."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/84688c60-2974-47d8-988e-4a1a4bba57ff",
            "display": "<b><i>Of Human Bondage</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/282e50ab-2653-4f4d-a0ab-4f9508bb4175",
      "date": "1963-11-11T00:00:00.000-05:00",
      "label": "11 November 1963 - Feeney, Jerrell",
      "recipients": [
        "Feeney, Jerrell"
      ],
      "destinations": [
        "Lord's Cricket Ground"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/c877f951-1552-4588-b6e4-c267cbd723cc",
            "display": "<b>Enterprise</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/fc0567ed-0556-4fa3-9249-23c236191196",
            "display": "<b>Discovery</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/288b0eab-e896-475c-bc40-643306b4871a",
            "display": "<i>Applewood Books</i>, Dan Streetmentioner Park chia selvage hoodie messenger bag celiac echo."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3827055a-14dc-476c-850f-95b6197f4a28",
            "display": "Jolyn Terry, <i>The Wind's Twelve Quarters</i>, Taunton Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b6428c8f-7007-43ed-b650-6b90851071c1",
            "display": "Mrs. Minh Johns, <i>Sleep the Brave</i>, Book League of America"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/550ef6f6-d9e6-4bf8-9256-02b21f982890",
            "display": "<b><i>To Say Nothing of the Dog</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/22a512d6-8416-4ffb-8400-47de83d9670c",
      "date": "1964-02-07T00:00:00.000-05:00",
      "label": "07 February 1964 - Kerluke, Nestor",
      "recipients": [
        "Kerluke, Nestor"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b0126224-5729-4130-a684-99bc86b5f1cd",
            "display": "<b>Grimes, Otis 1919-1994</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ba2e8e80-f0b6-46fb-9ed7-44a4068e9052",
            "display": "<b>Lindgren, Yuri 1929-1970</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cd9ece44-29d9-4cda-922c-226496838090",
            "display": "<b>Fahey, Dorie 1904-1975</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a59bac2f-2e91-4df3-8247-ca14e3816e89",
            "display": "<b>Enterprise</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4aa04fdf-ed8c-4127-847b-1131da581b69",
            "display": "FabJob, Pizpot Gargravarr Crucifix tacos photo booth banjo retro."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1e3649a2-ffc9-4ac6-92ab-0a378420bf78",
            "display": "Magrathean sperm whale, <i>Terrible Swift Sword</i>, Translated into gaelic by Questular Rontok"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/23ac9f8d-d674-43ec-8056-8fbdf88edac5",
            "display": "Rob McKenna, <i>The World, the Flesh and the Devil</i>, Translated into french_and_english by Tricia McMillan"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/648e518c-77b0-438d-bded-d9b273be26c9",
            "display": "Mr. Prosser, <i>The Doors of Perception</i>, Translated into serbo_croatian by Pizpot Gargravarr"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e54f6632-9562-462a-8a00-db6e11d47b15",
      "date": "1964-02-25T00:00:00.000-05:00",
      "label": "25 February 1964 - Kozey, Yuonne",
      "recipients": [
        "Kozey, Yuonne"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/267e76be-bc09-4809-9d2b-9f63445a0392",
            "display": "<b><i>Santraginus V</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/3fa61cda-0727-4c28-a9c9-0044760eb82a",
            "display": "<b><i>Broop Kidron Thirteen</i></b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1fb21cbb-18fe-4d4c-adb6-9520d400b439",
            "display": "<b><i>Enterprise</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/45b4565a-8be1-43fe-884b-ee7c96f0f561",
            "display": "<b>Enterprise</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/364790ed-b19e-4925-b666-c654ba045e67",
            "display": "Ellyn Price, <i>The Other Side of Silence</i>, Mascot Books"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/28d5d95e-6418-4ff3-83b4-6e8c9fd8881a",
            "display": "Ford Prefect, <i>For a Breath I Tarry</i>, Translated into french_and_english by Magrathean sperm whale"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/aa504027-9fea-4f60-8332-d7124872d841",
            "display": "Elvis, The Glory and the Dream, Translated into irish_gaelic by Trin Tragula"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f96d8651-6b46-4a23-b93b-0260af8621fe",
            "display": "Trillian, <i>Stranger in a Strange Land</i>, Translated into portuguese by Mr. Prosser"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/afed6604-cf34-446d-b144-304fad430438",
      "date": "1964-04-07T00:00:00.000-05:00",
      "label": "07 April 1964 - McLaughlin, Maryrose",
      "recipients": [
        "McLaughlin, Maryrose"
      ],
      "destinations": [
        "<i>Milliways</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4aa10857-c43b-4eef-9bc6-af882d8980d4",
            "display": "<strong>_reading</strong> <i>Donnie Darko</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/61be9d9b-3c26-45c7-acd5-e40c76dc63f0",
            "display": "<strong>_reading</strong> The Kid"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ff611d61-a199-4edb-a0d7-48166b2d6278",
            "display": "<strong>rehearsal</strong> <i>Cinema Paradiso</i>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c9218e76-021e-4619-80df-7abd3674facf",
            "display": "<b><i>Xaxis</i></b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/360e4144-17ca-46d0-96a9-5edf1a8daeb7",
            "display": "<b>West, Felix 1903-1988</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/60c32cd0-7b52-4940-b59f-23460a530f1f",
            "display": "<b>Lang, Antonette 1927-1971</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/7a9099ba-70f2-41c2-a411-e41a3e5d9807",
            "display": "<b>Prosacco, Delois 1929-1974</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/004bbe1f-3f64-4391-ae23-3035cd868140",
            "display": "<b>Atlantis</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/84857a1e-c8f9-4408-938d-0a9f0d716768",
            "display": "<b>Apollo</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/daf3a5f5-3728-454b-900c-0dae902784e1",
            "display": "<b>Orion</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e3165356-e222-4768-9875-6352f13d0b16",
      "date": "1964-04-13T00:00:00.000-05:00",
      "label": "13 April 1964 - Crooks, Deeann",
      "recipients": [
        "Crooks, Deeann"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/401201d9-b4dc-4e47-9908-310305ad5360",
            "display": "Hactar, Nothing Compares 2 U [Blair St. Clair]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0a94c9db-c9ea-448b-99ba-69d260132dcc",
            "display": "<b>Han Dold City</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4e63e2ee-ca1e-46ce-84af-f4057d8e6b4e",
            "display": "<b><i>North West Ripple</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cc42ed9c-c2b4-4628-8c72-e51320cafbc4",
            "display": "<b><i>Sector ZZ9 Plural Z Alpha</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0e977238-27e4-42ec-9025-75fad766e119",
            "display": "Gladiator, dir. Bunny Lebowski, Heart of Gold, Durganberg, 1958-08-17"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/429228a2-a82f-44ce-96aa-49b585c821c4",
            "display": "<i>Saving Private Ryan</i>, dir. Brandt, Starship Titanic, Koeppmouth, 1961-12-18"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8e650c11-d5fd-4b9c-941e-24641d3607f4",
            "display": "<i>Goodfellas</i>, dir. The Big Lebowski, Krikkit One, Beattymouth, 1960-09-07"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/278934c7-0127-401f-9114-65cd41176f03",
            "display": "Marvin, <i>Let's Work</i>, +1 <i>artisan keytar thundercats</i> sustainable."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e041cefa-ebc9-4775-9d8e-033abdb5ddde",
            "display": "The Allitnils, <i>Do It All Night</i>, Disrupt <i>vice mustache retro typewriter artisan tilde wes anderson</i> kogi."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1e26e021-f62e-4d4d-882f-43ec849376be",
      "date": "1964-10-29T00:00:00.000-05:00",
      "label": "29 October 1964 - Feeney, Kalyn",
      "recipients": [
        "Feeney, Kalyn"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7e32a937-d4e4-44d1-85fb-0616fe9109e0",
            "display": "Spotlight, dir. Bunny Lebowski, Golgafrinchan Ark Fleet Ship B, Chaunceyborough, 1971-04-07"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8fa52151-114c-4a18-a705-200fe928f9b8",
            "display": "<i>The Prestige</i>, dir. The Dude, Starship Titanic, Coleenton, 1943-06-07"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/d8e13d65-f0e7-490a-97f6-5540535660ef",
            "display": "<i>Braveheart</i>, dir. Bunny Lebowski, Vogon Constructor Fleet, Mitchellburgh, 1937-01-12"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/01f28607-730a-4500-9f62-8f681b9237a8",
            "display": "Tarpaulin Sky Press, Loonquawl Plaid sriracha scenester williamsburg narwhal tacos typewriter tilde disrupt."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4cf424d2-cbf0-441d-80dc-aa3d6f1b3ff5",
            "display": "<i>McGraw-Hill Education</i>, Lintilla Offal pitchfork shoreditch ugh keffiyeh kale chips."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ea8822f1-aa8d-49b4-b8b1-5110187a9e51",
            "display": "Blackwell Publishing, Marvin Kitsch art party offal venmo yuccie microdosing chicharrones."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2aacae37-ca0d-4636-bce0-9d42eaf60a0c",
            "display": "Kasha Hahn, The Widening Gyre, NavPress"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/435a351b-34b4-4151-a866-604c7b8f690b",
            "display": "Gag Halfrunt, <i>When Doves Cry</i>, Cliche lomo leggings yr."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6d0dfa99-8e7c-49a6-b01b-f4758a4c269d",
            "display": "Agrajag, <i>Girls & Boys</i>, Yolo literally mumblecore distillery plaid banh mi kickstarter five dollar toast."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fba618ad-6ff9-486e-9c74-d700191afebc",
            "display": "Hotblack Desiato, <i>I Wish U Heaven</i>, Chambray <i>plaid ramps kombucha next level venmo</i> pitchfork."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6babc8ce-6804-4d6a-badb-00ecdfc95072",
      "date": "1965-06-16T00:00:00.000-04:00",
      "label": "16 June 1965 - Ondricka, Herschel",
      "recipients": [
        "Ondricka, Herschel"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d4f7403b-8ce4-40a6-935b-0ae7d6aaf3f9",
            "display": "Reg Nullify, Kiss [Trinity K Bonet]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/589e73d5-3bd7-4a6b-8a23-f7a0c32a3323",
            "display": "<b><i>Croydon</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fbc7c4b1-32ce-4953-bb92-81521184b42c",
            "display": "<b>Belgium</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/326b2923-da8f-46bd-8644-dbcf166e2fb1",
            "display": "Hay House, Agda Muggle magic locavore crucifix bitters."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/7cfc0879-49b9-442c-b938-089105cf64c6",
            "display": "Papadakis Publisher, Trillian Loko butcher distillery marfa 90's."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9d6773b2-9deb-46e0-a00d-c1424acac025",
            "display": "Harvard University Press, Max Quordlepleen Plaid brooklyn roof 90's franzen cleanse."
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/773d4021-1162-4066-8674-60d5dcc23b2b",
            "display": "Grunthos the Flatulent, I Would Die 4 U, Yuccie <i>godard master crucifix hoodie shabby chic</i> pickled."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/883d4289-8844-4849-be19-2334b1729bf0",
            "display": "Eccentrica Gallumbits, Darling Nikki, Marfa <i>direct trade irony occupy bespoke tote bag deep v poutine</i> taxidermy."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b2cf6e42-c8c8-44be-a3c5-2cf460d26c0e",
            "display": "Loonquawl, <i>Paisley Park</i>, Yolo <i>umami yuccie cronut</i> paleo."
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 14,
      "buckets": [
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 6
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 14,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "East Leannon",
          "doc_count": 8
        },
        {
          "key": "North Gislason Institute",
          "doc_count": 7
        },
        {
          "key": "East Friesen College",
          "doc_count": 5
        },
        {
          "key": "North Kessler",
          "doc_count": 3
        }
      ]
    },
    "language": {
      "doc_count": 14,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 6
        },
        {
          "key": "english",
          "doc_count": 1
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
      "self": "http://example.org/letters?page=1&start_date=1962-06-17"
    }
  }
}</pre>
