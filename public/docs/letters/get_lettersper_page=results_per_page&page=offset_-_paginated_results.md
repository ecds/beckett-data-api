# Letters API

## GET /letters?per_page=:results_per_page&amp;page=:offset - Paginated results

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

<pre>GET /letters?page=2&amp;per_page=10</pre>

#### Query Parameters

<pre>page: 2
per_page: 10</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=2&amp;per_page=10&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;first&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;next&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;prev&#39;
X-Total-Count: 30
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0eb095c00c7b32b89cd403c0aed3d207&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8b3ce1b2-02a9-432a-96cf-59b07b0b9b01
X-Runtime: 1.989238
Vary: Origin
Content-Length: 20980</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/6fe1c3b6-18d4-4785-a53c-5344a7eaadf5",
      "date": "1960-04-02T00:00:00.000-05:00",
      "label": "02 April 1960 - Miracle Max",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9ee4112f-fa1b-466e-be3b-e6549bda6094",
            "display": "<span><i>Scary Terry</i> (1902-1994). Paleo poutine single-origin coffee flannel diy selvage.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/34d99e11-306d-418f-b5c8-d00807bd6d95",
            "display": "<span><i>Data</i> (1920-1989). Kitsch <i>pickled 8-bit chicharrones health try-hard waistcoat ramps wes</i> anderson.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/cdd12c1a-2970-482b-8fa5-30ef43f130e6",
            "display": "<span><i>Belgium</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e4dd4eb3-b946-4116-a52c-37cd213023fb",
            "display": "<span><i>Islington</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f8575e80-fe8b-40ab-a0d6-b21247050fb9",
            "display": "<span>Hacksaw Ridge, dir. Donny, Krikkit One, Connietown, 1965-03-25.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a044ee16-a390-4808-96d2-cb16d7e2d573",
            "display": "<span>Donny, Colin the Security Robot, Frankie and Benjy Aesthetic kogi freegan lo-fi hoodie shabby chic diy truffaut trust fund.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/97f304be-698a-49b4-aae9-777bd9202431",
            "display": "<span>Walter Sobchak, <i>Otto Aquarius</i>, Random Dent Authentic small batch fingerstache master offal mustache irony hella chia.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f89d284a-0882-44f4-aa9a-72247bee16c3",
      "date": "1960-12-16T00:00:00.000-05:00",
      "label": "16 December 1960 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cd082fa7-830d-4e19-9dd6-e84005f014dc",
            "display": "<span>Butterscotch Horseman (1916-1974). Keffiyeh quinoa flannel cred.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/075d26ce-1eb0-4fe8-b614-31dbb25600fb",
            "display": "<span>Into the Wild, dir. Walter Sobchak, RW6, South Jeroldstad, 1925-05-29.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ede440b0-6758-4a68-b04d-9314676aae0d",
            "display": "<span><i>The Help</i>, dir. Karl Hungus, Billion Year Bunker, Schowalterton, 1964-07-19.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0b0656dc-3650-4cca-91eb-ae51ed34def5",
            "display": "<span>Endeavour (1962-04-01).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/61c0003e-c7fc-4eee-bae3-5ba28a6647c7",
            "display": "<span>Tirra Lirra by the River.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e6ff6b32-2f5c-4113-9020-82d07df72d80",
      "date": "1961-06-07T00:00:00.000-04:00",
      "label": "07 June 1961 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e3b8a874-ea57-4ab2-9894-388b6cdd62ae",
            "display": "<span>Magrathea, Thorgy Thor.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8e496cb8-6d7f-425c-998b-5cf911f1e963",
            "display": "<span>Argabuthon, Valentina.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8f99b500-114c-482e-82d8-55922fb80d3a",
            "display": "<span>Santraginus V, Kameron Michaels.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9fe692b7-3155-4689-83fb-ced2da9e0d8f",
            "display": "<span>Malcolm Ernser, <i>The Yellow Meads of Asphodel</i>, Book Works.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/98db474d-0a98-460a-81da-751a01638a0e",
            "display": "<span>The Allitnils, Behold the Man, Translated into Blagulon Kappa by Hactar.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a2de8402-4d5f-4974-ac31-a9063938464d",
            "display": "<span><i>Time of our Darkness</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/2ce2f482-a5a3-4bc8-bfca-3f178017e2de",
            "display": "<span>Things Fall Apart.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e8ff6151-9f7b-403c-be8f-6364b33df52f",
      "date": "1961-07-20T00:00:00.000-04:00",
      "label": "20 July 1961 - Colin the Security Robot",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "Stavro Mueller Beta"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/842e4527-9679-43d0-a3a6-071f50e93461",
            "display": "<span><i>Frogstar World A</i>, Coco Montrese.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d785f16b-9aef-4ab3-9821-96f6b359dfbf",
            "display": "<span><i>Poghril</i>, Sahara Davenport.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/207a7e6b-049a-4049-8618-da0aec301199",
            "display": "<span>Homer Simpson (1910-1973). Listicle <i>lumbersexual gastropub leggings trust fund shoreditch</i> blog.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a52d5725-1c58-41f3-93a5-1a948e3b0ff8",
            "display": "<span><i>Fenchurch Street railway station</i>.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d5280b97-bf79-4921-9683-cd5cbba52e45",
            "display": "<span>Dan Streetmentioner, Screwdriver, Ethical cleanse bitters single-origin coffee kombucha.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/139cba3e-a23b-4d85-890a-cd4e07287bb0",
            "display": "<span>Vroomfondel, <i>Computer Blue</i>, Heirloom forage tattooed roof whatever stumptown.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c0a200af-b55d-4ad9-9b05-0f063f817e87",
      "date": "1962-01-13T00:00:00.000-05:00",
      "label": "13 January 1962 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ecb70f15-4d0b-4c4d-a66e-a8c3b79d6a69",
            "display": "<span>bitters, 3 Idiots, North Willenachester, 05 May 1928.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/86b8da1c-d8da-4b54-9c52-ee1eeec7671b",
            "display": "<span>master, Metropolis, West Devora, 29 August 1944.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c8722f75-4be4-46af-a21e-f4ea72cce0d0",
            "display": "<span>Galaxia Woonbeam, <i>17 Days</i> [Katya].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bbb5f633-964e-4f95-8759-e4522087f161",
            "display": "<span>Humma Kavula, <i>Still Waiting</i> [Alexis Michelle].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c66a02a6-c428-43ec-9c28-9e00cda36ad4",
            "display": "<span>Effrafax of Wug, Bambi [Cynthia Lee Fontaine].</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6313cb8f-4eb8-4edb-916e-b9a426011390",
            "display": "<span>Karl Hungus, <i>Homer Simpson</i>, Max Quordlepleen Waistcoat slow-carb franzen hashtag typewriter synth cornhole tumblr.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9602c406-0bc1-4bf5-96e5-07ca3f8650bc",
            "display": "<span>Rep. Nathanael Moen, The Golden Apples of the Sun, D. Reidel.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5992ea59-ed8e-4f77-8e06-456a7e7d4ccf",
      "date": "1962-01-17T00:00:00.000-05:00",
      "label": "17 January 1962 - Leia Organa",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/71a05592-313a-4839-bfc2-6b5208894aa2",
            "display": "<span>swag, <i>Once Upon a Time in the West</i>, Darwinborough, 06 June 1965.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/32a8c2b7-c935-426e-9258-55c2a3920ced",
            "display": "<span><i>Fallia</i>, Delta Work.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/65ecbc20-8094-4eed-9391-26c30009ec29",
            "display": "<span>Sesefras Magna, Roxxxy Andrews.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3e1e1853-0d3d-4909-a630-778686d2d027",
            "display": "<span><i>Space</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/0ae96ef8-7664-4ef6-8267-3081e5f4e5c8",
            "display": "<span>Highgate Cemetery.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b3b53151-64fc-427c-9a0d-f801d9cb52e8",
            "display": "<span>Horsehead Nebula.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7852486c-2fa4-474f-8bb3-78ce80ffcb1e",
            "display": "<span>Discovery (1946-08-09).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/5d93befc-87ab-49c3-94c2-03104d39b7a0",
            "display": "<span>Discovery (1966-06-03).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/08f9f7bd-813a-4f29-89f8-9fc043672ff4",
            "display": "<span><i>Gemini</i> (1929-09-27).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/eea544a1-d04f-4786-a531-acd3bf8f15dc",
      "date": "1962-02-24T00:00:00.000-05:00",
      "label": "24 February 1962 - <i>Data</i>",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/d681e1dd-ce4a-4e2a-882d-3040d56da8a6",
            "display": "<span>authentic, <i>The Maltese Falcon</i>, Antoniaberg, 22 August 1953.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f2c2d9c6-cafe-4821-8969-5194caea656a",
            "display": "<span>mustache, Toy Story 2, Beckerfort, 19 August 1927.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8258824b-fa0d-472b-909a-0df1da71249d",
            "display": "<span>synth, The Good, the Bad and the Ugly, Buckridgemouth, 14 February 1935.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e486cc9b-48cc-4b0a-83de-e1a48f1f2c80",
            "display": "<span>Eddie the Computer, <i>Crimson and Clover</i> [Trinity K Bonet].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/14411787-aaac-409d-8546-df6ac9b708a4",
            "display": "<span>Gag Halfrunt, <i>I Love U, but I Don't Trust U Anymore</i> [Brook Lynn Hytes].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f368fa3c-525f-4db9-98c0-9e2417d39577",
            "display": "<span><i>Mario</i> (1914-1994). Polaroid <i>etsy pickled cronut salvia hashtag raw denim</i> williamsburg.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6361bbf6-ff5f-4bd2-9cd7-8d0b1bdf40e8",
            "display": "<span><i>Leia Organa</i> (1900-1992). Bushwick <i>pinterest chillwave heirloom hella crucifix</i> church-key.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/17426332-44a1-4225-bc6b-eb1e72ffed87",
            "display": "<span><i>Discovery</i> (1961-10-01).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3d4926b6-3f52-4dad-a5dc-632bec584a0d",
      "date": "1963-07-01T00:00:00.000-04:00",
      "label": "01 July 1963 - Miracle Max",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/dc3c1a54-a29b-4abf-84a9-101db4c2e65e",
            "display": "<span>ugh, <i>The Maltese Falcon</i>, West Shadport, 15 August 1923.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b8ec0fd3-2778-4ade-8599-9077365768f0",
            "display": "<span>squid, <i>Oldboy</i>, Langworthtown, 09 April 1972.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/03515439-3c7f-4c1c-b8f4-ec99da91392e",
            "display": "<span>Argabuthon, Jessica Wild.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/12540b9a-7039-499a-a5a1-50e26b62f50a",
            "display": "<span>Viltvodle VI, Alyssa Edwards.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6a66f919-e822-4bd2-b8e4-23cab4fd18be",
            "display": "<span>Brandt, Scary Terry, Trin Tragula Food truck art party skateboard vinegar venmo yr.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/542d3629-a9a4-4cf1-8dc7-67c43880a6b9",
            "display": "<span>The Big Lebowski, Mario, Frankie and Benjy Humblebrag vinyl listicle biodiesel banh mi.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e3fd00ea-30d0-4216-bbc1-d9ed75701faa",
            "display": "<span>Walter Sobchak, Data, Rob McKenna Seitan etsy yolo try-hard normcore.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/47f5ed2f-43a6-4c9b-a1c1-ce96b29e1fad",
            "display": "<span>Vroomfondel, Under The Cherry Moon, Church-key <i>seitan health gentrify pug 3 wolf moon</i> gastropub.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cf163a1f-57c0-4f6e-98a4-d831c353b247",
            "display": "<span>Arthur Dent, Eye No, Kale <i>chips kitsch hella shoreditch</i> twee.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/436c865e-81c9-4af9-ba16-323f92cc292c",
            "display": "<span>Humma Kavula, <i>Baltimore</i>, Disrupt quinoa direct trade cold-pressed organic brooklyn cardigan master deep v.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b07f946f-1219-49e3-8458-eda1193533de",
      "date": "1963-08-10T00:00:00.000-04:00",
      "label": "10 August 1963 - <i>Colin the Security Robot</i>",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1adcc243-4766-40a9-b866-55ef7d4eb086",
            "display": "<span>meggings, Gone Girl, Ayannaton, 04 July 1928.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/0aa92401-6eaf-4aa7-8122-640c2cf2979f",
            "display": "<span>portland, <i>Fight Club</i>, Gleichnerchester, 14 April 1956.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8f390b5c-864d-440a-b5dc-3ea06a3f992f",
            "display": "<span><i>Columbia</i> (1932-02-20).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/bf7c65b3-35d5-4135-bc09-8c03d0620022",
            "display": "<span>Discovery (1971-04-10).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/addc710d-b14d-4c7f-814f-580ad8b8464c",
            "display": "<span>Mercury (1930-11-15).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0831e279-e351-42ea-b7c2-6a4ab8d0e214",
            "display": "<span>Jesus Quintana, Homer Simpson, Lunkwill and Fook Offal yr keffiyeh try-hard.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9063a670-c1a1-448b-9a9f-f276a8cec948",
            "display": "<span>Donny, <i>Ned Gerblansky</i>, Wonko the Sane Carry synth stumptown pinterest cleanse whatever artisan selfies.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ff36f1e9-7e92-4781-bf80-8f514e983c66",
            "display": "<span><i>For a Breath I Tarry</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5b7c48f5-a94a-4a70-bd5b-0072cc1e8043",
            "display": "<span><i>The Stars' Tennis Balls</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/74ed9355-b9e9-4b3f-bfd8-8608b2c3c78d",
      "date": "1963-08-24T00:00:00.000-04:00",
      "label": "24 August 1963 - Data",
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
            "id": "http://example.org/entities/edf5bec3-0490-49dc-9058-88f594e36f44",
            "display": "<span>Hactar, <i>Scandalous!</i> [Detox].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/050fe156-cd13-4e70-be95-6a14ba8007c4",
            "display": "<span>Frankie and Benjy, Thieves In The Temple [Milk].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/41559f26-90cb-435d-93e8-0f472eb998c8",
            "display": "<span>Gail Andrews, <i>When We're Dancing Close And Slow</i> [Coco Montrese].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/efb25661-3795-4b08-88c1-ce03b045bfb1",
            "display": "<span>Network, dir. Karl Hungus, RW6, Lynnberg, 1948-01-17.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/cbd959be-4f4e-4385-9ff0-f5bcccc2a1c6",
            "display": "<span>The Usual Suspects, dir. The Big Lebowski, Golgafrinchan Ark Fleet Ship B, Mitchellside, 1955-12-04.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/00fd3903-7192-4268-9925-0744f317de65",
            "display": "<span><i>Scarface</i>, dir. Bunny Lebowski, Golgafrinchan Ark Fleet Ship B, East Samualmouth, 1940-11-30.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/12106c8e-2206-486e-8d3c-80ea9cfd7c7d",
            "display": "<span>Marylin Schuster DC, <i>Paths of Glory</i>, Anova Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fe81d547-66c0-4cf2-a988-4d6a8f660b39",
            "display": "<span>Jerrod Doyle MD, Tirra Lirra by the River, Indiana University Press.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0e8eba6d-7c4e-40bf-9854-abe34e67550b",
            "display": "<span><i>Sleep the Brave</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/3cff14dc-b334-4cf5-ae22-99143e0e2ef4",
            "display": "<span>This Side of Paradise.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 30,
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
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
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
          "doc_count": 5
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 4
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
          "key": "Southern Roob",
          "doc_count": 15
        },
        {
          "key": "West Bogan",
          "doc_count": 15
        },
        {
          "key": "McDermott Institute",
          "doc_count": 14
        },
        {
          "key": "South Ledner",
          "doc_count": 11
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
          "doc_count": 11
        },
        {
          "key": "italian",
          "doc_count": 10
        },
        {
          "key": "german",
          "doc_count": 5
        },
        {
          "key": "french",
          "doc_count": 4
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 10,
    "page_count": 3,
    "total_count": 30,
    "links": {
      "self": "http://example.org/letters?page=2&per_page=10",
      "first": "http://example.org/letters?page=1&per_page=10",
      "last": "http://example.org/letters?page=3&per_page=10",
      "next": "http://example.org/letters?page=3&per_page=10",
      "prev": "http://example.org/letters?page=1&per_page=10"
    }
  }
}</pre>
