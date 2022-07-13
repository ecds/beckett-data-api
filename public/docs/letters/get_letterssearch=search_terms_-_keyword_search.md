# Letters API

## GET /letters?search=:search_terms - Keyword search

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

<pre>GET /letters?search=%3Ci%3Eoglethorpe%3C%2Fi%3E</pre>

#### Query Parameters

<pre>search: &lt;i&gt;oglethorpe&lt;/i&gt;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=%3Ci%3Eoglethorpe%3C%2Fi%3E&gt;; rel=&#39;self&#39;
X-Total-Count: 23
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e33fec24ad8f81e1b62abbe175494d97&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6a6bf759-71c7-43a6-9e7f-2f29084d7322
X-Runtime: 2.067400
Vary: Origin
Content-Length: 48459</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/3eba7e85-1b18-4702-9fff-7868153df60c",
      "date": "1957-02-26T00:00:00.000-05:00",
      "label": "26 February 1957 - <i>Majikthise</i>",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/f7b75493-eca9-43d4-8b6c-5ff6f3b90f35",
            "display": "<span>Prak, <i>And God Created Woman</i> [Miss Fame].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f10be05b-b2a1-4825-9be6-c13171d121a7",
            "display": "<span>Pizpot Gargravarr, Uptown [Detox].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c1c10ab4-8476-4ff3-a581-9cce4a7cf135",
            "display": "<span>Pasta Fasta, <i>Breakfast Can Wait</i> [Vanessa Vanjie Mateo].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e6b87566-9c7f-4728-8238-ebde57358f8c",
            "display": "<span><i>Easter Island</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6753646d-506a-4f70-91d4-da5cef28f3f6",
            "display": "<span>Oglaroon.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/94600aa8-fb80-4104-b68e-567624c6587c",
            "display": "<span>Maude Lebowski, <i>Oglethorpe</i>, Paula Nancy Millstone Jennings 8-bit selvage migas cleanse ethical bushwick asymmetrical venmo.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bd54801d-752f-4cf9-8025-8636a767e20c",
            "display": "<span>Garkbit, The Most Beautiful Girl In The World, Freegan umami sustainable polaroid everyday marfa.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6c96637f-1797-49d0-b093-14f5d2b6c1ea",
            "display": "<span>Hotblack Desiato's bodyguard, <i>Ol' Skool Company</i>, Beard meditation salvia hammock art party 3 wolf moon green juice squid neutra.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/871c0f7a-8996-4c51-bdd0-e02fddb7352f",
            "display": "<span>Hactar, 1-800-Newfunk Ad, Asymmetrical bespoke vice yr lomo portland yuccie sriracha flannel.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c8020918-5e96-40a5-a522-47ff60cafb48",
      "date": "1957-07-15T00:00:00.000-04:00",
      "label": "15 July 1957 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/37f2f3e4-25e2-4300-8673-23ec10d7f1f7",
            "display": "<span>Discovery (1931-10-31).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b136d2d2-4fc3-4d14-9066-694ef1a40f6e",
            "display": "<span>Mercury (1955-12-21).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a51e7e3e-db1b-4d6f-a4ce-794076347463",
            "display": "<span>Hotblack Desiato, <i>The Millstone</i>, Translated into Frogstar World C by Oolon Colluphid.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bed07a90-8181-46d2-8277-1e125bb5fb5f",
            "display": "<span>Rob McKenna, <i>O Jerusalem!</i>, Translated into Frogstar World A by Arthur Philip Deodat.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9badf72b-c511-419b-86b8-2ac5e68d7cd9",
            "display": "<span>Gail Andrews, The Monkey's Raincoat, Translated into Broop Kidron Thirteen by Vroomfondel.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b64a052e-1ed1-4d24-b9b7-4ca94d901acd",
            "display": "<span>Colin the Security Robot, <i>Crimson and Clover</i>, Next level pickled slow-carb truffaut letterpress shabby chic blog chicharrones muggle magic.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b62177a1-615f-4a3f-a338-6f9ce80390c4",
            "display": "<span>Zaphod Beeblebrox, <i>Tamborine</i>, Twee meggings umami intelligentsia art party diy readymade muggle magic paleo.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4da32783-004a-4c43-8313-57990ca46857",
            "display": "<span>Time of our Darkness.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/362f683f-1418-4446-8917-700efa34e787",
            "display": "<span><i>The Wealth of Nations</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/78a99ae9-fa53-4023-844c-ce8a63defcb1",
      "date": "1958-02-24T00:00:00.000-05:00",
      "label": "24 February 1958 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Lord's Cricket Ground"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/27c035a0-c444-4755-94b8-f31b006824f6",
            "display": "<span>swag, <i>Snatch</i>, Lake Donettebury, 27 December 1964.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3ab2445c-1ba0-4c35-8db7-c4443fce931a",
            "display": "<span>chambray, <i>Princess Mononoke</i>, Port Kennyfort, 29 July 1958.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ab381b49-b133-438a-b0b0-0a6c575ddeb8",
            "display": "<span>Genghis Khan, <i>Pretzel Body Logic</i> [Bianca Del Rio].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fb0052aa-74eb-4643-ade3-cd71b9f2e894",
            "display": "<span>Hotblack Desiato's bodyguard, Funk n' Roll [Vanessa Vanjie Mateo].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f14696a5-d28c-4229-a64d-106ff6456b8c",
            "display": "<span><i>Horse and Groom</i>.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2da4d8a4-e06c-4eee-ad48-9e3f0518f744",
            "display": "<span>Loonquawl and Phouchg, Scandalous!, Vinyl distillery vice chicharrones williamsburg forage twee next level.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f0354a83-3bd7-48bd-adc2-a0acaf31d3dd",
      "date": "1958-06-01T00:00:00.000-04:00",
      "label": "01 June 1958 - Scott Malkinson",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c8f45599-a467-48ac-9863-17eed94a7fd9",
            "display": "<span>Loonquawl, Bambi [Chi Chi DeVayne].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7005bd06-3672-4429-aa2f-feb2b989f53a",
            "display": "<span>Hillman Hunter, <i>Ol' Skool Company</i> [Darienne Lake].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7172a898-48d4-406f-a8a0-4f6a8007a4a5",
            "display": "<span><i>A Beautiful Mind</i>, dir. Maude Lebowski, Billion Year Bunker, Catheyfurt, 1938-03-15.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c23307fc-41d4-4dd4-802c-c069e16f77af",
            "display": "<span><i>Spotlight</i>, dir. Karl Hungus, Golgafrinchan Ark Fleet Ship B, North Jan, 1930-05-19.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b462aafd-0c49-4b17-b8b9-bf74e4c0ca1f",
            "display": "<span>Life of Brian, dir. Brandt, Krikkit One, Hudsonchester, 1968-01-06.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/60001f87-a664-4e40-accc-fec95a0fb62f",
            "display": "<span><i>Endeavour</i> (1936-09-30).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0d4247f7-e9b4-43d9-9a31-d0dd51902256",
            "display": "<span>Endeavour (1924-07-19).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4ff72f0e-0b3c-43b9-bd30-0cb15576067a",
            "display": "<span>Challenger (1934-08-09).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e6cb1726-e446-4477-8cb2-5cf97fc96abc",
            "display": "<span>The Dude, The Albino, Pasta Fasta Shabby chic phlogiston cliche locavore.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d4f73550-a4b1-49e7-aff8-474877dd6618",
            "display": "<span>Jesus Quintana, <i>Scott Malkinson</i>, Barry Manilow Mlkshk fingerstache cray mumblecore selvage muggle magic forage.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/38a581a7-4fe6-4192-be7f-e6d0d4ea3085",
            "display": "<span>Walter Sobchak, Scott Malkinson, Elvis Irony literally lumbersexual waistcoat butcher kinfolk iphone.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9515c372-8cf4-424e-a1d0-63f89e9aed5c",
      "date": "1958-12-17T00:00:00.000-05:00",
      "label": "17 December 1958 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3e5e698f-3ef4-4f07-9b5f-d518e5bc9982",
            "display": "<span>lumbersexual, <i>No Country for Old Men</i>, Ondrickashire, 22 September 1952.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/acdceb33-f22c-4155-839a-ea233cc3e5f3",
            "display": "<span>try-hard, <i>The Gold Rush</i>, Port Britneyport, 26 November 1924.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/77f4f86c-3a18-4d0d-a53d-d9b412c4a019",
            "display": "<span>XOXO, <i>Raging Bull</i>, Alejandroside, 02 August 1928.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/255761d3-77a4-4580-8cdc-d829251869d1",
            "display": "<span>Wonko the Sane, Sexy MF [Mimi Imfurst].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e9c3e36e-4b68-4e9c-b286-5f0eaba31f6f",
            "display": "<span>Hotblack Desiato, Delirious [Acid Betty].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d7c124b4-3856-48be-a5db-5f5da9125542",
            "display": "<span>Eccentrica Gallumbits, <i>3 Chains o' Gold</i> [Sharon Needles].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1837b7df-92b3-42c7-baba-50c1f89bc54f",
            "display": "<span>William T. Riker (1926-1985). Actually <i>etsy drinking schlitz</i> ennui.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2d18b082-b60d-4a1c-a3eb-bd70cd3ba49b",
            "display": "<span><i>Officer Meow Meow Fuzzyface</i> (1924-1996). Chambray slow-carb ugh pinterest fanny pack.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ff63f7ba-5c3e-4e65-9afb-3599f0764e88",
            "display": "<span>Revolio 'Gearhead' Clockberg, Jr. (1906-1971). Fanny pack yolo banjo ramps aesthetic blue bottle.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0538d821-f235-42cc-8dff-5b0c658b7071",
            "display": "<span>The Domain of The King.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/32367967-70bf-402d-ac39-74f6b5ab757b",
            "display": "<span>Frogstar World B.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/902f58c7-5132-426a-b987-1558fd03ab48",
      "date": "1959-02-08T00:00:00.000-05:00",
      "label": "08 February 1959 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bfd6c877-d325-42e1-bbc4-5695b9b2da05",
            "display": "<span>Officer Meow Meow Fuzzyface (1925-1994). Yr <i>keytar bespoke godard truffaut seitan</i> quinoa.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1a02be2b-9d2d-4f2b-8178-d1228b1f2d41",
            "display": "<span>William T. Riker (1926-1976). Fingerstache next level cleanse master cornhole keytar salvia.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/c562b2d9-9a60-4cb2-be03-43960f022ff8",
            "display": "<span>The Lord of the Rings: The Return of the King, dir. Bunny Lebowski, Golgafrinchan Ark Fleet Ship B, Port Tracyborough, 1934-05-04.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/5bf02aaf-5b3a-4892-8a6f-8dda243e49c5",
            "display": "<span>Star Wars: Episode IV – A New Hope, dir. Jackie Treehorn, Bistromath, D'Amoreberg, 1926-02-17.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/cc8b2762-5a0d-4093-9170-65315763583c",
            "display": "<span>Jackie Treehorn, Lyra Erso, Colin the Security Robot Swag messenger bag ethical xoxo aesthetic biodiesel truffaut single-origin coffee.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9266b40a-6bb9-49c5-8eec-c5c36e2b5d87",
            "display": "<span>The Big Lebowski, <i>Steppenwolf</i>, Ford Prefect Polaroid post-ironic intelligentsia tacos kinfolk tofu park.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/b0b92f83-f26e-4503-870c-fe0ce6cf4aed",
            "display": "<span>Manual Reilly, A Swiftly Tilting Planet, Etruscan Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/33824132-7825-408f-b74f-4d05c65245bd",
            "display": "<span>Rev. Lonnie Labadie, <i>The Last Enemy</i>, United States Government Publishing Office.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/67f2ac72-d79d-4ffe-a210-1ebe40951412",
            "display": "<span>Maria Rosenbaum, <i>Some Buried Caesar</i>, Pan Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c24ee617-dc55-4252-abe5-550055af9e78",
      "date": "1959-06-24T00:00:00.000-04:00",
      "label": "24 June 1959 - <i>The Albino</i>",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "Zarss"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/67804ab6-8598-4bb9-aafa-90824ff1bf8f",
            "display": "<span>church-key, <i>Inglourious Basterds</i>, New Mike, 30 November 1945.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f845d3c8-1d93-48d6-b81e-463e7a0c810f",
            "display": "<span><i>Sector ZZ9 Plural Z Alpha</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e67ffb2d-a7dd-4560-b758-53fe5b5a47df",
            "display": "<span>The Big Lebowski, <i>Bunny Lebowski</i>, Charles Darwin Asymmetrical craft beer hella dreamcatcher.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/30165f1b-d6a3-4fbe-b5d9-ce469156ef7f",
            "display": "<span>Hactar, To Sail Beyond the Sunset, Translated into Blagulon Kappa by Max Quordlepleen.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/47ea3ff0-c83e-4c9e-9a6e-7609a904c686",
            "display": "<span>Roosta, A Passage to India, Translated into Burphon XII by Agda.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ffe9bf5e-675e-450b-8705-dad48d031e49",
            "display": "<span>Loonquawl, <i>Waiting for the Barbarians</i>, Translated into Dangrabad Beta by Slartibartfast.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/005cb91f-c2b2-45b7-af6c-300f328ac019",
      "date": "1959-12-30T00:00:00.000-05:00",
      "label": "30 December 1959 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f0a0bce8-b559-44e5-b912-7f80c2dd9d09",
            "display": "<span>Stavromula Beta.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9a13be79-11ad-4aa0-b7f3-2c3e785a01de",
            "display": "<span>Lord's Cricket Ground.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/82ab9b24-f6ca-436c-a1c5-bd2e3caeabd1",
            "display": "<span>Sen. Lawrence Schmitt, <i>Waiting for the Barbarians</i>, Black Dog Publishing.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c3b1a9c3-9441-43e6-8efe-602ae2fef251",
            "display": "<span>Mella, D.M.S.R, Swag <i>put a bird on it biodiesel viral direct trade</i> mustache.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f6bc9bef-2259-475b-98aa-5cb656771c84",
            "display": "<span><i>Consider Phlebas</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/22ad48cc-58a9-49cf-85c6-d34a858ff946",
            "display": "<span><i>Dance Dance Dance</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/09f4c84d-4c14-4150-9b0b-4d667ebe708b",
      "date": "1960-02-06T00:00:00.000-05:00",
      "label": "06 February 1960 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Preliumtarn</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9e2f8429-bb82-464e-a488-d0bee6e1a27f",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1920-1983). Cronut mustache phlogiston semiotics fingerstache wes anderson locavore slow-carb mixtape.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b14fce8d-7515-41af-bb65-f18eaf438196",
            "display": "<span><i>Mario</i> (1903-1981). Kitsch pitchfork freegan flexitarian church-key locavore pbr&b.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/802a0281-7aad-4ae7-a064-1bc34feed496",
            "display": "<span><i>France</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/2fd246f2-136e-4717-8da0-a2953fb7b741",
            "display": "<span><i>Megabrantis cluster</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7e9fdb6b-b402-45dc-8455-48f3f30d6ec9",
            "display": "<span>Discovery (1938-11-03).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f0867a55-2e4e-4935-9730-e5ebe3147163",
            "display": "<span>Mercury (1939-01-11).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/52f7bd14-2fbe-43c8-88bf-022d62f3051d",
            "display": "<span><i>Endeavour</i> (1928-07-16).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/049ad1b5-c0f9-4836-86f5-ea07ac071758",
            "display": "<span>Walter Sobchak, <i>The Albino</i>, Hotblack Desiato Letterpress muggle magic venmo organic kale chips craft beer tilde gentrify salvia.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/71a501e0-7277-4992-a208-1d7815a583fa",
            "display": "<span>Jackie Treehorn, <i>Majikthise</i>, Zarniwoop Godard franzen hashtag authentic brunch tote bag slow-carb quinoa polaroid.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/88609d5c-2cbe-4191-96df-b39a8de35ebb",
            "display": "<span>The Dude, Revolio 'Gearhead' Clockberg, Jr., Colin the Security Robot Art party mumblecore bushwick selvage artisan street.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f2e5eb77-a6ee-452f-9251-f60a9fe70a83",
      "date": "1960-11-23T00:00:00.000-05:00",
      "label": "23 November 1960 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ec1a0ada-1bf6-4ff8-bfb7-f5814b501aeb",
            "display": "<span><i>Rupert</i>, Trinity K Bonet.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5db0051e-bc66-4b0c-a4f3-2caf7eaa8341",
            "display": "<span><i>Hawalius</i>, Sasha Velour.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/4759eac0-7e31-41b5-b462-11755e6a38d9",
            "display": "<span><i>Stavromula Beta</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/22017e80-117d-4c26-ba97-e2d7b7e522a4",
            "display": "<span><i>France</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f252ac72-d491-42d1-9cc9-30f9e3727bed",
            "display": "<span><i>Sector ZZ9 Plural Z Alpha</i>.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/a00cac30-3850-4479-8e6a-ed392e4a2e0c",
            "display": "<span>Josef Lindgren, <i>It's a Battlefield</i>, Eel Pie Publishing.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/dc8e8a17-e162-4aaf-9d98-2bba50814c81",
            "display": "<span>Marvin, <i>Clouds of Witness</i>, Translated into Viltvodle VI by JinJenz.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/775c974b-ba0f-422d-a3ad-93e03eb29e63",
            "display": "<span>Pasta Fasta, The Stars' Tennis Balls, Translated into Fallia by Paula Nancy Millstone Jennings.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e35ec0a0-47ce-49ae-91b2-09cf5c236c7b",
            "display": "<span>Hillman Hunter, A Farewell to Arms, Translated into Poghril by Lunkwill and Fook.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/893dbf2c-d2a6-4628-867b-27309bbae604",
      "date": "1961-06-06T00:00:00.000-04:00",
      "label": "06 June 1961 - <i>Oglethorpe</i>",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/32b3f022-a400-4f2c-b1bb-2a03d3ca77c4",
            "display": "<span>retro, <i>Raging Bull</i>, New Samual, 28 January 1944.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e12fa37c-e5e5-46c5-b82d-b65efd84ba19",
            "display": "<span>Tricia McMillan, <i>Anotherloverholenyohead</i> [Courtney Act].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/dc3fc2de-c621-43ae-a726-6e960908dff4",
            "display": "<span><i>Frogstar system</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6b00cceb-34a1-4b90-9a7a-e46d63c119e7",
            "display": "<span>Zarss.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/051b2885-a6a7-4435-8066-8155df9577a9",
            "display": "<span>Karl Hungus, Mario, Frankie and Benjy Hashtag kogi tattooed asymmetrical.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a0fbd122-5ee8-464d-8060-f9ee343b889b",
      "date": "1962-08-09T00:00:00.000-04:00",
      "label": "09 August 1962 - <i>Oglethorpe</i>",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/35e8ee7e-95ab-45ae-8aa1-3fef52940773",
            "display": "<span>Elizabeth Hoover (1929-1984). Five <i>dollar toast vhs occupy</i> pour-over.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/30d06ee2-9f68-4db3-a41d-425e58004d73",
            "display": "<span>William T. Riker (1922-1989). Waistcoat retro sriracha cornhole.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e12836df-2300-4324-9f71-664aee9666df",
            "display": "<span><i>Mad Max: Fury Road</i>, dir. Walter Sobchak, Vogon Constructor Fleet, Joanburgh, 1933-07-01.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4792f05f-3014-4486-b62b-52cdcddcbffe",
            "display": "<span>Rocky, dir. Karl Hungus, Starship Titanic, South Cristy, 1949-02-07.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b36ac913-2beb-4d4a-a2d1-7aa35ce39805",
            "display": "<span>Walter Sobchak, Officer Meow Meow Fuzzyface, Loonquawl Fixie migas crucifix gentrify pickled occupy street swag lomo.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/454c6d42-9948-439d-97df-26dab3fd487b",
            "display": "<span>Karl Hungus, <i>Revolio 'Gearhead' Clockberg, Jr.</i>, Prak Etsy bushwick goth irony fanny pack.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3b97c647-e4e2-44fe-ab4f-b9ab452870fb",
            "display": "<span>The Wives of Bath.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ebf0f86d-83d5-4f48-8f5b-aa00ae3fe03f",
      "date": "1962-09-11T00:00:00.000-04:00",
      "label": "11 September 1962 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/512c44fc-09b8-4799-9d92-e207d0523bff",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1915-1977). Venmo <i>authentic iphone tousled pinterest green</i> juice.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ab823e97-12c2-4304-b993-8b6a093d0e0b",
            "display": "<span><i>Majikthise</i> (1922-1991). Neutra heirloom direct trade cliche.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4d67d14d-8209-4a75-b24b-682b40eb65a9",
            "display": "<span><i>The Albino</i> (1919-1993). Pbr&b slow-carb cronut craft beer chartreuse.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/c96b4038-d73e-42b8-a484-ee614c7babf0",
            "display": "<span>Star Wars: Episode IV – A New Hope, dir. The Dude, Heart of Gold, New Lennymouth, 1955-07-17.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/18a66e4f-d5b4-4deb-b49f-6a52ff79c2d9",
            "display": "<span><i>The Elephant Man</i>, dir. Walter Sobchak, Starship Titanic, North Fredamouth, 1923-02-03.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f628e126-5a9b-40f9-b8ba-e0bd50ea340a",
            "display": "<span>Modern Times, dir. Walter Sobchak, Tanngrisnir, Morganburgh, 1961-05-23.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6e500f73-ea00-4af3-ad2f-88ea03e64877",
            "display": "<span>Garkbit, Pop Life, Helvetica ennui portland asymmetrical deep v knausgaard beard everyday.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ddecb84b-8f72-45cc-815f-4b1f5759d6cf",
            "display": "<span><i>Tender Is the Night</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/56e0017d-6950-4210-8541-4c6c53893a60",
            "display": "<span><i>Many Waters</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/3615ce11-f88c-4b55-997c-711260cb1132",
            "display": "<span>The Wind's Twelve Quarters.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/38724536-e77a-4de5-bdde-200d0d1839ef",
      "date": "1963-02-06T00:00:00.000-05:00",
      "label": "06 February 1963 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/f275ba5e-50e3-4e61-b853-61773799cf63",
            "display": "<span>Pasta Fasta, 1000 X's & O's [Ginger Minj].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/84514cb8-bfce-486c-ada5-21eca74ec430",
            "display": "<span>Gag Halfrunt, <i>Thieves In The Temple</i> [Asia O'Hara].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5701c350-e115-4128-a074-08cc43327ec6",
            "display": "<span>Majikthise, And God Created Woman [Naomi Smalls].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8968da24-b552-48d6-b536-1fb78b14626d",
            "display": "<span><i>Blade Runner</i>, dir. Brandt, Krikkit One, Port Taraburgh, 1944-08-03.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7787a790-5411-4d8a-a0dc-6c194d91ea71",
            "display": "<span>Roosta, The Lathe of Heaven, Translated into Brontitall by Pizpot Gargravarr.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0137c067-e456-4a4a-97e7-d17fc6347079",
            "display": "<span>Mella, A Glass of Blessings, Translated into Viltvodle VI by Hotblack Desiato.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/620ee315-8de7-4561-a73a-e82b98f14be1",
            "display": "<span>Trin Tragula, The Other Side of Silence, Translated into Santraginus V by Eddie the Computer.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/92f8236b-8cfe-4ff4-9e5a-3abbf09604f3",
            "display": "<span><i>Death Be Not Proud</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b170fe1b-456d-4920-9cdb-56da47652fba",
      "date": "1963-02-07T00:00:00.000-05:00",
      "label": "07 February 1963 - <i>Oglethorpe</i>",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Highgate Cemetery"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/fc846f6b-f56a-4677-a60a-1fc2be8e05bb",
            "display": "<span>brooklyn, The Truman Show, Sipeschester, 01 February 1944.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3b25acd0-fc29-42d8-a903-c2dae1d6b987",
            "display": "<span>29 Arlington Avenue.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b8695ca4-50af-4679-94ac-4837eacd8f24",
            "display": "<span>Gandhi, dir. The Dude, Billion Year Bunker, Lake Craig, 1955-11-17.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2f33b7aa-dc46-4d62-ac23-23ea7bd42074",
            "display": "<span>Fenchurch, <i>No Country for Old Men</i>, Translated into Hawalius by Trillian.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a5c95419-420f-4c03-95d4-b28c2b902988",
            "display": "<span>Deep Thought, <i>Jesting Pilate</i>, Translated into Frogstar World C by Genghis Khan.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b85d289d-056d-42a7-b968-5cf3b02edc08",
      "date": "1963-12-01T00:00:00.000-05:00",
      "label": "01 December 1963 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Evildrome Boozarama</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/00b6754e-de01-4e0c-ae80-9735a4fbc720",
            "display": "<span>keytar, Star Wars: Episode VI - Return of the Jedi, Port Georgette, 26 June 1971.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/55267705-d106-4e33-99a6-1f74a09794f3",
            "display": "<span>pug, Inception, Howardside, 17 May 1938.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/76d7dfb2-e39a-45c3-9772-8a9e92550d02",
            "display": "<span><i>Gagrakacka</i>, Raven.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5cf0b1f3-ca15-4e8f-8336-526b70d1dbe2",
            "display": "<span>Brontitall, Bob The Drag Queen.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d841e9df-9f23-4a6c-8817-a17b4161b791",
            "display": "<span>Argabuthon, Yvie Oddly.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d38b27ca-d46b-4b3f-8262-085085966923",
            "display": "<span>Donny, <i>Steppenwolf</i>, Garkbit Truffaut tacos locavore farm-to-table brunch dreamcatcher flexitarian.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f444d252-0142-4337-91ce-6b8ab21c4545",
            "display": "<span>Karl Hungus, Mario, Mr. Prosser Meggings hashtag chartreuse hoodie truffaut.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/53f71831-fe18-4954-8e4d-cb4edcbd4a04",
            "display": "<span>Maude Lebowski, Bunny Lebowski, The Allitnils Fixie gluten-free quinoa iphone thundercats lo-fi church-key.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/aac01971-7aff-43f9-ac56-edb51a049871",
            "display": "<span>Jamaal Windler, Tirra Lirra by the River, New English Library.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2c174858-31ef-405c-b837-662bd986cfe4",
            "display": "<span>Ms. Nick Ankunding, Gone with the Wind, Leaf Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/dbe4e759-94e1-4869-a53a-43d6e26bf7d2",
            "display": "<span>Miss Mindi Mante, <i>Dying of the Light</i>, Zed Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4f4c7fd6-1db0-40a3-a362-fe20c2f345d6",
      "date": "1963-12-22T00:00:00.000-05:00",
      "label": "22 December 1963 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6313e386-5c55-4f7c-b74e-4ffa7ca11584",
            "display": "<span>wolf, <i>Apocalypse Now</i>, South Sagechester, 29 July 1936.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d848a689-2583-4349-b0de-c3a4d0a3571f",
            "display": "<span>Prak, Pretzel Body Logic [Shea Coulee].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/04c99a9e-1ef1-4d84-aa35-feb6b459c726",
            "display": "<span>Loonquawl and Phouchg, <i>Guitar</i> [Thorgy Thor].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3d93bace-e467-47d2-9d6d-a4799c02634e",
            "display": "<span><i>Frogstar World B</i>, Brook Lynn Hytes.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7c2e8a4f-0c06-434b-b7a7-504c352bdc4e",
            "display": "<span>Phouchg, Peach, Waistcoat hoodie venmo godard celiac thundercats lumbersexual.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/60bb4397-524d-4729-93de-3fcb4ea64345",
            "display": "<span>Lunkwill and Fook, Something in the Water (Does Not Compute), Blog park helvetica vinegar.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/35787ae7-5d60-48be-a520-03bb914800de",
      "date": "1964-02-05T00:00:00.000-05:00",
      "label": "05 February 1964 - <i>William T. Riker</i>",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/13605875-97fa-454a-8b0b-1c2a0e8d1544",
            "display": "<span>ramps, Raiders of the Lost Ark, Littelhaven, 19 March 1928.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5783d44b-e1e2-472b-ad13-3510fbc11182",
            "display": "<span>umami, North by Northwest, West Grayce, 12 April 1930.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/213ba316-22cc-45f0-a317-a49a15b6b549",
            "display": "<span>tumblr, <i>Gone Girl</i>, Ebertport, 09 December 1957.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1caa403a-69ac-4284-b100-ba9b5db01e16",
            "display": "<span>The Allitnils, <i>Delirious</i> [Aja].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/511b9de4-2202-428c-ba35-cc9f8e0490c5",
            "display": "<span>Mr. Prosser, <i>Screwdriver</i> [Joslyn Fox].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/978b677d-893f-48c0-8e45-764f824794bb",
            "display": "<span>Loonquawl, My Name Is Prince [Kennedy Davenport].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d01b3e35-f83a-4857-aba3-ee3698b0b661",
            "display": "<span>Network, dir. Karl Hungus, Vogon Constructor Fleet, Jannashire, 1923-03-30.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/263c0990-aa86-448d-adc2-65f67b38e13d",
            "display": "<span>Lloyd Mitchell, <i>Eyeless in Gaza</i>, Vintage Books at Random House.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/330411f9-5b8b-4c5b-b098-e010ea240865",
      "date": "1964-03-05T00:00:00.000-05:00",
      "label": "05 March 1964 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "Preliumtarn"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/37f9ede1-6a33-4871-b769-7ca8b26e942c",
            "display": "<span><i>Hawalius</i>, Willam.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/26d54e05-02eb-4728-b5e5-7ff2b4eec788",
            "display": "<span>Majikthise (1910-1984). Mixtape 90's hammock next level cronut tacos chambray.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/90f89080-6b99-4d43-9680-e6f0a74d47c9",
            "display": "<span><i>Lyra Erso</i> (1913-1989). Blue bottle wes anderson vinyl jean shorts.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/47d7d360-d3e2-4772-95c6-a306fa2db441",
            "display": "<span><i>William T. Riker</i> (1909-1991). Bespoke <i>trust fund intelligentsia kitsch fingerstache</i> viral.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/aef84b5c-607a-4112-80bf-421abae9379d",
            "display": "<span>Rico Zemlak MD, The Daffodil Sky, Mandrake of Oxford.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fe8b10e8-7016-4f9b-a8be-22c5bae301a4",
            "display": "<span>Miss Annamarie Pfeffer, <i>Stranger in a Strange Land</i>, D. Reidel.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8788f966-bf73-41d3-9511-ca17a7d50ffd",
            "display": "<span>Tricia McMillan, <i>Many Waters</i>, Translated into Hawalius by JinJenz.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7525e22c-db88-4a48-bdc6-2b3699bc818d",
            "display": "<span>Humma Kavula, <i>The Line of Beauty</i>, Translated into Magrathea by Wonko the Sane.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/1fe14da1-124f-4663-93c4-8861c4cd31f9",
            "display": "<span>Garkbit, The Monkey's Raincoat, Translated into Frogstar World B by Zarquon.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e239bee7-5434-43e1-b7d9-734174ac60ab",
      "date": "1964-07-01T00:00:00.000-04:00",
      "label": "01 July 1964 - Majikthise",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2a62dc0c-ecf4-48da-a983-d5698cd0be6e",
            "display": "<span>pabst, <i>Fight Club</i>, Kutchland, 11 December 1945.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/7b3eeaeb-555f-4225-9502-f23db81768e4",
            "display": "<span>Arkintoofle Minor, Carmen Carrera.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b52b4496-a823-430d-add7-bec512f1b0e7",
            "display": "<span>Sqornshellous Zeta, Mayhem Miller.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ea5bf6b5-d32c-4aa6-a164-cd4a3b158dad",
            "display": "<span>Oglaroon, Raja.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9a1e1aaa-5414-4d9d-bfb1-4797c3c60fc1",
            "display": "<span>Atlantis (1930-07-11).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c73a9b03-203d-401a-a2e1-360c40e00158",
            "display": "<span>Rena Walker, Great Work of Time, Martinus Nijhoff Publishers.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9ef51889-2c92-4215-9ca2-1477dd369f0d",
            "display": "<span>Jordon Renner, <i>Mr Standfast</i>, Brill Publishers.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b6a55aab-18e6-40a5-ba40-b7e15b04e4a6",
      "date": "1964-07-11T00:00:00.000-04:00",
      "label": "11 July 1964 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>Western Spiral Arm</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5a15ad9e-9fa1-4de1-b64f-24e776104ce1",
            "display": "<span>JinJenz, <i>Cindy C.</i> [Jessica Wild].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/727144aa-9326-4ddd-95b0-0b827f5f11f7",
            "display": "<span>Dan Streetmentioner, <i>Joy In Repetition</i> [Blair St. Clair].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/594fe2c5-c133-4904-9b98-06c66ab80571",
            "display": "<span>Agrajag, <i>Housequake</i> [Laganja Estranja].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/bc17d298-20e9-499a-9593-763206c95e05",
            "display": "<span>Mad Max: Fury Road, dir. Jesus Quintana, Heart of Gold, Simonhaven, 1946-01-05.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/84c5def6-d9eb-4f6c-b6d5-483cbcabc4a1",
            "display": "<span><i>Lawrence of Arabia</i>, dir. Walter Sobchak, Bistromath, Casperton, 1957-10-29.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/f5151a72-45f5-4260-a0a9-f5714f36de17",
            "display": "<span>Random Dent, A Time of Gifts, Translated into Gagrakacka by Hotblack Desiato's bodyguard.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b9c69055-9e1e-4efb-b19a-c683eb9c8295",
            "display": "<span>Rob McKenna, <i>Jacob Have I Loved</i>, Translated into Damogran by JinJenz.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5785f9ff-fade-4814-8762-b6f51d4f8376",
            "display": "<span>All the King's Men.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1b5cbf94-4c9c-423e-acd7-3eb1ee36009c",
            "display": "<span>I Sing the Body Electric.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/55c0921a-1917-4570-8430-6b0affdc4a78",
      "date": "1964-07-14T00:00:00.000-04:00",
      "label": "14 July 1964 - <i>Revolio 'Gearhead' Clockberg, Jr.</i>",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "<i>Seventh Galaxy of Light and Ingenuity</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/59d15dee-2daa-4ed7-a647-79857df255c8",
            "display": "<span>Arthur Dent's house.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/63f64f25-849b-4f44-80d1-3c69e6286c40",
            "display": "<span><i>Room</i>, dir. Karl Hungus, Krikkit One, Cathleenmouth, 1940-03-12.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/42f5706f-25b8-468a-b84f-68d65d9099d4",
            "display": "<span>The Big Lebowski, Revolio 'Gearhead' Clockberg, Jr., Pizpot Gargravarr Church-key letterpress before they sold out occupy.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3c765810-84b8-440d-8e53-83524d2f6421",
            "display": "<span>Walter Sobchak, The Albino, Frankie and Benjy Godard keffiyeh lomo sartorial irony gluten-free pbr&b tumblr.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3d951e8a-8b91-4534-8d81-d8892143c7a5",
            "display": "<span>Maude Lebowski, <i>Elizabeth Hoover</i>, Barry Manilow Fingerstache asymmetrical cornhole cold-pressed.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9b21f648-36c1-429d-b483-e13c4be7f6a4",
            "display": "<span>Cordie Yost, <i>A Glass of Blessings</i>, Barrie & Jenkins.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/96d8322a-e28c-4275-82b0-435d30aff5e6",
      "date": "1965-07-02T00:00:00.000-04:00",
      "label": "02 July 1965 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ec0cacf4-3a2b-47bc-b5c2-1ffd606d7da5",
            "display": "<span>Prostetnic Vogon Jeltz, Money Don't Matter 2 Night [Robbie Turner].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9ae259de-8f2e-4505-9c8f-3e133eb9a761",
            "display": "<span>Majikthise, Computer Blue [Jessica Wild].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d23b85f3-5cc7-4aab-ac1f-324dcaa69038",
            "display": "<span>Total Perspective Vortex.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/46f68810-3e07-47cc-a025-3541d0ddd6a5",
            "display": "<span>Jackie Treehorn, <i>Officer Meow Meow Fuzzyface</i>, Charles Darwin Tattooed mlkshk lomo cardigan viral pabst neutra.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/7da65bf5-cb46-4a09-a648-17ae9f9e3dbb",
            "display": "<span>Donny, Revolio 'Gearhead' Clockberg, Jr., Majikthise Meditation pour-over street freegan.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/cf67edaf-67d4-4852-8644-6a307abff06d",
            "display": "<span>Carrion Comfort.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/faf0c1ae-5476-4c43-b5bf-5cc52b4dafb4",
            "display": "<span><i>Blue Remembered Earth</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1c642f8a-887d-40d7-b022-fe2635b3a1a0",
            "display": "<span>The Violent Bear It Away.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 23,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 2
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
          "doc_count": 2
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
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
      "meta": {
      },
      "doc_count": 23,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Mante University",
          "doc_count": 12
        },
        {
          "key": "Eastern Kunde",
          "doc_count": 10
        },
        {
          "key": "Rippin Academy",
          "doc_count": 10
        },
        {
          "key": "Luettgen University",
          "doc_count": 9
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 23,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 9
        },
        {
          "key": "german",
          "doc_count": 7
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "english",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 23,
    "links": {
      "self": "http://example.org/letters?page=1&search=%3Ci%3Eoglethorpe%3C%2Fi%3E"
    }
  }
}</pre>
