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

<pre>GET /letters?start_date=1964-03-25</pre>

#### Query Parameters

<pre>start_date: 1964-03-25</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1964-03-25&gt;; rel=&#39;self&#39;
X-Total-Count: 6
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1a4bb0ddb1c0ade4f7b93ecb4e301ed3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 29755999-0fc2-4d77-aca3-2a0eec950e40
X-Runtime: 2.238189
Vary: Origin
Content-Length: 13131</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/9eaf9ffe-b5a1-46cf-b774-a2e89de793b0",
      "date": "1964-03-25T00:00:00.000-05:00",
      "label": "25 March 1964 - <i>Bunny Lebowski</i>",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3512d8c8-a967-4032-805c-a132e68ec6db",
            "display": "<span><i>Ibiza</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/659169a2-55cd-448b-93e2-da45de3240f9",
            "display": "<span>Sector ZZ9 Plural Z Alpha.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f3c62206-2d62-4ae4-b32d-1f26775dd3c6",
            "display": "<span><i>Bistro Illegal</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9f346b3d-965d-4b7e-8d83-fc562bd4bf17",
            "display": "<span>Columbia (1970-07-07).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1329ea3a-bf0f-443f-a4bf-5e83a60221a1",
            "display": "<span>Tricia McMillan, A Scanner Darkly, Translated into Blagulon Kappa by Hotblack Desiato.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bfe42602-bde9-41c7-b2bd-8c756dc86b10",
            "display": "<span>Colin the Security Robot, Have His Carcase, Translated into Jaglan Beta by Hotblack Desiato.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/65c0f246-1c5a-49e2-9bd7-e70b19c9c606",
            "display": "<span><i>Jacob Have I Loved</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/29b7459a-2096-4e87-a883-76fa84a1a318",
      "date": "1964-12-05T00:00:00.000-05:00",
      "label": "05 December 1964 - Scott Malkinson",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/01f65adc-7d45-4fc9-88b7-92402a8f8609",
            "display": "<span>fingerstache, The Truman Show, West Trangville, 29 March 1968.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3db839ab-27de-4409-b39e-cb322870ddbc",
            "display": "<span>listicle, <i>Inside Out</i>, New Hanneloremouth, 20 December 1944.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/72d830e6-f709-4da5-b254-5e31f5d7e0ed",
            "display": "<span>whatever, <i>V for Vendetta</i>, Grantland, 04 August 1960.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/42dbc441-cab4-4e35-b722-6230e2a6bd5d",
            "display": "<span><i>Chinatown</i>, dir. Donny, Heart of Gold, Greggville, 1949-11-22.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8cb3539a-6fef-4a47-b93a-46cdf1739ea4",
            "display": "<span>Before Sunrise, dir. Maude Lebowski, Billion Year Bunker, Lake Oletamouth, 1938-10-22.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8f3701ed-8209-41ec-9e48-b7c4ba679bae",
            "display": "<span><i>Monty Python and the Holy Grail</i>, dir. Bunny Lebowski, Billion Year Bunker, West Benito, 1972-05-04.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/16c0a141-97f1-4849-87ca-0851dbc95826",
            "display": "<span>The Dude, Bunny Lebowski, Galaxia Woonbeam Hoodie williamsburg freegan mumblecore you probably haven't heard of them poutine cleanse.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4799a9dd-8ebd-4d2d-a0a6-b1644b820a16",
            "display": "<span>Brandt, <i>Bunny Lebowski</i>, Frankie and Benjy Muggle magic gastropub deep v chia fingerstache xoxo pour-over.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/19f2e58a-2abd-4c05-ab89-833588a0ab9c",
            "display": "<span>Genghis Khan, The Glory and the Dream, Translated into Vogsphere by The Allitnils.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7bfc82d8-f836-4af9-8c76-2c34819594f9",
            "display": "<span>Rob McKenna, <i>As I Lay Dying</i>, Translated into Traal by Trillian.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a652f2e5-b38b-4b99-b213-7f8ff7c414e4",
      "date": "1965-02-02T00:00:00.000-05:00",
      "label": "02 February 1965 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>Frogstar system</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3b0ff141-15db-4d31-b87d-343c7ddcf726",
            "display": "<span>Marvin, Automatic [Bianca Del Rio].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d5084160-8f14-4ee7-85a1-3e571fdbaaf1",
            "display": "<span>Agrajag, 319 [Nina Bonina Brown].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/bf233c7a-5de5-435a-a20a-2485db17d46a",
            "display": "<span>City of God, dir. Jesus Quintana, Heart of Gold, South Carole, 1960-08-31.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f48c9e20-e226-4449-84cb-8e5e37975645",
            "display": "<span>The Lord of the Rings: The Fellowship of the Ring, dir. Maude Lebowski, RW6, Robmouth, 1930-05-29.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f89ea0b0-1cb1-48ae-931c-d4eccbf64727",
            "display": "<span><i>Beauty and the Beast</i>, dir. Bunny Lebowski, RW6, Titusbury, 1933-07-22.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1663005b-988c-48ba-9f34-64dc823b5979",
            "display": "<span>Mercury (1944-11-25).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/27e5dd25-a4ab-4a68-aac9-2866a450eec4",
            "display": "<span><i>Gemini</i> (1942-03-19).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/bb860ff5-56ef-4eab-9296-12f5b0793a48",
            "display": "<span>Orion (1963-09-16).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/9015e50a-01a5-4cd1-8f62-6235b122dbe1",
            "display": "<span><i>Number the Stars</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/90917455-48a4-4b7f-873d-233692812871",
            "display": "<span><i>Blood's a Rover</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dc184b34-ef00-4595-ae67-10d6352e1aea",
      "date": "1965-09-28T00:00:00.000-04:00",
      "label": "28 September 1965 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/092b3a73-3d5a-491b-a3b0-281303724de4",
            "display": "<span><i>Dangrabad Beta</i>, Shangela Wadley.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f013b6e1-6dd7-410f-992a-9ff0bdc33a99",
            "display": "<span><i>Traal</i>, Robbie Turner.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/5593c1af-5f85-4ca9-ae92-b402ead6a6a5",
            "display": "<span><i>Bistro Illegal</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fe1cb62f-2efb-44f0-a897-ebb8a83d2a90",
            "display": "<span>Stavro Mueller Beta.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/075261aa-a9c9-4a2a-9365-14fd82367a78",
            "display": "<span>The Allitnils, <i>The Sun Also Rises</i>, Translated into Broop Kidron 13 by Ford Prefect.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/88332143-b8be-42ae-b80a-25c7bc2b7eff",
            "display": "<span>Tricia McMillan, <i>The Last Temptation</i>, Translated into Damogran by Hotblack Desiato's bodyguard.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/25a6bce0-2923-4af7-8e6a-50cbdcc6bd07",
            "display": "<span><i>Now Sleeps the Crimson Petal</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e677e163-ce9f-4d6e-9ff7-ba3b21b300c7",
            "display": "<span>A Time to Kill.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/147da50a-fafc-40d7-8cc1-d41f72d948cd",
      "date": "1965-12-02T00:00:00.000-05:00",
      "label": "02 December 1965 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/68c4f5d3-0890-4d8d-a168-d7e112f5499b",
            "display": "<span>Damogran, Vanessa Vanjie Mateo.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/942216db-8bfd-4b39-acb5-bc982602479f",
            "display": "<span><i>Xaxis</i>, Blair St. Clair.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3ee56799-1bd5-42ac-9e28-1282fc1dcd09",
            "display": "<span>Bunny Lebowski, <i>Lyra Erso</i>, Fenchurch Gentrify lumbersexual shabby chic sustainable pinterest.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/49fd6a86-5065-476d-8888-46c28a1677d3",
            "display": "<span>Majikthise, Baltimore, Venmo ramps etsy selfies synth.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ee45192c-ad2d-456b-b6ab-9bd39a17d130",
            "display": "<span>Galaxia Woonbeam, <i>Uptown</i>, Kitsch <i>cold-pressed freegan normcore quinoa schlitz next</i> level.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/33a4e808-d0b5-4529-a8b8-547037729db7",
            "display": "<span>The Heart Is Deceitful Above All Things.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8a31e153-e161-4442-a212-19e980fa5688",
      "date": "1965-12-06T00:00:00.000-05:00",
      "label": "06 December 1965 - Lyra Erso",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/29e75fc2-8637-4a73-ab43-8627fbb99eb4",
            "display": "<span>distillery, <i>Into the Wild</i>, Kertzmannburgh, 15 May 1945.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/51d5d6f5-4ddd-4f6c-908e-316d49df2840",
            "display": "<span>cray, Taxi Driver, Austinside, 05 September 1966.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/70b25c2f-0000-4db8-b6d7-186dd58433d8",
            "display": "<span>tofu, Sholay, Port Jordanland, 29 October 1965.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e7590885-460c-4143-a5b3-0266aa7e35fc",
            "display": "<span>Grunthos the Flatulent, <i>How Come You Don't Call Me Anymore?</i> [Willam].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/09c2e7ea-da3f-4990-900b-f82ace0ec93b",
            "display": "<span>Lyra Erso (1911-1987). Kinfolk <i>chillwave xoxo art party polaroid</i> banjo.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e38458ff-50fa-4228-a41f-94ac7d8e4fcb",
            "display": "<span><i>William T. Riker</i> (1905-1975). Heirloom <i>pop-up selvage selfies wes anderson</i> hoodie.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0a6779ef-8d2c-454a-99a9-20a1b4921472",
            "display": "<span>Dan Streetmentioner, <i>I Love U, but I Don't Trust U Anymore</i>, Meditation vegan fashion axe jean shorts letterpress freegan.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e4714dcb-c5fe-4437-a331-0e7e859c0e42",
            "display": "<span>Fenchurch, Paisley Park, Listicle 90's hella kinfolk cold-pressed brooklyn.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 6,
      "buckets": [
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 4
        }
      ]
    },
    "repositories": {
      "doc_count": 6,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Southern Arkansas Academy",
          "doc_count": 4
        },
        {
          "key": "Northern Williamson",
          "doc_count": 3
        },
        {
          "key": "West Wyoming University",
          "doc_count": 3
        },
        {
          "key": "Cormier Academy",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "doc_count": 6,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 3
        },
        {
          "key": "german",
          "doc_count": 2
        },
        {
          "key": "italian",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 6,
    "links": {
      "self": "http://example.org/letters?page=1&start_date=1964-03-25"
    }
  }
}</pre>
