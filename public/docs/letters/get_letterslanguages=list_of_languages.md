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
X-Total-Count: 15
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f85d878a113936cba0ffab5077f2c0ea&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8923ead9-9534-41fa-8819-a19455971633
X-Runtime: 2.458661
Vary: Origin
Content-Length: 32264</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/be9861fc-dc19-46ea-bc4b-e00bb24b68ff",
      "date": "1957-02-03T00:00:00.000-05:00",
      "label": "03 February 1957 - <i>Oglethorpe</i>",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/504e9dea-47e1-4e07-9e03-89218c1dafc5",
            "display": "<span>Argabuthon, Pearl.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/857115b6-2040-4312-b792-94c44fd1f68e",
            "display": "<span>Krikkit, Shuga Cain.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a73a661f-098d-4a4f-aec0-5c39d8193728",
            "display": "<span>Happi-Werld III, Delta Work.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a0d1881b-0bc2-427f-89b1-c3d0769f5454",
            "display": "<span>2001: A Space Odyssey, dir. Donny, Golgafrinchan Ark Fleet Ship B, South Lashondaville, 1967-12-16.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/fb9dcfe8-3d14-482e-8454-7fd111363da0",
            "display": "<span><i>Raiders of the Lost Ark</i>, dir. Jackie Treehorn, Vogon Constructor Fleet, North Alton, 1967-04-24.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/002c8abc-6fa0-4d6a-85d4-a1f6d261f067",
            "display": "<span>The Dude, <i>Majikthise</i>, Eccentrica Gallumbits Ramps viral deep v plaid hella loko.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/77dd97ef-2623-403e-ac3d-92d50f9449a8",
            "display": "<span>Bunny Lebowski, Mario, Majikthise Normcore kickstarter stumptown salvia.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4c831f33-dafd-4ef3-a7e2-0d8ff4a3980c",
            "display": "<span>What's Become of Waring.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/04037b34-0b13-4d8c-a3bd-34a5b4da3084",
      "date": "1958-08-24T00:00:00.000-04:00",
      "label": "24 August 1958 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5cf45a26-148d-4a6d-978f-0344041192f1",
            "display": "<span>Allosimanius Syneca, Ivy Winters.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6c1b6974-f28c-4848-9ed7-1370ffb65ece",
            "display": "<span>Magrathea, Silky Nutmeg Ganache.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fec9c493-e094-4c79-ac31-3f33c8c6689a",
            "display": "<span><i>Frogstar World B</i>, Coco Montrese.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f11ba33b-a9ad-430b-9a82-90a2eb1b4b85",
            "display": "<span><i>Ysllodins</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/19232915-a15c-47df-b720-589df6de7da7",
            "display": "<span>Enterprise (1945-03-25).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/31145f74-55e1-4ced-a152-ffc51fa91ee4",
            "display": "<span>Mercury (1968-02-28).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/183a2ce3-2e2d-4ce7-ae5a-d43ad60807bb",
            "display": "<span>Brinda Hoppe LLD, <i>Unweaving the Rainbow</i>, D. Reidel.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/390edc99-d792-401e-86f8-840d69d65726",
            "display": "<span>Kathaleen Abbott, <i>The Yellow Meads of Asphodel</i>, UCL Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ee68c6cd-c934-4fcc-b741-37f462143b10",
            "display": "<span>Mercedes Beahan, Antic Hay, Hachette Book Group USA.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ddf87db8-6c3e-48a8-a249-0d96ff24bff3",
      "date": "1958-08-31T00:00:00.000-04:00",
      "label": "31 August 1958 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4efafd92-e0a4-4173-9770-8eeb9a70ed4a",
            "display": "<span>Hillman Hunter, Can't Stop This Feeling I Got [Aquaria].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/8ca45981-085b-4ea7-945e-b8460b80a17d",
            "display": "<span>Garkbit, The Most Beautiful Girl In The World [Brook Lynn Hytes].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ba1d910a-f859-4e18-beae-275a0b002182",
            "display": "<span>Arthur Dent, I Would Die 4 U [Stacy Layne Matthews].</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4cb3c147-0e39-4210-8526-59bb86717c08",
            "display": "<span>Enterprise (1966-11-11).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/54abf195-f0c5-489b-8894-854c6afff193",
            "display": "<span>Gemini (1940-04-03).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/62248ebb-3735-4c32-bdfb-b9c9f32ef7b0",
            "display": "<span><i>Apollo</i> (1943-05-30).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6d5ca751-7c2b-4bc1-b908-88e4da5df5fb",
            "display": "<span>Donny, Oglethorpe, Wonko the Sane Vhs pickled normcore farm-to-table umami.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c7360c06-104c-44f5-9079-ee31313223bd",
            "display": "<span>Donny, Revolio 'Gearhead' Clockberg, Jr., Prostetnic Vogon Kwaltz Park kickstarter five dollar toast yolo gentrify echo.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0ba5218e-f841-4726-8e0d-1b56ddaaf20c",
            "display": "<span>Zaphod Beeblebrox, Dulce et Decorum Est, Translated into Kria by Humma Kavula.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/044bcd04-d97b-427d-8d42-15c00e40a561",
      "date": "1958-09-14T00:00:00.000-04:00",
      "label": "14 September 1958 - Majikthise",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/581c13b2-81eb-40f8-968d-cd109ec94dfb",
            "display": "<span><i>Argabuthon</i>, Alaska.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/64e62965-4317-402c-8778-e4b3cf9d1b7b",
            "display": "<span>Hawalius, Thorgy Thor.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/96bf9130-94d7-4628-802c-1ae0baaa3581",
            "display": "<span>Magrathea, Monet X Change.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/db355fb1-a233-41de-a483-6864694bdb8c",
            "display": "<span>Bunny Lebowski, Lyra Erso, Mr. Prosser Truffaut celiac scenester craft beer.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/02a2645f-1cf4-4260-bcba-afe29e5b82b9",
            "display": "<span>Shanon Schneider DO, Many Waters, Fearless Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1e403375-3e83-4bc9-8964-99f90520bdeb",
            "display": "<span>Connie Hayes, The Wives of Bath, Kessinger Publishing.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8f69ee2c-c719-4700-a976-a80bd304daef",
            "display": "<span>Eddie the Computer, Endless Night, Translated into Krikkit by Prak.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/cded6c22-de41-4fa6-a9fe-ce9164f52c35",
            "display": "<span>Grunthos the Flatulent, <i>Postern of Fate</i>, Translated into Frogstar World B by Gag Halfrunt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4934b35d-0bbe-4a50-9ed6-a0528684c7fd",
      "date": "1958-09-23T00:00:00.000-04:00",
      "label": "23 September 1958 - The Albino",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/50011744-4e64-4aba-9b5e-975062be38cf",
            "display": "<span>kombucha, Finding Nemo, Dungchester, 26 January 1939.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5b027dcf-66f6-4008-8fc7-afdcfaf198ba",
            "display": "<span>helvetica, Eternal Sunshine of the Spotless Mind, Stuartberg, 28 January 1954.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/7fca8028-8197-47a5-99a4-6477a54da141",
            "display": "<span>quinoa, <i>The Gold Rush</i>, Lake Wilburn, 06 June 1940.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/066073b6-f7c2-4724-8059-e58cc17e712c",
            "display": "<span>Challenger (1963-03-13).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7e85a05a-122f-44e1-bf2f-d45f944452c2",
            "display": "<span><i>Endeavour</i> (1929-05-25).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/27aed76b-1ace-4044-ab3d-38f619b3247d",
            "display": "<span>Alberto Kulas, The Widening Gyre, Butterworth-Heinemann.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7866262c-adfe-48f1-98d7-92731854b9a0",
            "display": "<span>Ford Prefect, Thieves In The Temple, Freegan <i>sustainable whatever offal crucifix chicharrones</i> selfies.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cbe5afb8-6e8d-4589-9795-6a1633938a03",
            "display": "<span>Trin Tragula, <i>My Name Is Prince</i>, Tilde <i>yuccie keytar cliche selvage</i> slow-carb.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/66b2672a-a466-467b-8914-6d9771a1bed8",
      "date": "1959-01-20T00:00:00.000-05:00",
      "label": "20 January 1959 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "Fenchurch Street railway station"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/439b3970-0688-4d6b-b952-a43b1800e7cf",
            "display": "<span>Random Dent, <i>Thunder</i> [Alexis Michelle].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/4b83a1c2-4ef8-4230-b9a6-a27b41c82027",
            "display": "<span>Effrafax of Wug, <i>Still Waiting</i> [Farrah Moan].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/cfb1301a-4870-4d97-a7ef-306eae3b1540",
            "display": "<span>Loonquawl, <i>Let's Go Crazy</i> [Jessica Wild].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/2a6b4b12-66cc-4871-9ee0-d72c6b987e97",
            "display": "<span><i>Catch Me If You Can</i>, dir. Donny, Golgafrinchan Ark Fleet Ship B, North Walterland, 1956-02-29.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a1de1cca-571e-4c9a-a378-5611c14dc568",
            "display": "<span>Rocky, dir. Jackie Treehorn, Vogon Constructor Fleet, New Elmira, 1947-11-06.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ce15e2c2-47d3-41a7-8086-4bb0448d8cac",
            "display": "<span><i>The Help</i>, dir. Bunny Lebowski, Bistromath, West Stephanchester, 1943-01-08.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/fe270e7e-0b37-4665-8207-0bc69045a24f",
            "display": "<span>Prostetnic Vogon Kwaltz, <i>A Glass of Blessings</i>, Translated into Xaxis by Mr. Prosser.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4ba61780-dcd2-4678-afee-13e00077a35b",
            "display": "<span>Hillman Hunter, <i>Jam Of The Year</i>, Jean <i>shorts plaid artisan authentic next level twee listicle tote bag</i> hammock.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/650a6513-805c-4c9f-a8b7-bfe6f69064ba",
            "display": "<span>Gag Halfrunt, Tamborine, Diy hammock listicle cleanse.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/84791b77-dd7c-43cc-909e-73cc9fecc88f",
            "display": "<span>Genghis Khan, <i>Money Don't Matter 2 Night</i>, Distillery celiac yolo seitan craft beer skateboard.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dc7e210a-bcc4-473a-bdaa-4afd33aadcfb",
      "date": "1959-03-11T00:00:00.000-05:00",
      "label": "11 March 1959 - <i>Lyra Erso</i>",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/59c7b228-face-492e-89fd-a09fe3abd484",
            "display": "<span>echo, <i>Star Wars: Episode VII - The Force Awakens</i>, New Oleviaborough, 13 February 1964.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b27accd1-d7d7-46a6-bca0-84cbac38bc69",
            "display": "<span>listicle, Once Upon a Time in the West, Ashleyland, 13 April 1937.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/30d843fd-af1a-468d-a8e8-943b693725e0",
            "display": "<span>Colin the Security Robot, <i>Can't Stop This Feeling I Got</i> [Latrice Royale].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/4b8b32b6-bbd8-4ce8-8563-30180dcff5b8",
            "display": "<span>Eccentrica Gallumbits, Guitar [Pandora Boxx].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/643f60bd-4d1e-4a5d-97aa-a28d0bad113f",
            "display": "<span>Fenchurch, Anotherloverholenyohead [Yara Sofia].</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0e63f886-9380-47cb-86f5-490b641d11a4",
            "display": "<span>Msgr. Wesley Ferry, <i>To Your Scattered Bodies Go</i>, Hackett Publishing Company.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a6c431d1-bcae-4e1f-810b-ad343d4bc35b",
            "display": "<span>Morgan Wisoky, A Catskill Eagle, Felony & Mayhem Press.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/17b4590e-042f-4954-a675-218acf073b4a",
            "display": "<span>Genghis Khan, <i>Pop Life</i>, Vinegar art party lumbersexual wolf kogi bitters fingerstache.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/825e3836-ab28-4932-826a-60a372226571",
            "display": "<span>Barry Manilow, Breakfast Can Wait, Kinfolk godard viral ramps mustache neutra ennui fashion axe mixtape.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bd15b77f-9625-4755-9ede-32d8fe09a989",
      "date": "1960-07-24T00:00:00.000-04:00",
      "label": "24 July 1960 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7c18df1b-e995-419e-812c-22859ed0d22a",
            "display": "<span>The Allitnils, <i>I Wish U Heaven</i> [Peppermint].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7f5a5ea1-e352-4183-821c-f2b2a7a69c16",
            "display": "<span>Prostetnic Vogon Kwaltz, <i>And God Created Woman</i> [Manila Luzon].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/7a1bd7a6-f4ec-4d71-aed5-84229f3d3335",
            "display": "<span>Majikthise (1913-1988). 90's <i>chambray quinoa migas whatever 3 wolf moon organic polaroid</i> iphone.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/466dc3a0-415e-4f61-b2dc-ab746f28e62b",
            "display": "<span>The Big Lebowski, <i>Elizabeth Hoover</i>, Emily Saunders Brunch +1 tacos skateboard.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cfc386a1-7f7b-4a76-b64a-ad7dbcaa66f2",
            "display": "<span>Bunny Lebowski, Lyra Erso, Prak Yolo street sriracha freegan hoodie fingerstache williamsburg.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1b026e82-2380-4bda-90a2-b3fdaa7fb9a1",
            "display": "<span>Mr. Kennith Runolfsdottir, Blood's a Rover, Left Book Club.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1f320e04-df8b-4a0a-9de8-0605764fd031",
            "display": "<span>Douglas Schmeler, A Confederacy of Dunces, John Blake Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/3f13e35a-46c6-453c-8d82-2ea839786667",
            "display": "<span>Terrence Balistreri, <i>The Grapes of Wrath</i>, McFarland & Company.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/db0b8dab-6435-41fc-8c5e-4941dce1aa48",
      "date": "1961-10-15T00:00:00.000-04:00",
      "label": "15 October 1961 - Lyra Erso",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "Rupert"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5f548c29-ec5d-4101-85e1-94f4ccc4d62a",
            "display": "<span>ethical, <i>Toy Story 3</i>, Marcmouth, 02 April 1961.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c26e9ce4-dfd1-4e06-b755-7393d6a1d79c",
            "display": "<span>keffiyeh, <i>Chinatown</i>, Bartellhaven, 21 April 1963.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/eac22dfc-bb27-4e38-8f23-a958157135b5",
            "display": "<span>meggings, <i>The Kid</i>, East Arieton, 16 August 1928.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/82df6358-3237-485d-ba71-444ef51c600c",
            "display": "<span>The Big Lebowski, <i>Lyra Erso</i>, Hillman Hunter Paleo typewriter pitchfork normcore lomo chia mlkshk yuccie yr.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9710049a-f1a2-4f63-8d8e-55820fb1c9aa",
            "display": "<span>Karl Hungus, Majikthise, Mr. Prosser Literally 8-bit selvage street pbr&b cold-pressed hella deep v.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a7144879-15eb-4167-bfb2-5c2aba192113",
            "display": "<span>Karl Hungus, <i>Oglethorpe</i>, Magrathean sperm whale Celiac chartreuse keytar raw denim salvia twee artisan.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0163421a-8332-4c08-bb3d-b80f16504991",
            "display": "<span>Reg Nullify, Ol' Skool Company, Waistcoat <i>irony gastropub organic thundercats retro</i> actually.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5d658245-27d5-494c-88da-e9b6637a8749",
            "display": "<span>Rob McKenna, <i>Kiss</i>, Yolo <i>marfa gastropub post-ironic synth pabst small</i> batch.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ac7f8f9c-fc61-4c10-815b-93de2f5a0bb8",
            "display": "<span>The Allitnils, Alphabet St., Thundercats <i>freegan lumbersexual roof</i> biodiesel.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1c8087b8-d13a-47d3-9cfe-30b5e81cc451",
            "display": "<span>Now Sleeps the Crimson Petal.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/dcd1910a-0c12-472b-9d16-4dd613392765",
            "display": "<span>The Way of All Flesh.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8cc93015-7845-4467-9707-dac40c7f54d3",
      "date": "1963-03-02T00:00:00.000-05:00",
      "label": "02 March 1963 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/00048c36-8334-474f-a874-993120dab137",
            "display": "<span><i>The Big Bang Burger Bar</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d4030bca-2bda-47aa-b74c-6305a5ebedc7",
            "display": "<span><i>Pleiades system</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/43c63f67-1707-43f3-a868-413651b59846",
            "display": "<span>Atlantis (1937-01-26).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9e46f841-982f-4e8d-b7e3-a9ea5c478c58",
            "display": "<span><i>Endeavour</i> (1941-01-04).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d69fb589-e477-43ae-9c1f-54fbfa3c8cd7",
            "display": "<span>Enterprise (1934-09-08).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1afebc33-f71e-4914-a112-b2b3d57398e3",
            "display": "<span>Cody Legros DO, <i>I Sing the Body Electric</i>, Pantheon Books at Random House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a0f6f797-5b78-49a2-8fca-c68f485ee176",
            "display": "<span>Lorette Altenwerth, The Torment of Others, Hachette Book Group USA.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f0b9f4a1-4cb3-4ec7-ad94-84312fa22c8a",
            "display": "<span>Sen. Tommie Braun, The Violent Bear It Away, Hodder & Stoughton.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6f4e3ed6-9726-4007-a10a-6fba35702cfd",
            "display": "<span>Effrafax of Wug, New Position, Messenger <i>bag chia hella lomo</i> viral.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9123f69b-7cfa-4995-89b3-e605d0d67141",
            "display": "<span>Trin Tragula, Scandalous!, Church-key single-origin coffee helvetica next level wayfarers distillery seitan.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c72ff387-a7d9-42ca-aa64-18d5c2372f08",
      "date": "1963-03-04T00:00:00.000-05:00",
      "label": "04 March 1963 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "The Domain of The King"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/10860b13-4a3f-4033-b19e-7b64703cbf53",
            "display": "<span>Mr. Prosser, Sexy MF [Plastique Tiara].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ca738f9c-210c-433a-8c88-7852f6ab0585",
            "display": "<span>Trillian, <i>Starfish And Coffee</i> [Monique Heart].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3f9cf24d-e3b4-4091-a519-89dc391b18de",
            "display": "<span><i>Officer Meow Meow Fuzzyface</i> (1917-1992). Echo <i>green juice celiac cardigan polaroid</i> synth.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/97470fc5-70c1-47bc-a41d-f2f23d1f3a12",
            "display": "<span><i>Officer Meow Meow Fuzzyface</i> (1926-1978). Gluten-free sartorial venmo 3 wolf moon pitchfork iphone asymmetrical selfies.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/25920082-715e-457d-ac34-c9e9bd717894",
            "display": "<span>Bunny Lebowski, Scott Malkinson, Deep Thought Skateboard waistcoat +1 cold-pressed whatever.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ea40629b-7309-4676-a59e-bb90c33df12b",
            "display": "<span>Karl Hungus, <i>Mario</i>, Marvin Offal fashion axe post-ironic stumptown raw denim street.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/077ba30b-5874-4609-b05e-83f26410d8c9",
            "display": "<span>Humma Kavula, <i>Peach</i>, Single-origin coffee five dollar toast carry pour-over.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b71fbe5a-0c41-4dbe-be87-2e27153d5bf3",
            "display": "<span>Loonquawl and Phouchg, <i>It's Gonna Be A Beautiful Night</i>, Viral microdosing 8-bit schlitz keffiyeh bitters flexitarian carry.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d452bf67-b7da-4cfb-b693-51b77edeca8e",
      "date": "1963-06-29T00:00:00.000-04:00",
      "label": "29 June 1963 - Majikthise",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "Barnard's Star"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/90f3d970-bcb2-47bd-bfc7-3e66d017c447",
            "display": "<span>mustache, <i>Terminator 2: Judgment Day</i>, Millerburgh, 29 January 1972.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e2c91a00-7ee2-44c6-b130-2d5fe35fe074",
            "display": "<span>post-ironic, Blade Runner, Port Connie, 26 April 1954.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/fbff03ef-0d00-4c2a-a932-596f8274d388",
            "display": "<span>Elvis, I Hate U [Stacy Layne Matthews].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4f256481-92aa-40b6-a877-f18ac8f83770",
            "display": "<span>The Deer Hunter, dir. Karl Hungus, RW6, New Chang, 1951-10-16.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/24e05275-2480-4c97-8d5f-4b0f98181972",
            "display": "<span><i>His Dark Materials</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9859d381-00c2-42ac-a29e-4daefdd3de44",
      "date": "1963-09-05T00:00:00.000-04:00",
      "label": "05 September 1963 - Mario",
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
            "id": "http://example.org/entities/35ea1843-2921-4f36-b189-713fc1cd6552",
            "display": "<span>blog, <i>Raiders of the Lost Ark</i>, Marishafort, 12 June 1959.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9f611d70-dd65-47ef-b442-d8b17931caac",
            "display": "<span>squid, The Lord of the Rings: The Return of the King, South Oneida, 12 August 1966.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1d4e09a5-7e1b-4155-8fe0-4bde11f397e3",
            "display": "<span>Fenchurch, Take Me With U [Trixie Mattel].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/6fffe329-f91f-4b7d-a0bb-97bdcc3c00b7",
            "display": "<span>Hactar, <i>I Love U, but I Don't Trust U Anymore</i> [Delta Work].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7a8c1e55-bc69-487d-aa47-428d4de87ec8",
            "display": "<span>Zarniwoop, Something in the Water (Does Not Compute) [Courtney Act].</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/bd1bf680-9901-4663-a248-6d37a847c6e5",
            "display": "<span>Arron Lubowitz, Some Buried Caesar, Dalkey Archive Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ed9e4a27-7a81-4bc8-90d7-e7c2aba919a4",
            "display": "<span>Bebe Wyman, <i>Of Mice and Men</i>, Ten Speed Press.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/58f67e30-d451-440e-aed3-589bff55b340",
            "display": "<span>Of Mice and Men.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7ee0ba51-26a1-4adf-8c8d-4f45396c10ab",
            "display": "<span>The Line of Beauty.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/20d978e7-369b-421a-b450-08758c5598d4",
      "date": "1963-11-06T00:00:00.000-05:00",
      "label": "06 November 1963 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "Preliumtarn"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b992dc34-5dfb-4d8d-9820-3be78e85fb56",
            "display": "<span>Gag Halfrunt, <i>Endorphinmachine</i> [Yara Sofia].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/75d7c7a6-9885-4b7c-87b9-9c1c96a37454",
            "display": "<span>Majikthise (1908-1988). Pour-over <i>skateboard yuccie cliche portland loko leggings vinyl</i> hoodie.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f023862e-cf14-4c8b-af17-571ad06cab60",
            "display": "<span><i>William T. Riker</i> (1912-1997). Normcore pitchfork vhs xoxo.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/ce269aaa-0c5c-4fd1-b0a0-878c1b1fbb8c",
            "display": "<span>Gemini (1937-02-23).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e00dd307-03b9-44de-9e14-1ddbca8b2286",
            "display": "<span><i>If Not Now, When?</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ffdca750-0f2b-4c6b-a071-825265e7341d",
      "date": "1965-10-19T00:00:00.000-04:00",
      "label": "19 October 1965 - Elizabeth Hoover",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1c7decd9-f904-4cfb-80b0-92b2d0ebb305",
            "display": "<span><i>Jaglan Beta</i>, Pandora Boxx.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/63180fac-390c-4090-af93-1f48bb903908",
            "display": "<span>Lamuella.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/02c0c7ad-b95c-4d73-8668-b236de0b5797",
            "display": "<span>Gemini (1930-02-04).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c9208fb1-7e56-4624-a28b-ba2917eee258",
            "display": "<span>Challenger (1960-04-22).</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/91c74f84-c460-42cc-a748-81fc406728c6",
            "display": "<span>Effrafax of Wug, <i>When Doves Cry</i>, Letterpress keffiyeh small batch lo-fi brunch roof pickled lomo normcore.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b9839597-af91-4bab-b953-9c1684796a7a",
            "display": "<span>Fenchurch, <i>Little Red Corvette</i>, Authentic <i>pop-up 3 wolf moon umami jean shorts street tacos actually</i> cornhole.</span>"
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
          "doc_count": 1
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 4
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
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 0
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
      "doc_count": 15,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Tennessee Institute",
          "doc_count": 9
        },
        {
          "key": "North Paucek",
          "doc_count": 7
        },
        {
          "key": "Ratke University",
          "doc_count": 7
        },
        {
          "key": "East North Carolina Academy",
          "doc_count": 5
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
          "doc_count": 10
        },
        {
          "key": "german",
          "doc_count": 9
        },
        {
          "key": "italian",
          "doc_count": 6
        },
        {
          "key": "french",
          "doc_count": 5
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
      "self": "http://example.org/letters?languages=German%2C+italian&page=1"
    }
  }
}</pre>
