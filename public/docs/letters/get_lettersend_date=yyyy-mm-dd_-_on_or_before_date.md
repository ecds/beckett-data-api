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

<pre>GET /letters?end_date=1962-11-13</pre>

#### Query Parameters

<pre>end_date: 1962-11-13</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1962-11-13&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 20
Content-Type: application/json; charset=utf-8
ETag: W/&quot;afe3c6a4f24925bcebbc0d709b0926ba&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fcf80785-9498-4825-81d0-484c15ab6c26
X-Runtime: 2.445890
Vary: Origin
Content-Length: 39762</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/7e66859d-4581-49d9-97c7-7b3e4193331e",
      "date": "1957-05-03T00:00:00.000-04:00",
      "label": "03 May 1957 - <i>Emory</i>",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "Rupert"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/6f4925c9-c41b-4eb8-a88a-cc0ca4957fd6",
            "display": "<span><i>Orion</i> (1924-11-13).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/96c22502-9436-4764-bdae-bf17a03e9b9c",
            "display": "<span><i>Orion</i> (1929-09-05).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f608f436-455f-4be6-9479-d50d809f2ea3",
            "display": "<span>Rod Mueller, <i>The Grapes of Wrath</i>, Peace Hill Press.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8987bf20-c688-470d-9b2a-8882cae94220",
            "display": "<span>Humma Kavula, To a God Unknown, Translated into Allosimanius Syneca by Pasta Fasta.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/aed2b4cb-701d-4997-bb91-1709668ada24",
            "display": "<span>Prostetnic Vogon Jeltz, <i>The Needle's Eye</i>, Translated into Poghril by Genghis Khan.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3afd2e0f-3519-4ec0-a5af-5179dc86d809",
            "display": "<span>Loonquawl, Oh! To be in England, Translated into Dangrabad Beta by Garkbit.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d457fc4a-675d-444d-8681-34cd097c4392",
            "display": "<span>Prostetnic Vogon Jeltz, <i>Lady Cab Driver</i>, Pour-over <i>meggings williamsburg migas heirloom tote</i> bag.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d3a1d959-82fb-46ef-aa6c-b9ddce1fd306",
            "display": "<span>Paula Nancy Millstone Jennings, Tamborine, Bicycle <i>rights meh gastropub</i> plaid.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c0dd4e8f-c72f-40d8-8323-7ca4cbee51b9",
      "date": "1957-10-25T00:00:00.000-04:00",
      "label": "25 October 1957 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8e168b73-478f-4d38-bbdb-98f5e94bdb2c",
            "display": "<span>Grunthos the Flatulent, <i>I Wish U Heaven</i> [Mimi Imfurst].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/2571f7d6-01f8-440f-9497-f3ed29650467",
            "display": "<span>Vroomfondel, <i>U Got The Look</i> [Alaska].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/823e25e7-5cb7-400a-8354-197e2d765584",
            "display": "<span>Santraginus V, Phi Phi O'Hara.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cdae90c1-c2d6-4939-9f16-a01bf0d941fe",
            "display": "<span>Jaglan Beta, Alexis Michelle.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/dbaae09f-78ba-4a9b-916b-29e6785a655b",
            "display": "<span><i>Broop Kidron Thirteen</i>, Aquaria.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1eff628b-70d6-461e-bc71-fa99a723f6f1",
            "display": "<span>Ibiza.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b4ab9f3a-2e6f-489d-b8c5-8acad6608fd3",
            "display": "<span><i>Rickmansworth</i>.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ae2a7803-2f95-427b-b444-99b432698835",
            "display": "<span><i>Fear and Trembling</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f39122f8-0442-4f88-96c9-be4798a87ddb",
            "display": "<span><i>Ego Dominus Tuus</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/32abffdd-346c-4676-8836-ff90570a8930",
            "display": "<span>The Yellow Meads of Asphodel.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b8e8ac6f-fd87-42e3-a2d0-5922a9b56fb7",
      "date": "1958-03-20T00:00:00.000-05:00",
      "label": "20 March 1958 - Butterscotch Horseman",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2d8c42c1-e3e5-459a-9603-e95887ef7a9b",
            "display": "<span>Challenger (1971-05-13).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/72dd4d12-4c3d-4f51-819b-c473c2c32b12",
            "display": "<span>Gemini (1959-07-18).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/104c1b72-cf29-4804-95a9-08b54e697746",
            "display": "<span>Apollo (1949-10-19).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/468f3928-b201-4f59-a71d-d01b99525f7d",
            "display": "<span>Marcellus Mayer, <i>The Far-Distant Oxus</i>, Manning Publications.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/562014db-37cc-46f5-b8ee-a3ca98a16f5b",
            "display": "<span>Roosta, After Many a Summer Dies the Swan, Translated into Hawalius by Fenchurch.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ecbe1c0f-0ac6-4cde-bcdf-1c53b739dffd",
            "display": "<span>Hillman Hunter, <i>Taming a Sea Horse</i>, Translated into Dangrabad Beta by The Allitnils.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6fa4451c-e281-457b-9a99-77cc9a7880cd",
            "display": "<span>Hillman Hunter, O Pioneers!, Translated into Gagrakacka by Gail Andrews.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3a185489-49f8-4bad-bb98-9e1bce4b85f4",
            "display": "<span>Phouchg, <i>Computer Blue</i>, Venmo <i>poutine chia sriracha kogi</i> mlkshk.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/60534273-5212-4877-a0ad-6c3d32372239",
            "display": "<span>Loonquawl, Eye No, Disrupt <i>helvetica messenger bag chartreuse chillwave</i> knausgaard.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/765b9303-3828-4820-b7a6-6738ef8429c4",
            "display": "<span>Colin the Security Robot, Endorphinmachine, Franzen squid brooklyn iphone goth.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f67a4041-4d32-4b04-92d1-7b0344f1e522",
      "date": "1958-05-21T00:00:00.000-04:00",
      "label": "21 May 1958 - Butterscotch Horseman",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d6668bc2-4b35-4ef8-b705-ddd262f2462b",
            "display": "<span>Oolon Colluphid, <i>Nothing Compares 2 U</i> [Coco Montrese].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b3755892-03f7-4e2f-a08e-5b96e721e7f7",
            "display": "<span>Frankie and Benjy, <i>Funk n' Roll</i> [Monet X Change].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6a9eb237-a4c0-40ae-846b-34c6107e8ed0",
            "display": "<span>Mario (1922-1981). Roof <i>wes anderson cornhole pug vhs kombucha pbr&b normcore</i> salvia.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1f4fa102-56c8-4cb5-8e6f-e4bed2eae7fa",
            "display": "<span><i>Network</i>, dir. Jackie Treehorn, Tanngrisnir, Metzmouth, 1956-11-10.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/19b20031-1d75-4f97-b4ee-7a6bd7f80713",
            "display": "<span><i>Amadeus</i>, dir. Karl Hungus, Vogon Constructor Fleet, Fondafurt, 1949-05-02.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/492e1309-1406-465b-9f78-a8d132fd7325",
            "display": "<span><i>Alien</i>, dir. Bunny Lebowski, Starship Titanic, Jacalynland, 1947-07-23.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ad67c53d-c827-4b74-9cb6-2bdcb14a727d",
            "display": "<span>Lunkwill and Fook, New Position, Photo booth venmo umami pork belly kale chips.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/69fd2db2-291b-46c8-be6c-1449aa9e44e5",
            "display": "<span>Hotblack Desiato, Strange Relationship, Letterpress <i>church-key raw denim</i> +1.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5367153a-e150-44f0-89fc-6b1ab909948d",
            "display": "<span>Reg Nullify, Kiss, Austin actually direct trade lumbersexual diy.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f7d30477-acf0-4d23-b43b-018137dfafd8",
      "date": "1959-04-15T00:00:00.000-05:00",
      "label": "15 April 1959 - Ned Gerblansky",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "<i>Arthur Dent's house</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c758078d-1ec7-42c0-8360-878538ba2f3a",
            "display": "<span><i>Vogsphere</i>, Monique Heart.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/022bc9a2-d1d6-424c-a057-4d68dc028dbc",
            "display": "<span>Jaglan Beta, Blair St. Clair.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2ed48158-ca08-45db-812f-60e756fd5654",
            "display": "<span><i>Leia Organa</i> (1921-1990). Chia yr knausgaard +1 messenger bag.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8ad72a15-40f6-4e8a-b69a-600ef6f67fd5",
            "display": "<span><i>Casablanca</i>, dir. Bunny Lebowski, Krikkit One, Port Boyce, 1971-08-07.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/937ad8ea-9713-4888-89de-2af2e47d3fdb",
            "display": "<span><i>Endeavour</i> (1963-12-13).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/08238e74-e3b4-402c-a011-6a82c3f7c732",
      "date": "1959-12-04T00:00:00.000-05:00",
      "label": "04 December 1959 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Easter Island</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/bc71a016-35c1-4310-8ace-9163b7fe4a8c",
            "display": "<span>Burphon XII, Sharon Needles.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ef9dc364-60f4-4ef9-891f-26b0d474dc11",
            "display": "<span>Eroticon VI, Chad Michaels.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ded4be34-190f-4a33-98a1-557f4f084f8b",
            "display": "<span>Zarss.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e085c677-e7c4-4b67-a246-c7287b6bb7d6",
            "display": "<span><i>Oglaroon</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/bc239807-3c55-4fbb-8153-bbd75745ecfc",
            "display": "<span>Discovery (1959-07-14).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/8efe22d7-6289-46c9-8150-bdab78f4d021",
            "display": "<span>Bunny Lebowski, Otto Aquarius, Eccentrica Gallumbits Vhs craft beer neutra fanny pack muggle magic readymade.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/89c3e315-c76d-443d-a0b8-4c59dfd7487c",
            "display": "<span>Donny, Colin the Security Robot, Colin the Security Robot Echo semiotics banjo +1 taxidermy flannel etsy cray.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/80c069f8-8d48-4b63-b1c9-a0a9c60f7f1f",
      "date": "1960-01-11T00:00:00.000-05:00",
      "label": "11 January 1960 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bff3c7e9-ee5d-444b-b122-079a06e2b287",
            "display": "<span><i>Butterscotch Horseman</i> (1910-1998). Occupy <i>gentrify green juice</i> yolo.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/65d2aeb9-4629-480c-817a-f5ee4239908d",
            "display": "<span>Bunny Lebowski, <i>Otto Aquarius</i>, Loonquawl and Phouchg Offal whatever fingerstache sustainable jean shorts.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/baf6f635-5bab-4d09-a9f5-43ef61c01e71",
            "display": "<span>Maude Lebowski, Butterscotch Horseman, Dan Streetmentioner Bespoke photo booth direct trade organic brooklyn fanny pack blog farm-to-table church-key.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/48eda118-f1db-479f-90ef-57d86fd3898d",
            "display": "<span>Markus Emmerich, Taming a Sea Horse, Atlantic Books.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/364d8f5f-d146-4208-b094-0cd79ea56a6e",
            "display": "<span>Tender Is the Night.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/eda843b0-9a9a-4361-bd92-14077bb89564",
            "display": "<span><i>Now Sleeps the Crimson Petal</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f108a2dd-37ae-4c37-b2c7-e376511dfa0c",
      "date": "1960-04-08T00:00:00.000-05:00",
      "label": "08 April 1960 - <i>Homer Simpson</i>",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/14bd5543-cebd-4362-965e-9faebc54bcc1",
            "display": "<span>Data (1905-1987). Disrupt 90's stumptown try-hard hashtag.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/af1107e0-0482-4974-9da8-83005f5b132e",
            "display": "<span>Otto Aquarius (1919-1978). Vinyl yr schlitz letterpress humblebrag.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/54fc39b8-5d5f-4fe0-84a1-e2550b80462e",
            "display": "<span><i>Stavro Mueller Beta</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0cb5a726-e281-48d4-9c93-21b420857909",
            "display": "<span>Discovery (1965-01-11).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/1452dde1-986b-4a62-af3a-548a97467454",
            "display": "<span>Orion (1959-04-02).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/eb69c6d6-227b-4352-b23b-e46519a6528b",
            "display": "<span>Challenger (1942-04-04).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/07367c5a-38e3-4f5e-918c-35daa8b4dc2f",
            "display": "<span>Mella, <i>This Lime Tree Bower</i>, Translated into Gagrakacka by Max Quordlepleen.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/06076f57-657f-4453-9b9f-f1c03247f300",
            "display": "<span>Prak, The Wings of the Dove, Translated into Broop Kidron 13 by Prak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/29a1f3e6-7651-4292-a97c-50cdb2928acb",
      "date": "1960-04-13T00:00:00.000-05:00",
      "label": "13 April 1960 - Scary Terry",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/80de54da-77c1-4b74-a152-c2b7431e3978",
            "display": "<span>iPhone, <i>The Departed</i>, Steubermouth, 06 August 1932.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/1c7fd141-edbc-491a-8627-47cb0e20c616",
            "display": "<span>try-hard, <i>The Lord of the Rings: The Two Towers</i>, West Larraineshire, 05 May 1960.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/25ce1755-f281-405a-bcee-f67efc92b173",
            "display": "<span><i>Preliumtarn</i>, Shangela Wadley.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ddf3a5b5-3197-4ebf-88a4-6186166b242c",
            "display": "<span><i>Sqornshellous Zeta</i>, Aja.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cc8de2b0-d511-4129-af72-0fecac12ddf2",
            "display": "<span><i>Emory</i> (1902-1988). Gluten-free <i>90's quinoa messenger bag williamsburg kickstarter banjo</i> lomo.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e6702e75-3a4a-46bd-b7b7-fab801832be7",
            "display": "<span>Charles Darwin, Dance Dance Dance, Translated into Jajazikstak by Trillian.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4056faa1-1397-46da-89e4-36cd819eb507",
            "display": "<span>Tricia McMillan, <i>Far From the Madding Crowd</i>, Translated into Jaglan Beta by Arthur Dent.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f2b59a4b-9852-4ed5-aaaa-796a51df17f6",
            "display": "<span>Deep Thought, In Dubious Battle, Translated into Fallia by Grunthos the Flatulent.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f6d1f701-a460-4d7e-b916-79f6b585d61b",
      "date": "1960-06-10T00:00:00.000-04:00",
      "label": "10 June 1960 - <i>Ned Gerblansky</i>",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/904b3b13-9dce-4bc5-8910-58890f7d6643",
            "display": "<span>microdosing, <i>The Matrix</i>, South Irvingfort, 16 November 1937.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/676565f7-851a-456c-beb3-3eca07f3d3a1",
            "display": "<span>vinegar, WALL·E, Moorefort, 18 August 1941.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/f56e42d1-fac1-418b-86ec-09e659bac998",
            "display": "<span>Maude Lebowski, <i>Scary Terry</i>, Humma Kavula Keytar biodiesel beard cornhole whatever post-ironic actually.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ef5c5471-757b-420e-8802-856721c5589c",
            "display": "<span>Dan Streetmentioner, Dance Dance Dance, Translated into Rupert by Zaphod Beeblebrox.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b08bd891-00a2-4e98-8484-39c97ccbdc13",
            "display": "<span>Tricia McMillan, <i>The Golden Apples of the Sun</i>, Translated into Dangrabad Beta by The Allitnils.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3176f786-a616-4e01-b4c5-57340883a3b3",
            "display": "<span><i>Nectar in a Sieve</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/828de5ac-19d2-4fbf-b559-8dbd99c24887",
            "display": "<span><i>A Swiftly Tilting Planet</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/4110197f-c5eb-4afe-a9a3-fb7ed9f31657",
            "display": "<span><i>Nine Coaches Waiting</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9cca55f4-3366-426b-9c91-7baafef60cfe",
      "date": "1960-06-22T00:00:00.000-04:00",
      "label": "22 June 1960 - Emory",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "Xaxis"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/94034d10-9f85-4cd2-a42f-932ea434c032",
            "display": "<span>locavore, <i>The Intouchables</i>, Jarredport, 25 May 1969.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4dc4aefd-1653-41cb-8d88-7bc2e704b038",
            "display": "<span>Max Quordlepleen, <i>The Greatest Romance Ever Sold</i> [Ginger Minj].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/34daea2c-8776-4eef-b711-a64be1e24af4",
            "display": "<span>Phouchg, Jam Of The Year [Dida Ritz].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/67006bb5-cfcf-4af3-a4e4-f522905244f2",
            "display": "<span>Magrathean sperm whale, <i>Baltimore</i> [Trinity K Bonet].</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/445eb0b5-36cb-42cb-aee7-63ae7077b643",
            "display": "<span>Maude Lebowski, Scary Terry, Prostetnic Vogon Kwaltz Kombucha squid yr pabst swag.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a71dacad-b897-4315-bec9-4be2fbf7311c",
            "display": "<span>The Wealth of Nations.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/4ed05962-294a-4d72-be6d-a7c40f94db34",
            "display": "<span>Pale Kings and Princes.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/63619726-2381-4018-b6f5-ac6cda0910e6",
      "date": "1960-10-22T00:00:00.000-04:00",
      "label": "22 October 1960 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c4d849bb-4127-48ee-8733-d52c385940ac",
            "display": "<span>cliche, Mr. Smith Goes to Washington, New Margart, 30 March 1939.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e7b80ee9-8b5d-47ca-999e-1ea26dbec84f",
            "display": "<span>portland, Lawrence of Arabia, Karlside, 18 June 1929.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/11aa182e-3afb-4258-8f2c-feda267ca29a",
            "display": "<span>Gagrakacka, Monet X Change.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9459531a-a7de-47dc-8d66-72a43898ea53",
            "display": "<span>Orion (1955-01-29).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/84381353-d1d4-4062-ac4a-94647385cacd",
            "display": "<span>Galaxia Woonbeam, <i>The House of Mirth</i>, Translated into Earth by Zaphod Beeblebrox.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d2f84fb5-d064-46a3-8c2c-8f6e984e69b5",
            "display": "<span>Zarniwoop, <i>The Moving Toyshop</i>, Translated into Damogran by Paula Nancy Millstone Jennings.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f8ed1fac-2ea9-464f-b3e4-6d6db90c290f",
      "date": "1960-10-30T00:00:00.000-04:00",
      "label": "30 October 1960 - Otto Aquarius",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f171448b-e5f3-41ee-9e12-4f7285747999",
            "display": "<span>tattooed, No Country for Old Men, Port Charmainchester, 30 October 1941.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/31c00d1d-c909-4819-a64e-885bc539ddec",
            "display": "<span>Xaxis.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c5ee20e0-d0ba-4b75-b4dd-f421bded6fa5",
            "display": "<span><i>London</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/62dbe7cc-1824-46e6-af6c-b5c8c095892c",
            "display": "<span>Croydon.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8dc5c7cc-2d95-4645-aa3e-7635a206c22c",
            "display": "<span>Charles Darwin, <i>Do It All Night</i>, Neutra biodiesel slow-carb celiac.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f09a43fe-65fb-4c9b-9bd3-254e4499e9f4",
            "display": "<span>Deep Thought, <i>Baby I'm A Star</i>, Wes <i>anderson chia cold-pressed hammock knausgaard</i> pug.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1b97f7df-1317-4a0d-8442-99496faaffcc",
            "display": "<span>Magrathean sperm whale, <i>Cindy C.</i>, Tumblr 8-bit +1 artisan portland selvage pitchfork.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ba253575-bf0b-4a5b-b622-4ae03be74a86",
            "display": "<span><i>That Good Night</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/11f3eb66-a7de-480a-b2ba-39f23fd837f8",
      "date": "1961-01-31T00:00:00.000-05:00",
      "label": "31 January 1961 - Ned Gerblansky",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1a33d47e-34ae-4c5f-8933-b373935aaadd",
            "display": "<span>Preliumtarn.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/97645269-e441-436c-ba77-497b8c935f92",
            "display": "<span>Endeavour (1951-03-17).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/240873f8-f3c6-4cd8-b7ca-dbfd68483766",
            "display": "<span>Challenger (1970-01-29).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ccb13e8f-5cfc-46df-9ef9-ff1b8ef69d95",
            "display": "<span><i>Atlantis</i> (1954-01-30).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bdd82d64-cccf-47f8-9264-b91963189554",
            "display": "<span>Bunny Lebowski, Emory, Max Quordlepleen 8-bit food truck intelligentsia irony artisan hashtag lumbersexual.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e4667cb0-df63-4702-b4ef-da5b4f7cb645",
            "display": "<span>Arthur Dent, <i>1-800-Newfunk Ad</i>, Plaid <i>viral direct trade pbr&b mumblecore venmo</i> vinegar.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5109f860-a3f1-4591-83fc-9dda59d47cba",
            "display": "<span>Lintilla, I Wanna Be Your Lover, Phlogiston authentic narwhal occupy ethical tacos.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/dc723082-d350-4f34-94de-28ebb5d38a1f",
            "display": "<span>Loonquawl, Delirious, Tattooed skateboard salvia asymmetrical.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/546a84b1-62dc-4502-95b8-f4372bc99733",
      "date": "1961-08-24T00:00:00.000-04:00",
      "label": "24 August 1961 - <i>Homer Simpson</i>",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "<i>Preliumtarn</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a680f1a9-0da3-467e-a9a2-238951667cdf",
            "display": "<span>Prostetnic Vogon Kwaltz, Crimson and Clover [Asia O'Hara].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/242cd01f-5ada-4e96-9c70-5ec6904d95af",
            "display": "<span><i>Traal</i>, Acid Betty.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8132380d-1a94-4b79-8681-9608f1efa209",
            "display": "<span>Frogstar World B, Nina West.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/1a20f59a-0e50-4516-b489-5f304cfd0d1a",
            "display": "<span><i>Poghril</i>, Kennedy Davenport.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/83355fcc-1c81-4a14-bb5f-9b057796f6b1",
            "display": "<span><i>Lord's Cricket Ground</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c4bff233-f7e6-460b-af7a-753071d743ed",
            "display": "<span>Seventh Galaxy of Light and Ingenuity.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/3dc9a0f9-c045-44f6-9761-4a605ef9e15f",
            "display": "<span><i>France</i>.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/fb7d6100-3f45-49fb-84ab-e174429c6937",
            "display": "<span>Sherri Champlin, Tiger! Tiger!, Bantam Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/54af1bc6-e2c6-437c-af79-18a91ca95e86",
      "date": "1961-11-11T00:00:00.000-05:00",
      "label": "11 November 1961 - Butterscotch Horseman",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/7875403c-1a0f-424b-95c1-c6afd38b008a",
            "display": "<span>Preliumtarn, Miz Cracker.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/91cf33df-a5f1-4292-af0c-354df1b15660",
            "display": "<span>Leia Organa (1918-1990). Mlkshk schlitz yuccie chambray 8-bit microdosing marfa fashion axe pickled.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e5f86074-602c-4a78-858b-a1909c3f20d8",
            "display": "<span><i>Miracle Max</i> (1924-1973). Seitan food truck intelligentsia aesthetic forage pitchfork.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/84864ce6-072c-4076-b2cb-51b0e4ad4be7",
            "display": "<span>Blade Runner, dir. Karl Hungus, Golgafrinchan Ark Fleet Ship B, East Nelidachester, 1932-06-27.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e9e0a48c-1219-4c58-9af7-d1d9fab8ba21",
            "display": "<span><i>Dulce et Decorum Est</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8865a417-ac03-41fd-ac1f-7424e29a9cd1",
      "date": "1961-11-11T00:00:00.000-05:00",
      "label": "11 November 1961 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f4fbc14d-6317-474a-bb8e-1d42df7e9683",
            "display": "<span><i>Columbia</i> (1960-03-10).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/23dbbee5-758d-4083-92b5-8d1cabc12298",
            "display": "<span>Jesus Quintana, Colin the Security Robot, Dan Streetmentioner Cardigan trust fund listicle goth normcore organic portland.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/605423f7-2290-4d12-973c-192bad9db74f",
            "display": "<span>Karl Hungus, Miracle Max, Barry Manilow Austin truffaut bespoke offal pitchfork.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b0ae4a18-ea2c-4736-8223-9c1c405c0ba7",
            "display": "<span>Karl Hungus, Scary Terry, Random Dent Wes anderson authentic jean shorts post-ironic aesthetic pork belly cliche selfies.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e7dfe816-2f97-44b3-be07-d855d30062bb",
            "display": "<span>Loonquawl, Number the Stars, Translated into Happi-Werld III by Mella.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3eed0c25-0bff-40ad-801b-4b50990931a7",
            "display": "<span>Frankie and Benjy, <i>Paths of Glory</i>, Translated into Jajazikstak by Loonquawl.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/9a2d4099-5a55-47cf-9642-d14c96c5da3b",
            "display": "<span>Oh! To be in England.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d6c7aca8-35e6-4fbb-a5af-5a539af4f7b2",
            "display": "<span>Frequent Hearses.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/58be5154-8fb6-48ce-989e-778120f90993",
      "date": "1961-11-30T00:00:00.000-05:00",
      "label": "30 November 1961 - Butterscotch Horseman",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/32f94e8c-22a8-4838-a6ca-fec8f44dd073",
            "display": "<span>Vroomfondel, When 2 R In Love [Bob The Drag Queen].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d471b274-19b0-4587-9ed2-3b5c12b555a1",
            "display": "<span>Genghis Khan, Cindy C. [Bianca Del Rio].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/644f3126-9d8e-4ac8-ae9c-c8c9b75e62df",
            "display": "<span>Mella, <i>Eye No</i> [Silky Nutmeg Ganache].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9db0578a-9c69-4379-b632-c75ac250a3f2",
            "display": "<span>Santraginus V, Farrah Moan.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/628280d3-3a2f-4619-a3be-dee29337b2a0",
            "display": "<span>Traal, Bob The Drag Queen.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/022b78ed-d3f8-4bb1-84d3-2b8df1451f0f",
            "display": "<span>Miracle Max (1910-1975). Fanny pack ramps umami shoreditch hella cornhole organic kickstarter.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8d67111b-9c22-44b8-a57c-d9130cad1fd0",
            "display": "<span>Lintilla, Endless Night, Translated into Blagulon Kappa by Mella.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3af6a472-7a0a-4f81-84e9-c4a8760c2f57",
            "display": "<span>Vroomfondel, <i>Great Work of Time</i>, Translated into Nano by Dan Streetmentioner.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd2a711e-4046-4053-b01d-c21554fd33ea",
      "date": "1962-02-11T00:00:00.000-05:00",
      "label": "11 February 1962 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/9c901ee6-fe48-4175-b56c-5d24f295e825",
            "display": "<span>portland, <i>Dog Day Afternoon</i>, West Glorychester, 20 March 1954.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/90de68a3-0307-4352-81ab-3f5e102c7ea2",
            "display": "<span>cred, 2001: A Space Odyssey, East Cindy, 18 November 1930.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c110ff56-3f9a-4a4c-a55d-4326bbd718c5",
            "display": "<span>cred, <i>American Beauty</i>, Lake Rodgerchester, 25 October 1961.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3920b975-7c8a-43ed-b788-257befd25b92",
            "display": "<span>The Lord of the Rings: The Two Towers, dir. The Big Lebowski, RW6, North Odette, 1945-06-17.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/60704d01-383d-4d8c-8369-3369f9f64bfb",
            "display": "<span><i>Full Metal Jacket</i>, dir. Brandt, RW6, Ryanshire, 1942-11-01.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/76921418-e6b1-4320-8cfc-cc76389ca485",
            "display": "<span>Enterprise (1943-08-08).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/29aafcad-b146-48b9-ba33-60597b2789b0",
            "display": "<span>Columbia (1923-01-25).</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3508d497-f4be-4378-8995-224d4091047b",
            "display": "<span>Barry Manilow, The Beautiful Ones, Salvia <i>cray irony synth ennui shabby chic you probably haven't heard of</i> them.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ea628bb4-d722-408e-a1fa-723c16bb2353",
            "display": "<span>Zaphod Beeblebrox, She's Always In My Hair, Distillery <i>lo-fi cornhole muggle</i> magic.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b956a3ef-cc20-4f00-8d42-da8b40766e32",
      "date": "1962-11-13T00:00:00.000-05:00",
      "label": "13 November 1962 - Emory",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8049419a-f304-442a-b504-84a50d59ffd5",
            "display": "<span>Barry Manilow, <i>Black Sweat</i> [The Vixen].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/74a55324-7f15-4fdf-94e2-2f4e09a87682",
            "display": "<span>Gag Halfrunt, When Doves Cry [Derrick Barry].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7575390d-4d59-4675-b915-24608b683935",
            "display": "<span>Vroomfondel, Dead On It [Acid Betty].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f290a44e-b0f4-4706-bc88-0c434ef0b2a1",
            "display": "<span><i>Miracle Max</i> (1900-1988). You probably haven't heard of them thundercats cardigan chillwave brooklyn truffaut.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/238be61b-f18c-4e5d-9ce6-92447de44787",
            "display": "<span>Karl Hungus, Miracle Max, Galaxia Woonbeam Ugh meditation helvetica master.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4f9a8af2-0254-424d-8fe7-0937a67e2fe3",
            "display": "<span>Zarquon, <i>Cream</i>, Migas <i>whatever iphone poutine banh</i> mi.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cbf3ad15-e751-4b0f-a33d-b33e87ad42a9",
            "display": "<span>Eccentrica Gallumbits, Cindy C., Kale <i>chips austin bespoke chia you probably haven't heard of them 3 wolf moon vice ennui</i> brunch.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9e8e525c-649b-4c93-92a6-20f5185db148",
            "display": "<span>Zarquon, Le Grind, Vinegar <i>etsy butcher chicharrones kale</i> chips.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 20,
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
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 7
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 2
        }
      ]
    },
    "repositories": {
      "doc_count": 20,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Western Price University",
          "doc_count": 13
        },
        {
          "key": "Simonis College",
          "doc_count": 11
        },
        {
          "key": "North Osinski Academy",
          "doc_count": 7
        },
        {
          "key": "Western Hettinger",
          "doc_count": 4
        }
      ]
    },
    "language": {
      "doc_count": 20,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 6
        },
        {
          "key": "french",
          "doc_count": 5
        },
        {
          "key": "italian",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 4
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 20,
    "links": {
      "self": "http://example.org/letters?end_date=1962-11-13&page=1"
    }
  }
}</pre>
