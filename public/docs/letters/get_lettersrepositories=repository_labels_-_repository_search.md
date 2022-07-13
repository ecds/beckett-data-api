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

<pre>GET /letters?repositories=West+Goyette</pre>

#### Query Parameters

<pre>repositories: West Goyette</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=West+Goyette&gt;; rel=&#39;self&#39;
X-Total-Count: 18
Content-Type: application/json; charset=utf-8
ETag: W/&quot;25abde6b370ea7da38b1132ac88ecb52&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 51172dd4-505d-4bd7-a1db-13038cb657fe
X-Runtime: 2.181565
Vary: Origin
Content-Length: 35514</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/512fd22d-bf79-4518-a9e2-8c7b636bf905",
      "date": "1957-03-28T00:00:00.000-05:00",
      "label": "28 March 1957 - Majikthise",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/a38532a2-e392-404c-8d23-3f41d5317914",
            "display": "<span>Argabuthon, Willam.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/eeb32f04-0109-4cc4-a4c0-d1fc9b859cf5",
            "display": "<span>Preliumtarn, Monet X Change.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e853c227-86b5-4a87-9260-10cfe1900d57",
            "display": "<span>Arthur Dent, The Wealth of Nations, Translated into Frogstar World A by Dan Streetmentioner.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/56a02b08-9cba-474c-9a6d-22f7a9b95b21",
            "display": "<span>Arthur Dent, Kiss, Waistcoat <i>chambray chicharrones marfa hella health</i> vegan.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c57020a6-625f-4a28-bd75-49760e8d44b0",
            "display": "<span>Paula Nancy Millstone Jennings, Funk n' Roll, Wes <i>anderson viral vhs normcore phlogiston slow-carb put a bird on it</i> 8-bit.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d92197b7-c1be-410a-a1e7-20f5daf4a599",
            "display": "<span>Hactar, <i>Crimson and Clover</i>, Vice yr hammock tacos.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/49ff4055-d95e-4c72-8a84-297918e3ae5e",
            "display": "<span>The Glory and the Dream.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/425d6f6f-d178-4a58-bb11-989774ed9c57",
      "date": "1957-08-09T00:00:00.000-04:00",
      "label": "09 August 1957 - <i>Elizabeth Hoover</i>",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "<i>Ysllodins</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/95f2e477-385b-4cdf-b8de-f985f240d43e",
            "display": "<span>XOXO, <i>The Great Dictator</i>, Port Hershel, 14 April 1925.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/af7128b0-610b-49c7-8c2f-b0d9a5901ca0",
            "display": "<span>swag, <i>Star Wars: Episode IV – A New Hope</i>, Port Buddyfurt, 13 October 1966.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0174598f-a50a-41c8-a6a4-c34f091f6ba7",
            "display": "<span>Challenger (1968-03-12).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f9315524-3d16-4643-9001-af8765da6f24",
            "display": "<span>Mercury (1965-07-28).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/88db4d84-3cce-4b8e-98c0-bd851d15d568",
            "display": "<span>Maryanna Marks, <i>Where Angels Fear to Tread</i>, Lethe Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9344178f-3416-4890-aa4c-f4d25e8da8e6",
            "display": "<span>Louie Hintz, After Many a Summer Dies the Swan, McClelland and Stewart.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f682fa2a-bc36-4a29-ab5c-03cf5123194f",
            "display": "<span>Alva Vandervort PhD, To Sail Beyond the Sunset, Hamish Hamilton.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/beaba24b-9a3f-48eb-b3ae-8b31094a7b48",
            "display": "<span>Lintilla, <i>Peach</i>, Cliche food truck photo booth humblebrag park forage.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f41c440e-24bb-4083-9bd2-4217c93acf1b",
      "date": "1958-03-31T00:00:00.000-05:00",
      "label": "31 March 1958 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0c665f1e-fa4d-40b8-b5a5-cfbdc8d085d8",
            "display": "<span>chartreuse, The Thing, Wizamouth, 01 November 1954.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9cf8c54e-f25a-4caa-9908-3d8a3ca183c8",
            "display": "<span>narwhal, <i>The Apartment</i>, West Ginoview, 12 June 1948.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/07599ee2-f0a5-4197-883b-36be11c3ac06",
            "display": "<span>Walter Sobchak, <i>William T. Riker</i>, Genghis Khan Godard hella vinegar literally trust fund neutra brunch.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e679e91b-0b3b-4c80-b8b5-93400c11f314",
            "display": "<span>Bunny Lebowski, Oglethorpe, Phouchg Squid poutine literally chillwave vinyl.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/20a45f3b-9251-4cb0-ac1b-f61db5a7ee41",
            "display": "<span>Trillian, When You Were Mine, Meh tote bag lomo crucifix try-hard butcher chicharrones tumblr.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/07f5fcaa-1796-4efd-8059-0e1962f9e94e",
            "display": "<span><i>A Summer Bird-Cage</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/50cfd8d7-adeb-4aff-add2-34aebdc463b0",
            "display": "<span><i>Pale Kings and Princes</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a1df7392-7339-419e-8b49-5f84037a71a3",
            "display": "<span><i>Brandy of the Damned</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/eb429219-4074-45d7-ab07-35effade9aa2",
      "date": "1959-04-16T00:00:00.000-05:00",
      "label": "16 April 1959 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4d3eccc2-2780-4370-9f27-76bc41b02d40",
            "display": "<span>Trillian, 1-800-Newfunk Ad [Ariel Versace].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/72d62954-01fd-42d4-a14b-3130535f9e7e",
            "display": "<span><i>Lyra Erso</i> (1922-1988). You probably haven't heard of them mumblecore wayfarers sriracha swag photo booth +1 keytar flannel.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cc018aaa-ef97-41bf-abff-441152760db6",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1929-1992). Jean shorts forage williamsburg tacos iphone helvetica chicharrones cleanse gluten-free.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ea84c16e-de0d-48e4-bbcd-e5accb940e52",
            "display": "<span><i>Mario</i> (1925-1980). Tattooed selvage austin etsy pbr&b yr cliche pork belly gluten-free.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/8895ef44-2c8d-49b9-b922-d11935c90146",
            "display": "<span><i>Megabrantis cluster</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3ab14a7e-b81a-4e08-b6d1-6eeea2e1dacb",
            "display": "<span><i>Dog Day Afternoon</i>, dir. Brandt, Bistromath, North Bonnie, 1968-11-07.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b4579872-39a2-4f81-8642-4840e512744c",
            "display": "<span>Rocky, dir. Jackie Treehorn, Billion Year Bunker, Stevietown, 1934-02-08.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3082dea7-0700-42c0-a6a3-37e7d812852d",
      "date": "1959-12-30T00:00:00.000-05:00",
      "label": "30 December 1959 - <i>William T. Riker</i>",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b8021342-53e2-43bc-9e4f-b5bd644af5cd",
            "display": "<span>roof, Star Wars: Episode IV – A New Hope, Port Ellamae, 03 June 1924.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/01775cbf-6dff-491d-a773-30220a40d6a2",
            "display": "<span>Galaxia Woonbeam, A Love Bizarre [Ivy Winters].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/2a462bda-ac5c-48e7-b56f-ab6be9750f76",
            "display": "<span>JinJenz, Little Red Corvette [A'keria Chanel Davenport].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7a7712d3-4bfa-4afa-bf3b-1b2c9a8249fc",
            "display": "<span>Zarniwoop, Do It All Night [Plastique Tiara].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5a7678c8-e833-4d91-b452-a743026cf397",
            "display": "<span>Krikkit, Detox.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6e55ba4f-94be-46e7-9994-a67be5c324fd",
            "display": "<span>Eroticon VI, Pearl.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/92d8e7fd-4b35-4f20-b51b-41d3a279cad5",
            "display": "<span>Barnard's Star.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ef4385cb-0f0a-4927-b4c6-f16004e82e62",
            "display": "<span>Bistro Illegal.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f430ce07-d441-4935-8738-1854008065d8",
      "date": "1960-02-22T00:00:00.000-05:00",
      "label": "22 February 1960 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ab6d3c57-70bb-480f-8176-85ca11fd07cf",
            "display": "<span><i>NowWhat</i>, Miz Cracker.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fb45bbb8-51d7-4c1f-b7f9-68100c255052",
            "display": "<span>Vogsphere, Nina West.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0bbfd9ae-1ac4-4936-8db0-f52026218c83",
            "display": "<span>Msgr. Elmo Batz, The Monkey's Raincoat, Ziff Davis Media.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/85327e4d-6add-4152-bfb1-da44c832a1c8",
            "display": "<span>Regenia Greenholt LLD, <i>Look Homeward, Angel</i>, Gefen Publishing House.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/884d6535-3439-4601-ae77-b4bb24978c29",
            "display": "<span>Zarquon, <i>All the King's Men</i>, Translated into Fallia by Zarquon.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ec5f8ae0-1c69-45ee-af47-d147105ff460",
            "display": "<span>Colin the Security Robot, No Highway, Translated into Magrathea by Grunthos the Flatulent.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/df691729-efd0-48c3-8193-741eb8986118",
            "display": "<span><i>Number the Stars</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/76128a41-40e7-4768-ac05-5a74e2bf764b",
      "date": "1961-04-06T00:00:00.000-05:00",
      "label": "06 April 1961 - <i>Bunny Lebowski</i>",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0c145692-62f8-443b-a2b8-cccf64bc04d3",
            "display": "<span>dreamcatcher, <i>The Godfather: Part II</i>, Alinefurt, 13 September 1939.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5b4459aa-9454-4fa1-91f3-0e15e522188f",
            "display": "<span>Tricia McMillan, Something in the Water (Does Not Compute) [Tyra Sanchez].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/8dfe323b-7b7e-4ebe-a390-20601d214b17",
            "display": "<span><i>France</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a7f9d5d8-1398-4568-87e3-d97425532131",
            "display": "<span><i>Horsehead Nebula</i>.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/c971090d-5df9-43cf-8473-c773122c3add",
            "display": "<span>Edna O'Brien.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/42ebb98b-a4e8-46ba-bc50-cbf6916e24f4",
      "date": "1961-11-04T00:00:00.000-05:00",
      "label": "04 November 1961 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/26d6e7e8-c535-4d4e-9919-e40613e606e3",
            "display": "<span>Frogstar World B, Farrah Moan.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5de0e6d0-5fde-45bd-9c94-57e300df8cac",
            "display": "<span><i>Flargathon</i>, Monique Heart.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e16849ba-f473-4ca1-9fbc-900185b33582",
            "display": "<span>Earth, The Vixen.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/16a6e7fc-406b-46fa-94a4-371407c94e7e",
            "display": "<span>Apollo (1929-11-27).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/076e654c-71b6-4be8-9375-15b941f0bf37",
            "display": "<span>Rep. Doreen Abbott, <i>Taming a Sea Horse</i>, Central European University Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/0ef52b11-63d7-4f58-b617-bff5d467eb2f",
            "display": "<span>Norbert Moore, <i>A Glass of Blessings</i>, Da Capo Press.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7c684fa4-d8fd-4c06-9f00-03ff52dd46aa",
            "display": "<span><i>The Heart Is Deceitful Above All Things</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/fe11c117-0e95-4586-916e-bfecba12819f",
            "display": "<span><i>Ego Dominus Tuus</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/787f49c0-c4bc-4a1b-9015-e8c95c4ae218",
      "date": "1961-11-24T00:00:00.000-05:00",
      "label": "24 November 1961 - Scott Malkinson",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ad41f0bf-076c-42cb-a893-d97209919dc2",
            "display": "<span>Han Wavel, Milk.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e1e56993-806e-45c6-bac2-92d2337c5a1a",
            "display": "<span>Burphon XII, Plastique Tiara.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5a8e1b34-e9d3-48e1-ae4e-f38af7790e57",
            "display": "<span>The Lord of the Rings: The Fellowship of the Ring, dir. The Dude, Heart of Gold, Tammaraton, 1929-11-13.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/bcf27928-0973-4511-9ecb-968aeb3150fd",
            "display": "<span>Back to the Future, dir. The Dude, Tanngrisnir, West Angelenachester, 1965-11-13.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/82aec861-4afe-4ddf-a737-d3d68c6d1ccb",
            "display": "<span>Jackie Treehorn, Officer Meow Meow Fuzzyface, Arthur Dent Hashtag put a bird on it tumblr echo.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7a79c5e4-a8b0-4e0c-b9ce-d1f7385becd7",
            "display": "<span>Prostetnic Vogon Jeltz, A Time to Kill, Translated into Burphon XII by Paula Nancy Millstone Jennings.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ca1c4699-fb88-4674-a387-4d100717e893",
            "display": "<span>Hotblack Desiato, Waiting for the Barbarians, Translated into Santraginus V by Questular Rontok.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/94b4cd24-38f1-43bf-8b73-4a08544307d6",
      "date": "1962-03-15T00:00:00.000-05:00",
      "label": "15 March 1962 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/caccb62d-b943-44fe-8d7e-086b944e1e6d",
            "display": "<span>Bunny Lebowski (1927-1987). Vegan <i>banh mi kombucha williamsburg</i> offal.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2d6ab488-57db-4d5b-8fd8-cbace59501b9",
            "display": "<span>Maude Lebowski, Oglethorpe, Charles Darwin Gentrify lumbersexual mustache street chambray lo-fi craft beer pickled whatever.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ae85100f-2687-4e4d-bb4e-4739f3811cf7",
            "display": "<span>Jesus Quintana, <i>Scott Malkinson</i>, Hotblack Desiato's bodyguard Farm-to-table freegan echo knausgaard art party meh beard chartreuse.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2355e51a-1a47-42f5-a336-4c6da15154f9",
            "display": "<span>Linn Heathcote, <i>A Glass of Blessings</i>, Bantam Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b2fe49d4-c2b8-4fae-beac-d0bd2d09e745",
            "display": "<span>Ivana Hills, <i>The Lathe of Heaven</i>, Pen and Sword Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e18b1f60-3ed9-4d44-9d92-e1fc00515098",
            "display": "<span>Fr. Ana Harber, <i>The Glory and the Dream</i>, Nauka.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2261e5f2-9551-4dfb-8b6f-690900d7d654",
            "display": "<span><i>The Little Foxes</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5a3089dd-2d12-4379-b9ce-24b77c4223e7",
            "display": "<span><i>Vile Bodies</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9b50762b-c0ee-4ef8-ab28-2cf87ddfd1db",
            "display": "<span><i>Brandy of the Damned</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/547aebd3-6f00-4e3e-83c5-893f0ba32532",
      "date": "1962-05-21T00:00:00.000-04:00",
      "label": "21 May 1962 - Steppenwolf",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "Preliumtarn"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5e76ad08-6ef6-400b-a0ca-4bd7c6c9ec35",
            "display": "<span>hammock, Twelve Monkeys, Skilesland, 06 August 1967.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/be0064e2-75f5-4b29-9f5d-a2febd21978c",
            "display": "<span>tilde, <i>Bicycle Thieves</i>, Richardhaven, 27 August 1956.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e0b1507e-f710-4f40-ae42-9a7e1f641110",
            "display": "<span>vice, <i>The Treasure of the Sierra Madre</i>, Lake Dudley, 01 September 1937.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/9395fa06-6daf-452f-8cb8-b516c0a23789",
            "display": "<span>Star Wars: Episode VIII – The Last Jedi, dir. Jackie Treehorn, Vogon Constructor Fleet, Bernhardburgh, 1964-10-27.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b07a93e3-d23b-46f6-b2ab-d9bd547d3676",
            "display": "<span>The Big Lebowski, dir. Jackie Treehorn, Golgafrinchan Ark Fleet Ship B, Rippinborough, 1948-03-29.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/07404234-6d0d-46ab-8210-1a52c0d08b65",
            "display": "<span><i>Apollo</i> (1935-12-21).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/60fd2a20-42f6-4e6d-95b5-c01e381cbef0",
            "display": "<span><i>Apollo</i> (1922-09-06).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a2ffef75-7513-4299-a828-1e38627c6fb4",
            "display": "<span>Gemini (1939-03-28).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/979bc1f3-30bf-4392-94df-248d0005bb20",
            "display": "<span>Jesus Quintana, <i>Oglethorpe</i>, Mr. Prosser Listicle plaid everyday tote bag swag trust fund goth post-ironic chia.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ac537840-8274-4c5b-97d9-f92bbcffda14",
            "display": "<span>Jesus Quintana, Majikthise, Grunthos the Flatulent Bicycle rights marfa green juice wes anderson health whatever williamsburg fixie sustainable.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6e493f91-82b9-4a33-b9c1-50b2000ad467",
      "date": "1962-07-08T00:00:00.000-04:00",
      "label": "08 July 1962 - <i>The Albino</i>",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2c4debf7-925b-4779-acc4-a4d26c542bbf",
            "display": "<span>Dangrabad Beta, Plastique Tiara.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/65d6e7e9-b1f2-497e-82e5-83229db7cddb",
            "display": "<span><i>Flargathon</i>, Ginger Minj.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a965c84c-ee41-4423-8127-99b3d08dbcef",
            "display": "<span><i>Gagrakacka</i>, Jujubee.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e1d44858-3357-4955-a231-4eb4eec59006",
            "display": "<span><i>Elizabeth Hoover</i> (1910-1994). Keffiyeh irony cray pickled small batch butcher cliche stumptown.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f11c1358-3001-45f3-a002-1a791fd67a40",
            "display": "<span><i>Scott Malkinson</i> (1919-1983). Dreamcatcher five dollar toast try-hard single-origin coffee.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2ba41817-4788-4829-9c1f-7ebbdb7d36af",
            "display": "<span>Mercury (1965-09-06).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0bee3b47-271d-434c-9ccb-4c9300e04834",
            "display": "<span>The Far-Distant Oxus.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/76e9f71f-1d69-46b6-85f6-0738998ebf70",
            "display": "<span><i>I Will Fear No Evil</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9b9fe815-cf2a-4e8e-a951-1ed5378b2a71",
            "display": "<span><i>The Wives of Bath</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c4dfe2c0-3b00-45b5-96ea-710f2e990f5e",
      "date": "1962-08-17T00:00:00.000-04:00",
      "label": "17 August 1962 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6d2c7376-768d-441f-bad4-f73cbfe281de",
            "display": "<span><i>Earth</i>, Bob The Drag Queen.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/7dbd03b4-4cc2-430a-add0-9871e938e372",
            "display": "<span><i>Frogstar World B</i>, Eureka.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/dc7fb6f4-fe17-4c4f-869e-895cb1c77ebd",
            "display": "<span>Frogstar World C, Violet Chachki.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/2e603842-a6d2-44f0-81fb-97b0b17fbb0c",
            "display": "<span>Rupert.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/749658c1-572b-4ead-bb18-bc2225bd3e9e",
            "display": "<span><i>Lamuella</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cc776df5-5ffe-424d-b0ee-7961a32144f1",
            "display": "<span><i>Ibiza</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3ca3624c-1216-404d-8d0b-e89ea7417a30",
            "display": "<span>The Big Lebowski, Mario, Charles Darwin Brunch salvia mlkshk tilde before they sold out pop-up lomo green juice you probably haven't heard of them.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/55340cd5-5922-4483-b72a-cdb84fed815c",
            "display": "<span>Jesus Quintana, Elizabeth Hoover, Barry Manilow Pop-up authentic health gentrify raw denim irony gluten-free.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d0c73d64-9388-43a2-99d5-929160867b74",
            "display": "<span>The Big Lebowski, The Albino, Vroomfondel Shoreditch pour-over narwhal meh tacos tofu small batch you probably haven't heard of them.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/62b8950c-bc66-4933-b7bc-8ca0f8ebda68",
            "display": "<span><i>The Doors of Perception</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/16a04b8b-f8e4-48f8-b5df-9709ac6868e2",
      "date": "1962-09-23T00:00:00.000-04:00",
      "label": "23 September 1962 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/bf24ec90-ab0f-4f03-b7c1-7b0aa7f0e2a3",
            "display": "<span>Hotblack Desiato's bodyguard, <i>Another Lonely Christmas</i> [Miss Fame].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2a2f3fe1-6cbd-4af9-a21f-7044bbb2c4b0",
            "display": "<span>Elizabeth Hoover (1929-1996). Vinegar actually slow-carb keffiyeh.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d2594f30-957d-4504-b79b-cf6077182cb9",
            "display": "<span>Hotblack Desiato's bodyguard, <i>The Golden Bowl</i>, Translated into Frogstar World C by Ford Prefect.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8588689c-46bc-4dfe-96dc-e506fc0441cb",
            "display": "<span>Trillian, <i>Take Me With U</i>, Park <i>pabst ramps normcore church-key</i> brunch.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/87ea647a-8fa8-4b39-b609-55334733af8c",
            "display": "<span>Galaxia Woonbeam, <i>Automatic</i>, Tilde <i>90's forage retro muggle magic migas pour-over readymade</i> keffiyeh.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f2f0cd64-4435-4604-b5ec-de11289cc9aa",
            "display": "<span>Agda, <i>Cloreen Baconskin</i>, 8-bit <i>williamsburg yuccie jean shorts pug waistcoat semiotics wes anderson</i> portland.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f43e1f20-65ed-40f7-afe4-260bf4314d64",
      "date": "1963-07-11T00:00:00.000-04:00",
      "label": "11 July 1963 - The Albino",
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
            "id": "http://example.org/entities/c6c0e938-6d4b-4849-b436-75b371cb201c",
            "display": "<span>XOXO, <i>Monsters, Inc.</i>, East Manuelmouth, 24 November 1933.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/07132933-5715-4075-861d-27e7a8435904",
            "display": "<span>Brontitall, Mimi Imfurst.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/74d2f604-0e1b-423e-b9ac-0843117bd772",
            "display": "<span><i>Hawalius</i>, Delta Work.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a2453ace-9389-41f3-8fed-fd6931bbb808",
            "display": "<span>Jaglan Beta, Joslyn Fox.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/5b75e931-5eb4-4d8f-a2c1-f1657e77afef",
            "display": "<span>Msgr. Derrick Mayer, Beneath the Bleeding, Shambhala Publications.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b2ea5d47-1e27-4c65-829f-2b5397203107",
            "display": "<span>Oh! To be in England.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a4fc9c1a-7c2f-45fd-b415-854615614e13",
      "date": "1963-11-23T00:00:00.000-05:00",
      "label": "23 November 1963 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d6502688-029b-46d5-8dc2-69c095eaef16",
            "display": "<span><i>Stavromula Beta</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/030a1a99-ea5e-437e-ac8a-c4e2ae47bfc6",
            "display": "<span><i>Endeavour</i> (1927-08-08).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6eefd835-8369-431a-8c92-6a6ea31eb3b5",
            "display": "<span>Walter Sobchak, <i>The Albino</i>, Paula Nancy Millstone Jennings Helvetica readymade everyday ennui ethical ugh heirloom marfa tattooed.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1bbda61e-c903-4b33-838e-f97ee0e9d636",
            "display": "<span>Mella, When You Were Mine, Muggle magic direct trade iphone selvage chambray humblebrag bespoke.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b5f13196-482c-4cc5-8b1d-c3c4224875bc",
            "display": "<span>Pasta Fasta, Tamborine, Godard echo hammock everyday forage fingerstache celiac fixie loko.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e12497da-fc78-4d23-9c34-a0cf44f140a5",
            "display": "<span>Hillman Hunter, <i>Gold</i>, Health direct trade you probably haven't heard of them readymade lo-fi tacos schlitz.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6359dc8d-64a4-4a04-bac1-b3acdff4cc19",
      "date": "1964-08-15T00:00:00.000-04:00",
      "label": "15 August 1964 - Steppenwolf",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "<i>Evildrome Boozarama</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9209c9bf-3b4a-483b-99f3-487fa9e1c8ad",
            "display": "<span>Ford Prefect, <i>It's Gonna Be A Beautiful Night</i> [Valentina].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/be109a92-4837-4c15-a67c-51605fa09f1f",
            "display": "<span>Humma Kavula, <i>The Greatest Romance Ever Sold</i> [Mercedes Iman Diamond].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/75d280cc-7a3e-40b5-8ef8-11b436319429",
            "display": "<span><i>Cathedral of Chalesm</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/c96d5098-e59b-497e-80fa-8e7caad29d57",
            "display": "<span>Life Is Beautiful, dir. Donny, Golgafrinchan Ark Fleet Ship B, Port Andersonport, 1949-08-15.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/73a455d8-9088-4372-bdf5-f7e2f7280740",
            "display": "<span>A Passage to India.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/851e0aeb-65c6-447f-8d05-fbf7e5d533a8",
            "display": "<span>The Glory and the Dream.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/df8ebd5b-45f3-4502-aedf-35e913fa42ad",
            "display": "<span><i>Paths of Glory</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ea9f2d06-ffa5-4b9d-a283-a5c723375e02",
      "date": "1965-11-08T00:00:00.000-05:00",
      "label": "08 November 1965 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "<i>Denmark</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/952e06cb-a608-41e2-9744-2a58cfbf733a",
            "display": "<span>Charles Darwin, <i>Pretzel Body Logic</i> [Robbie Turner].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/03ac33fe-53b3-4dd4-935c-ae94de5b9a8a",
            "display": "<span><i>Sector XXXZ5QZX</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a62aa1d0-8b2d-45bd-9724-a49ae2cbd2e7",
            "display": "<span>Rupert.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d21a7538-cdc4-415c-bf9c-3d55b0edbc79",
            "display": "<span><i>Norway</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1c066758-0421-41e3-8e8a-280484c41e5a",
            "display": "<span>Endeavour (1948-07-12).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c6e1a6ce-271a-4ad0-b4bd-193df8a08052",
            "display": "<span><i>Endeavour</i> (1927-09-05).</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3a5dfdac-0e5e-4a8b-acad-6d8cad0ced2c",
            "display": "<span>Prostetnic Vogon Kwaltz, <i>17 Days</i>, Helvetica <i>try-hard locavore sustainable 8-bit tilde sriracha</i> normcore.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 18,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 2
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
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "West Goyette",
          "doc_count": 18
        },
        {
          "key": "Eastern Haley College",
          "doc_count": 15
        },
        {
          "key": "East Kentucky University",
          "doc_count": 10
        },
        {
          "key": "The Aufderhar University",
          "doc_count": 10
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 18,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 9
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "english",
          "doc_count": 3
        },
        {
          "key": "french",
          "doc_count": 2
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 18,
    "links": {
      "self": "http://example.org/letters?page=1&repositories=West+Goyette"
    }
  }
}</pre>
