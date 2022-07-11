# Letters API

## GET /letters?languages=:list_of_languages

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

<pre>GET /letters?languages=German%2C+italian</pre>

#### Query Parameters

<pre>languages: German, italian</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?languages=German%2C+italian&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 13
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c4aaf8a27d6c3390d548d69c0dd98357&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 79a72026-13c4-46fe-bd71-14b2611ad57c
X-Runtime: 2.099635
Vary: Origin
Content-Length: 27470</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/33567ef1-c211-4369-9c40-18fd89bcf0bb",
      "date": "1957-01-08T00:00:00.000-05:00",
      "label": "08 January 1957 - Otto Aquarius",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7d85e6ba-c7ac-40e6-99fc-655550c041a0",
            "display": "<span>tattooed, Star Wars: Episode IV – A New Hope, Port Julius, 26 September 1942.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f68f4652-b650-46be-9713-07ecdbc9208e",
            "display": "<span>VHS, Forrest Gump, Lynetteton, 30 April 1958.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6ad6c9c6-8506-4257-9f15-60e996000580",
            "display": "<span>Bartledan, Shea Coulee.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/2e713fa5-370e-4603-8cc4-4e6857b68d21",
            "display": "<span>Gagrakacka, Chi Chi DeVayne.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4dfb9571-fa7f-4a12-a853-3d251ad13857",
            "display": "<span>Trillian, Oh! To be in England, Translated into Kakrafoon Kappa by Zarniwoop.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c4c3fbca-893c-470e-b89e-a6e462f15f51",
            "display": "<span>Lintilla, All the King's Men, Translated into Lamuella by The Allitnils.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0d7b734d-91ad-4581-b419-8e3de28a9793",
            "display": "<span>Zaphod Beeblebrox, <i>In Death Ground</i>, Translated into Poghril by Trin Tragula.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/167f6fff-dd92-4d01-9bfa-5bfbc9f918c9",
            "display": "<span>Pasta Fasta, I Would Die 4 U, Gluten-free aesthetic gastropub franzen bitters you probably haven't heard of them.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/15ed32ee-1e1f-40ac-b3f9-685f7a3fbe99",
            "display": "<span>Pizpot Gargravarr, <i>Housequake</i>, Fingerstache cronut dreamcatcher mustache.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f01f909a-5d52-4eaf-81c2-07e63d438d75",
      "date": "1957-03-22T00:00:00.000-05:00",
      "label": "22 March 1957 - Emory",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b05a45a5-16c8-4d05-9c16-70089b213bb4",
            "display": "<span>mixtape, Mad Max: Fury Road, Schambergerville, 17 October 1950.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/94023936-469e-430e-865a-651ff92ab9e7",
            "display": "<span>twee, <i>Spirited Away</i>, Port Freda, 09 October 1950.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/62764f16-e549-4fd2-ac55-0415d0115cbb",
            "display": "<span>Santraginus V, Vanessa Vanjie Mateo.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fd5de5bb-b6f5-4069-b8e1-686ac0bb1611",
            "display": "<span><i>NowWhat</i>, Shangela Wadley.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b37fa463-a21c-434a-a928-948b9586fce0",
            "display": "<span><i>Leia Organa</i> (1926-1976). Roof cray slow-carb leggings jean shorts.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5e3202dc-9bdd-4bd4-a8fa-45f2349d96d2",
            "display": "<span>Homer Simpson (1928-1984). Farm-to-table <i>fingerstache muggle magic ennui flannel leggings</i> health.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4d15ea59-2354-4f90-a43f-cc5e71344d3f",
            "display": "<span><i>Ned Gerblansky</i> (1924-1978). Blue <i>bottle street wolf five dollar toast twee before they sold out diy</i> ugh.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e72a4b66-9aba-43b0-a6f1-012ae1bc33cd",
            "display": "<span><i>Gran Torino</i>, dir. The Big Lebowski, Krikkit One, North Len, 1971-04-27.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7cd476a9-b615-452a-b76a-f770a03facf7",
            "display": "<span>Gandhi, dir. Bunny Lebowski, Bistromath, Port Azucenaberg, 1935-10-05.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/347dde41-f2f9-41db-ab33-825ed0fbde5b",
      "date": "1957-07-27T00:00:00.000-04:00",
      "label": "27 July 1957 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/fb6cd577-64d7-4630-ba89-486f4ff36c99",
            "display": "<span>Rob McKenna, Something in the Water (Does Not Compute) [Sahara Davenport].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2d7c3988-eb44-4835-82bc-258390d5a275",
            "display": "<span><i>Lamuella</i>, Ariel Versace.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5a1410b9-6d91-431d-a955-a20177a7190d",
            "display": "<span>Atlantis (1970-10-08).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c11788c1-6037-465b-b001-925f62f43c58",
            "display": "<span><i>Gemini</i> (1958-01-30).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/63e90db3-0055-474f-9286-80c9227d1045",
            "display": "<span><i>Challenger</i> (1970-05-11).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e8ec9e61-e559-4338-942e-3804b1a43171",
            "display": "<span>Chester Yundt, <i>A Monstrous Regiment of Women</i>, Taunton Press.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/09acb9d1-e191-4476-bf61-20c14c053c4f",
      "date": "1958-05-21T00:00:00.000-04:00",
      "label": "21 May 1958 - Leia Organa",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/28ef7f49-3228-440f-9bf0-473bbc0bf1da",
            "display": "<span>Eddie the Computer, Computer Blue [Scarlet Envy].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/2a6e5c35-b349-488f-a57f-c3d3d3810d72",
            "display": "<span>Fenchurch, Still Waiting [Mayhem Miller].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bde8c328-14a3-4aa4-a24a-a280b2ea747d",
            "display": "<span><i>Otto Aquarius</i> (1923-1987). Mlkshk food truck 3 wolf moon kale chips vegan pug cronut synth lumbersexual.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3a132283-205a-402f-8248-038db422b128",
            "display": "<span>Butterscotch Horseman (1906-1988). Schlitz pitchfork goth try-hard biodiesel freegan chillwave.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/23e8fcdf-b012-4e5e-843a-b4bcff5c324a",
            "display": "<span><i>Homer Simpson</i> (1916-1987). Pickled biodiesel truffaut park.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9fecc89a-b7bf-4bda-9287-5e708c805d49",
            "display": "<span>Challenger (1935-07-14).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/bd9663cf-e2ba-44cc-8e17-0165fc0d9fde",
            "display": "<span><i>Endeavour</i> (1942-12-29).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f92ecce2-6dc0-45c9-a3c4-cd3ab01a36d7",
            "display": "<span>The Lathe of Heaven.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/45fbe658-640c-42ea-8064-e58fdfaf8c8f",
            "display": "<span>As I Lay Dying.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e6913b12-c057-409d-906b-99300c619abb",
            "display": "<span><i>Many Waters</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3ef2c8bb-07b9-411d-a32b-4275437204c9",
      "date": "1958-11-29T00:00:00.000-05:00",
      "label": "29 November 1958 - Brandt",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/dc6d4e5f-bee1-4e81-b521-57149d2b92cf",
            "display": "<span>hella, <i>The Lord of the Rings: The Fellowship of the Ring</i>, Casperberg, 30 January 1937.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/95059020-9fc7-4723-b237-b8a5aa9338ef",
            "display": "<span>Eddie the Computer, Alphabet St. [Farrah Moan].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/23cb1f96-18ea-4004-b34c-9057eb77e1b8",
            "display": "<span>Argabuthon, Derrick Barry.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fa3bfbde-1c58-4bd0-96a9-478b31a90646",
            "display": "<span>Hawalius, Kenya Michaels.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/895340d5-ee52-475c-a55c-a5fbbbd2d464",
            "display": "<span><i>Argabuthon</i>, Morgan McMichaels.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3cbbebab-9cf6-454e-be3e-99b6fb175e77",
            "display": "<span>Hotblack Desiato's bodyguard, <i>I Know Why the Caged Bird Sings</i>, Translated into Sesefras Magna by Phouchg.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/46c9655e-8788-46ad-8613-44ca15ff3ca8",
      "date": "1958-12-11T00:00:00.000-05:00",
      "label": "11 December 1958 - <i>Emory</i>",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a4092d28-801c-4199-9b2e-7c4a2816ebc0",
            "display": "<span><i>Ned Gerblansky</i> (1925-1971). Pinterest tattooed actually cred xoxo.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/50044efe-df10-4918-afd8-6542f623fd40",
            "display": "<span>Leia Organa (1904-1978). Distillery typewriter jean shorts small batch sartorial neutra.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/628c87eb-02f5-442e-9dc8-36838442c524",
            "display": "<span><i>Mario</i> (1919-1974). Goth fanny pack green juice narwhal tilde readymade.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d14dc9fe-054c-44f3-b0cc-f71f6356ac31",
            "display": "<span>The Shining, dir. Karl Hungus, Vogon Constructor Fleet, East Saulchester, 1929-12-04.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/420b5127-3d81-450f-ae50-c91da864a115",
            "display": "<span><i>The Bridge on the River Kwai</i>, dir. Bunny Lebowski, Billion Year Bunker, Marcelshire, 1937-03-04.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/fdf80789-2b47-4e40-a19f-d3e358ba5ae3",
            "display": "<span><i>Scarface</i>, dir. The Big Lebowski, Billion Year Bunker, South Jacksonfort, 1949-10-08.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/9c805f8e-1953-4510-9822-4ad7db052b79",
            "display": "<span>Bunny Lebowski, <i>Scary Terry</i>, Rob McKenna Austin blog tote bag knausgaard loko.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e0ba82c8-8f25-44f2-80e8-71d750735b11",
            "display": "<span>Bunny Lebowski, Mario, Random Dent Everyday tilde pabst retro 3 wolf moon skateboard celiac.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/12eb5ed8-2bd2-4784-a5f6-a5754ade2220",
            "display": "<span>Jackie Treehorn, <i>Data</i>, Emily Saunders Deep v roof lo-fi viral crucifix chartreuse.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/78ea0e1c-ce4f-4506-9fa7-c4c7ce7fba46",
            "display": "<span>Eccentrica Gallumbits, <i>New Position</i>, Single-origin coffee etsy flexitarian leggings godard taxidermy 3 wolf moon intelligentsia authentic.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/722f4a85-ae80-4393-92f0-084fcd718988",
      "date": "1959-06-25T00:00:00.000-04:00",
      "label": "25 June 1959 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1712fced-ea9a-4259-9b31-f00171ef9fa3",
            "display": "<span>Discovery (1959-09-09).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0e000f17-1b7d-4e7f-86b8-6816c45f95db",
            "display": "<span><i>Gemini</i> (1926-01-01).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/35c18d55-bd5e-49b7-8b56-41ea53a983e4",
            "display": "<span>Maude Lebowski, <i>Butterscotch Horseman</i>, Gag Halfrunt Fanny pack gluten-free cornhole 90's.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2f3f1c22-5128-4189-886d-73c0d62369f3",
            "display": "<span>Ford Prefect, <i>Money Don't Matter 2 Night</i>, Food <i>truck helvetica diy roof small</i> batch.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e71ba8bd-39be-42b2-8f44-f3e83a44534a",
            "display": "<span>Death Be Not Proud.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/91fde4a7-d4d0-45b6-a8d4-3b7669bdc6c9",
            "display": "<span><i>The Daffodil Sky</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cff1b7c9-bb1b-473f-a9ef-7ac730dbf9b3",
      "date": "1959-08-08T00:00:00.000-04:00",
      "label": "08 August 1959 - Otto Aquarius",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/78ee476f-7572-4786-9a2f-0fa6f3ae4ce3",
            "display": "<span>neutra, <i>Inside Out</i>, Denisseton, 03 May 1941.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2cd2b92c-c3e9-462f-aafc-6a355fda6c68",
            "display": "<span>everyday, Amadeus, North Latonia, 11 September 1954.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/17abfc7b-42a5-4465-8f46-7e0a08e50c8b",
            "display": "<span><i>France</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7acfba98-87fb-4f7d-9ef2-ab5a53c6489a",
            "display": "<span><i>Star Wars: Episode I – The Phantom Menace</i>, dir. Walter Sobchak, Bistromath, North Timmymouth, 1938-03-22.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e6ebf5a8-b48a-4cfd-8bdc-33e9f29c22a2",
            "display": "<span><i>Challenger</i> (1924-06-10).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/465dee96-f3d5-44b5-994c-2da3d77a7b2a",
      "date": "1959-10-30T00:00:00.000-05:00",
      "label": "30 October 1959 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Frogstar World B</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/49c0dca9-7f58-4d51-aeca-b52df5e9e83f",
            "display": "<span>echo, The Dark Knight Rises, Horaceville, 08 July 1937.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/737fd2cd-50ad-4630-8491-4d0eb69779bb",
            "display": "<span>chambray, The Thing, Port Cleveland, 09 June 1949.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e3d232c0-4739-4014-9713-352bf93b0bc7",
            "display": "<span>Allosimanius Syneca, Scarlet Envy.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e01b3830-3aa5-41a4-88f7-dc767d63817a",
            "display": "<span><i>Bethselamin</i>, Miss Fame.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/04bf7f6b-f209-4717-b2f5-be67776c9557",
            "display": "<span><i>Endeavour</i> (1968-09-18).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/140973ce-9213-4fa9-8e75-b35534d0645a",
            "display": "<span><i>Apollo</i> (1953-10-25).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/72909de0-dc5b-49ad-a799-ce32a772711a",
            "display": "<span><i>Challenger</i> (1946-12-07).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3a2e608e-97f6-4d9b-8185-ba1b8d778821",
            "display": "<span>The Sun Also Rises.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/362ee755-d628-4691-b3f7-f0df14ce47e7",
            "display": "<span>Bury My Heart at Wounded Knee.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9f696610-bf36-48c7-aef4-585fe69479ef",
      "date": "1961-08-20T00:00:00.000-04:00",
      "label": "20 August 1961 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5ebfa4a6-00b4-49f9-835c-233ccef28cca",
            "display": "<span><i>Frogstar World B</i>, Katya.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/78ce0f8a-4370-4fd9-a2b1-d1bdc9191ddf",
            "display": "<span>Jaglan Beta, Sharon Needles.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6129af99-899b-44cb-a658-efdd67d95a48",
            "display": "<span>Homer Simpson (1906-1986). 3 wolf moon ethical pug vinyl.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5f82618d-56a2-45e4-b758-fcf30eeec737",
            "display": "<span>Homer Simpson (1903-1995). Artisan keytar banjo next level brunch celiac kickstarter.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/34278e95-ab95-41d1-ac1d-0a799de6aa77",
            "display": "<span>Genghis Khan, <i>A Scanner Darkly</i>, Translated into Poghril by Tricia McMillan.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ccc4c27b-8173-45ee-a9e5-bc1c9e5f459d",
            "display": "<span>Loonquawl and Phouchg, Now Sleeps the Crimson Petal, Translated into Jajazikstak by Majikthise.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0c555a75-5331-402a-8179-b84df329254e",
            "display": "<span>The Yellow Meads of Asphodel.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/b2f34fbc-7165-491b-9810-7bb674faf0ae",
            "display": "<span><i>The Widening Gyre</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e32dc687-f320-45db-89d0-aae78aaac7ba",
            "display": "<span><i>Infinite Jest</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b781b79f-dc0e-4347-9153-596c85cb045c",
      "date": "1962-12-12T00:00:00.000-05:00",
      "label": "12 December 1962 - Scary Terry",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3908a1da-7ffe-4675-a892-074fa7378f9e",
            "display": "<span>mlkshk, V for Vendetta, Gusikowskihaven, 11 July 1929.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6c15ba38-f3b0-4eb2-b372-4bc08f5298d6",
            "display": "<span>meggings, <i>Gran Torino</i>, Davishaven, 30 September 1929.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/19cbd96d-715c-4472-98bf-b5aaa2d6ab48",
            "display": "<span>Elvis, Screwdriver [Bianca Del Rio].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e6e6519c-8512-43c0-b0f2-45e59feff05c",
            "display": "<span>Hotblack Desiato, <i>And God Created Woman</i> [Plastique Tiara].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8c2d957c-5697-44ed-a19e-876558a2d780",
            "display": "<span>Han Wavel, Plastique Tiara.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/175488e6-11d4-4c61-bff9-9fa916df982b",
            "display": "<span><i>Fallia</i>, Stacy Layne Matthews.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/57e639df-e782-4438-b03b-f5848569a4bb",
            "display": "<span><i>The Dark Knight Rises</i>, dir. Maude Lebowski, Billion Year Bunker, South Alesiachester, 1959-02-20.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/56c42056-5a73-4daf-847b-6b9b3fd4c2a2",
      "date": "1964-10-03T00:00:00.000-04:00",
      "label": "03 October 1964 - Scary Terry",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/d057207a-e74c-4d61-80c6-31681e1798c9",
            "display": "<span>health, Apocalypse Now, Zackaryport, 03 November 1933.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/29cfb2fa-1141-4419-871a-2d867f9c4169",
            "display": "<span>marfa, The Intouchables, East Lucienneland, 29 June 1955.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d86078a4-43d7-4639-97ea-9e1d140eac0d",
            "display": "<span>mustache, <i>Cool Hand Luke</i>, Port Dianna, 17 May 1933.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/cc5b3281-2bd8-48df-bfa5-34bece9f6b27",
            "display": "<span>Zarquon, New Position [Ra'jah O'Hara].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/84ba9a14-fa15-4e86-9439-77477727e949",
            "display": "<span>Zarquon, <i>The Most Beautiful Girl In The World</i> [Jinkx Monsoon].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1ef84e54-9759-473a-896a-b62d63c66d64",
            "display": "<span>Burphon XII, Shangela Wadley.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e8279f32-0ea4-47dd-9db2-17fed233cd9c",
            "display": "<span><i>Jaglan Beta</i>, Shangela Wadley.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/592a4a3d-d384-44ce-8339-44374a347845",
            "display": "<span><i>Xaxis</i>, Jinkx Monsoon.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5ad708b4-3fdb-4aec-8764-ec144fa099e1",
            "display": "<span>Gemini (1923-01-14).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/1cabe8c8-34d5-495f-b295-b63029ad34e8",
            "display": "<span>Endeavour (1957-02-12).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cad586bd-9ef7-4dde-ad06-8e676897972c",
            "display": "<span><i>Gemini</i> (1944-10-06).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1bd00635-ba03-4725-96ba-1d7e22a59e5e",
      "date": "1965-07-29T00:00:00.000-04:00",
      "label": "29 July 1965 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/94ce7cd7-aea1-4ae7-a614-538eb8c8dab7",
            "display": "<span><i>Brandt</i> (1905-1991). Fashion <i>axe 8-bit pitchfork try-hard pinterest next</i> level.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/855ae18c-206c-46b3-9a8b-24a547dfa0cc",
            "display": "<span><i>Mario</i> (1920-1990). Bushwick lo-fi microdosing celiac wolf synth small batch.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3e1df6bf-bcdf-456e-ae55-1bce078d0ba2",
            "display": "<span>Life Is Beautiful, dir. Bunny Lebowski, Krikkit One, Ernestostad, 1961-11-24.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/061e7eb0-7b5e-44e0-91ad-4279586165ca",
            "display": "<span>Saving Private Ryan, dir. Jesus Quintana, Krikkit One, Donitashire, 1971-03-20.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/f721b015-b471-4d52-bedb-6e77af6eed10",
            "display": "<span>Walter Sobchak, Otto Aquarius, Wonko the Sane Sartorial ramps cray carry.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/6ec2fa38-b91b-422f-bc79-1250857a1ef4",
            "display": "<span>Bunny Lebowski, <i>Mario</i>, Rob McKenna Twee sartorial whatever authentic pork belly iphone.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d36749e2-3975-49e8-aeb8-79a17461db99",
            "display": "<span>Miss Jeramy Lemke, <i>Gone with the Wind</i>, J. M. Dent.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/779a27db-c8fa-438b-9a77-02e4050c94b4",
            "display": "<span>Josefina Rolfson JD, The Far-Distant Oxus, HMSO.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4e2b08df-800b-4af1-a617-5c9cfd86bf10",
            "display": "<span>Fr. Buffy Kreiger, In a Dry Season, Addison-Wesley.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 13,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 0
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
          "doc_count": 0
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 1
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
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Hills University",
          "doc_count": 8
        },
        {
          "key": "Effertz Academy",
          "doc_count": 7
        },
        {
          "key": "Ryan Institute",
          "doc_count": 4
        },
        {
          "key": "The Ohio University",
          "doc_count": 4
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
          "doc_count": 9
        },
        {
          "key": "french",
          "doc_count": 8
        },
        {
          "key": "german",
          "doc_count": 7
        },
        {
          "key": "italian",
          "doc_count": 6
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 13,
    "links": {
      "self": "http://example.org/letters?languages=German%2C+italian&page=1"
    }
  }
}</pre>
