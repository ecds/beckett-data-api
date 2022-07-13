# Letters API

## GET /letters?start_date=:YYYY-MM-DD&amp;end_date=:YYYY-MM-DD - On or Between Dates

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

<pre>GET /letters?start_date=1959-08-11&amp;end_date=1965-04-29</pre>

#### Query Parameters

<pre>start_date: 1959-08-11
end_date: 1965-04-29</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1965-04-29&amp;page=1&amp;start_date=1959-08-11&gt;; rel=&#39;self&#39;
X-Total-Count: 22
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6b09addf958754b89266cafcb734c81f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6e07d182-2dfb-4b80-85c8-f04fccee4c28
X-Runtime: 2.375119
Vary: Origin
Content-Length: 45003</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/c8384f11-35e3-4733-b560-c858848068f4",
      "date": "1959-08-11T00:00:00.000-04:00",
      "label": "11 August 1959 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Rupert</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/66f8b6be-17bb-42af-87ec-c8c2acf4b1b9",
            "display": "<span>Nano, Violet Chachki.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3f998ae9-d810-4b74-b346-a89db924c9a7",
            "display": "<span>Bunny Lebowski (1925-1983). Vinegar you probably haven't heard of them schlitz locavore messenger bag meggings wes anderson art party fanny pack.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/a97400c5-3705-4495-bb77-158e8d8b2d0b",
            "display": "<span>Lyra Erso (1908-1980). Tofu <i>vegan typewriter cornhole bespoke swag</i> poutine.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c0013bc3-df97-438f-8804-e096ac085186",
            "display": "<span><i>Scott Malkinson</i> (1912-1990). Swag chicharrones stumptown cray mustache whatever artisan 8-bit single-origin coffee.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0681bfbf-25cb-4222-bf36-b20d464149fa",
            "display": "<span>Dan Streetmentioner, <i>The Green Bay Tree</i>, Translated into Fallia by Rob McKenna.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/46016a66-b61b-498f-a5f8-6bfbdd01cadc",
            "display": "<span>Genghis Khan, <i>Look Homeward, Angel</i>, Translated into Poghril by Phouchg.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/70c48eac-e0ae-4b42-83e5-50617c47553a",
            "display": "<span>The Last Enemy.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0629eba6-3574-4b05-8447-43f511b41c93",
      "date": "1959-10-07T00:00:00.000-04:00",
      "label": "07 October 1959 - <i>Officer Meow Meow Fuzzyface</i>",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/b88f9552-da87-44c5-8786-560cab59491d",
            "display": "<span>Fenchurch Street railway station.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c00115f0-1373-46bb-9b66-2339d30dc4eb",
            "display": "<span><i>Arthur Dent's house</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fc085610-f550-43d5-90df-b704c3874a88",
            "display": "<span>Sector ZZ9 Plural Z Alpha.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6356196e-17fe-45c0-9dd9-f37db03c67f6",
            "display": "<span>Star Wars: Episode IX – The Rise of Skywalker, dir. Bunny Lebowski, Heart of Gold, East Abraham, 1924-10-26.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1b64581c-f368-4e05-99a6-005e7c1fe2ae",
            "display": "<span>Curtis Hirthe, In a Dry Season, Open Court Publishing Company.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/3ebecea1-be73-41db-9e22-1625608f0490",
            "display": "<span>Fr. Kieth Stiedemann, <i>Nectar in a Sieve</i>, Carlton Publishing Group.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f0d2cd6f-04a6-45e7-af89-e3bc4bbebe21",
            "display": "<span>Jann Upton, The Daffodil Sky, Hawthorne Books.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ae026ca7-3505-4f25-9d7c-4f3462193239",
            "display": "<span>Oolon Colluphid, I Feel For You, Umami <i>master bespoke readymade hella wes anderson artisan chillwave</i> scenester.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/83180d74-cf30-4cc2-8df8-2a9802416f91",
      "date": "1960-01-04T00:00:00.000-05:00",
      "label": "04 January 1960 - William T. Riker",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1b663369-fcdf-4b94-98d3-6d5695d98918",
            "display": "<span>kitsch, Stalker, Toshastad, 18 October 1925.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/775db8a1-4e07-451a-9021-2fadaf630e70",
            "display": "<span>street, Toy Story 3, West Dominickview, 16 May 1947.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b6f90c89-46e3-49b5-b6ac-13748a3065e2",
            "display": "<span>shoreditch, The General, New Harleyfurt, 25 July 1934.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3e2872af-e1d3-4cc1-9639-f4cc35d81b27",
            "display": "<span>Lintilla, Cream [Alaska].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/2e3c5379-4437-4a16-923e-5c28bbfbd7a6",
            "display": "<span><i>A Clockwork Orange</i>, dir. Bunny Lebowski, Billion Year Bunker, North Ezekielberg, 1935-10-24.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1cabc4de-7ae0-4de1-91ab-9c108babfdb7",
            "display": "<span>Apollo (1957-10-31).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f62a8ae0-3f15-4485-a5b0-c936e7a50fba",
      "date": "1960-03-22T00:00:00.000-05:00",
      "label": "22 March 1960 - <i>Bunny Lebowski</i>",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Kakrafoon Kappa</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/83c5edb8-e6ae-4a61-a8d8-b41ab3d6269a",
            "display": "<span>Happi-Werld III, Dida Ritz.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a7f8fb4e-3073-4aa3-a511-ca886166e3ec",
            "display": "<span><i>Argabuthon</i>, BenDeLaCreme.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/09d52459-5e05-493d-b7e8-a956404fc100",
            "display": "<span><i>Elizabeth Hoover</i> (1925-1976). Lumbersexual bushwick banh mi brunch.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8254083d-2852-4e81-83dd-17fd30ced826",
            "display": "<span>Star Wars: Episode VII - The Force Awakens, dir. Bunny Lebowski, Bistromath, Haagshire, 1967-11-04.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2add6043-3cfa-4403-9069-4b33dddad206",
            "display": "<span><i>Endeavour</i> (1957-08-31).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9ddac3a7-b09c-48d9-952e-50754543539c",
            "display": "<span>Orion (1950-10-22).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9fd9e36a-22e4-403c-992a-42aec3719b3e",
            "display": "<span><i>Mercury</i> (1960-01-24).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0e60cc0c-78e4-4776-aa14-80292628db25",
      "date": "1960-08-23T00:00:00.000-04:00",
      "label": "23 August 1960 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "Ysllodins"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c90a3d6d-d443-4988-b09b-e6fc25b77dae",
            "display": "<span>Lunkwill and Fook, 3 Chains o' Gold [Valentina].</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/53f70959-4d59-400a-a608-5de0ec81db0e",
            "display": "<span>Apollo (1930-08-25).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/72472465-ebc2-41a0-af3a-1978c1083968",
            "display": "<span><i>Atlantis</i> (1925-02-25).</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5512497d-cda1-4391-a3b6-dda1412fc223",
            "display": "<span>Mella, I Feel For You, Cred cliche twee truffaut roof chambray meh franzen.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e3bdd628-c8c6-4c3c-93bd-e2e2d816d812",
            "display": "<span>Eccentrica Gallumbits, <i>New Position</i>, Vice humblebrag godard brooklyn.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e8b4e7a6-6bf1-4647-bba8-30ba70a1f69b",
            "display": "<span>Garkbit, Computer Blue, Occupy franzen hella five dollar toast synth kogi listicle.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/37e6859c-3f64-4411-ab8a-f7fd15dd3f5a",
            "display": "<span>All Passion Spent.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/67a9e851-b762-4e32-b3f6-acfbf411daba",
            "display": "<span><i>Nine Coaches Waiting</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/dd26c057-a925-4065-876d-cd45ccae65e1",
            "display": "<span><i>The Lathe of Heaven</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f55d4b62-32cd-46c0-82ee-bb523920b707",
      "date": "1960-11-29T00:00:00.000-05:00",
      "label": "29 November 1960 - <i>The Albino</i>",
      "recipients": [
        "The Albino"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c1d108e4-0fb4-48bb-83df-1fd73f89be5d",
            "display": "<span>Max Quordlepleen, <i>I Hate U</i> [Pearl].</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0e0356fa-97da-4f35-b96f-abb904c5c03e",
            "display": "<span>The Hon. Carolynn Dietrich, Clouds of Witness, Reed Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1578f3ee-00cc-40a1-9d91-e72c0c8f9d35",
            "display": "<span>Andreas Feil, <i>Many Waters</i>, Bison Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/273c5e01-dfb0-47bf-ba92-c277b12924d6",
            "display": "<span>Nakisha Goodwin V, <i>For a Breath I Tarry</i>, Focal Press.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/408f6974-ed39-47c1-88fb-62251b664695",
            "display": "<span>Magrathean sperm whale, <i>The Cricket on the Hearth</i>, Translated into Preliumtarn by Elvis.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9f5088be-3bf5-44fe-81a9-b0096919394e",
            "display": "<span>Reg Nullify, Blue Remembered Earth, Translated into Xaxis by Trillian.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/28367478-70b6-4512-a748-c7a95c47c5e2",
            "display": "<span>Ford Prefect, Head, Neutra artisan craft beer yuccie +1 pork belly forage godard.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1cda50d0-77c3-4637-a1c1-4fcc4b22f7db",
      "date": "1961-04-19T00:00:00.000-05:00",
      "label": "19 April 1961 - Lyra Erso",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/04647c4b-84cb-49a9-b6c8-daaae27c1115",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1900-1973). Meditation hella authentic chartreuse organic small batch portland viral pork belly.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5b09f486-7616-46df-84cd-b133f1fcdbf6",
            "display": "<span>Officer Meow Meow Fuzzyface (1906-1970). Whatever loko skateboard aesthetic chambray pitchfork stumptown forage diy.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ac3db406-e8c2-4977-acc5-be0288ef5b63",
            "display": "<span><i>Officer Meow Meow Fuzzyface</i> (1901-1983). Meggings <i>quinoa tattooed migas hella leggings skateboard pitchfork</i> lo-fi.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2b3f4814-6d9c-4866-8718-123f01d3ee8a",
            "display": "<span>Dusty Jones, <i>Arms and the Man</i>, Godwit Press.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3fc1d173-020d-4f6c-81f6-a11b66f36611",
            "display": "<span>Majikthise, Beneath the Bleeding, Translated into Magrathea by Barry Manilow.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/af74267d-b9c0-4e75-bc79-9499c316bc38",
            "display": "<span>Eccentrica Gallumbits, Blithe Spirit, Translated into Viltvodle VI by Yooden Vranx.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ec83dbf9-5f46-4c81-bd41-f21e55d7b7c3",
            "display": "<span><i>The Painted Veil</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/771e8361-baf1-46b6-8ba5-8e373df354f2",
      "date": "1961-05-10T00:00:00.000-04:00",
      "label": "10 May 1961 - <i>Revolio 'Gearhead' Clockberg, Jr.</i>",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "<i>Milliways</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/84d90503-36f4-4cb8-8b2d-0f40219a7d92",
            "display": "<span>aesthetic, <i>Mr. Smith Goes to Washington</i>, New Devonton, 09 March 1925.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/86a26a35-7724-4434-987c-be79fb8a434d",
            "display": "<span>lo-fi, <i>Sunset Blvd.</i>, New Sandy, 12 June 1968.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/da285333-c58a-4b2d-9824-365ec8325da0",
            "display": "<span>hashtag, <i>La La Land</i>, North Neelyview, 18 July 1929.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/afc75c6a-5f1d-4d24-823a-d3d48b317930",
            "display": "<span>Magrathean sperm whale, Automatic [Brook Lynn Hytes].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/dce591fc-8828-4ec9-8008-d8311fd12d22",
            "display": "<span>Tricia McMillan, The Most Beautiful Girl In The World [Phi Phi O'Hara].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ee25bde9-9c63-42d4-b141-03c055ea50c5",
            "display": "<span>The Allitnils, Let's Go Crazy [Morgan McMichaels].</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/04e8a586-f102-4d01-9b15-8b14dcf8a19d",
            "display": "<span>Jesus Quintana, <i>Mario</i>, Rob McKenna Flexitarian kogi jean shorts mumblecore brunch ethical.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/7f294e3d-c29b-4c56-b801-0bf7a64fbd12",
            "display": "<span>The Dude, <i>Officer Meow Meow Fuzzyface</i>, Roosta Gentrify yolo chia cleanse wes anderson.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/947e0ef8-053f-4ae2-8444-23ea4a783927",
            "display": "<span>Loonquawl, <i>The Moving Finger</i>, Translated into Fallia by Paula Nancy Millstone Jennings.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c79f5f2d-3492-4d06-af61-314d54e5e7c2",
            "display": "<span>Garkbit, <i>The Far-Distant Oxus</i>, Translated into Jaglan Beta by Effrafax of Wug.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/eaaa317c-aed7-4347-a83a-db5fe8a16f1d",
            "display": "<span>Galaxia Woonbeam, Vanity Fair, Translated into Arkintoofle Minor by Hactar.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/79789f62-0283-4e1b-82f2-a94e9766e0b1",
      "date": "1961-06-10T00:00:00.000-04:00",
      "label": "10 June 1961 - <i>Revolio 'Gearhead' Clockberg, Jr.</i>",
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
            "id": "http://example.org/entities/37ff7e1c-bce5-4bc7-8af0-f4dc6807ca77",
            "display": "<span><i>Kakrafoon Kappa</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4549fedf-c169-4448-ae24-0d3f8eb68312",
            "display": "<span>Maude Lebowski, <i>Majikthise</i>, Garkbit Waistcoat flexitarian goth fixie.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3021f39d-b239-409a-bace-4355ff9b81a6",
            "display": "<span>Waldo Harvey, <i>A Passage to India</i>, Etruscan Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9f309745-ab29-49dd-a1f0-604393a436b0",
            "display": "<span>Stasia Fadel, An Evil Cradling, DAW Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f6b278cf-977d-49cd-81e4-e6a2d50d0920",
            "display": "<span>Alexis Franecki, By Grand Central Station I Sat Down and Wept, Reed Publishing.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6599be53-ddc1-4a47-8e5c-6e2a1b8f2a5a",
            "display": "<span>Prak, <i>1-800-Newfunk Ad</i>, Direct trade twee pabst godard.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ee2e97da-72d2-41e7-9fc1-de542435c47b",
            "display": "<span>Grunthos the Flatulent, <i>When We're Dancing Close And Slow</i>, Irony sustainable wes anderson squid forage bespoke polaroid chambray.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6e51ff6e-6554-42ea-9b8c-0f167e06cd36",
      "date": "1961-06-23T00:00:00.000-04:00",
      "label": "23 June 1961 - <i>Revolio 'Gearhead' Clockberg, Jr.</i>",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "Frogstar World B"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4fe26f2e-4b8c-4a5c-b777-db13aed2f0f6",
            "display": "<span>brooklyn, <i>The Dark Knight Rises</i>, New Steviemouth, 06 March 1948.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/67f1bdb1-e174-4852-ae9c-675398583259",
            "display": "<span>park, <i>The Truman Show</i>, Port Enrique, 20 December 1923.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/dc75a93a-30b8-4f72-be26-7e54e18941d2",
            "display": "<span>narwhal, Blade Runner 2049, East Contessafurt, 11 July 1927.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/294e673c-19be-40ff-82a0-8426dd285c3d",
            "display": "<span><i>North West Ripple</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a92944c8-dfe1-457d-b55d-f92c3cb0b1eb",
            "display": "<span>Cathedral of Chalesm.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/5653922c-8bfc-473f-88d6-268454d66bd5",
            "display": "<span>Jesus Quintana, <i>Revolio 'Gearhead' Clockberg, Jr.</i>, Lunkwill and Fook Biodiesel selvage blue bottle iphone.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/71ff6fbb-dde2-4d42-993a-bffabcbe7b6a",
            "display": "<span>Jackie Treehorn, Oglethorpe, Barry Manilow Cronut gastropub diy pinterest kogi post-ironic forage.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b930c940-19b8-4db6-a613-07851fa5f318",
            "display": "<span>The Dude, Lyra Erso, Arthur Philip Deodat Yolo sartorial park thundercats.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ec333013-bb3e-45a7-97f8-4206cc6fc032",
            "display": "<span>Vile Bodies.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/454a14b4-f32e-44d7-a7b0-d76729b1545b",
      "date": "1962-12-11T00:00:00.000-05:00",
      "label": "11 December 1962 - <i>Bunny Lebowski</i>",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d22a2f06-ebb6-41e1-9087-ece43cb2065a",
            "display": "<span>Oolon Colluphid, <i>Head</i> [Kennedy Davenport].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/34cfbe99-31f3-43c4-97cd-8bf3067e0cb4",
            "display": "<span>City Lights, dir. Jesus Quintana, Krikkit One, Diedratown, 1967-11-27.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/47d09598-82a7-4c1d-aba8-7acc59d88b40",
            "display": "<span>Dog Day Afternoon, dir. Maude Lebowski, Krikkit One, Doylechester, 1971-10-17.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6af6a82e-0262-4e36-a78e-e773e9b6209d",
            "display": "<span>Seven Samurai, dir. Jesus Quintana, Golgafrinchan Ark Fleet Ship B, Port Forrest, 1961-09-30.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/882e6e4b-0657-4751-afcf-11a73e23e3d0",
            "display": "<span>Walter Sobchak, <i>William T. Riker</i>, Emily Saunders Marfa sustainable hashtag shoreditch raw denim hammock taxidermy.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/bc3300ba-2ae2-498c-bfce-cffffaad3cee",
            "display": "<span>Karl Hungus, <i>Majikthise</i>, Emily Saunders Pabst austin banjo kogi listicle ennui art party organic.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/c020b666-be25-4706-a48e-8daf56cacead",
            "display": "<span><i>This Lime Tree Bower</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d927f359-260d-465d-b61b-2b05389955ee",
            "display": "<span>The Torment of Others.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f3980343-e7f0-4032-80d6-f8af2cdd2050",
            "display": "<span>Dulce et Decorum Est.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ba6f59be-c557-4a14-9414-74e187b8825d",
      "date": "1962-12-26T00:00:00.000-05:00",
      "label": "26 December 1962 - <i>Majikthise</i>",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/39987a9a-5619-4cbf-803b-67e2d6f2798f",
            "display": "<span>Bunny Lebowski (1923-1972). Fanny pack slow-carb flexitarian art party tumblr cronut pop-up pickled tousled.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/515ba39f-549b-44fb-9722-476137bfbef8",
            "display": "<span>Scott Malkinson (1918-1996). Actually neutra tattooed gastropub echo squid intelligentsia.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2f48ee57-0951-45e7-8300-5559a28b40f8",
            "display": "<span><i>Columbia</i> (1932-04-10).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6286a564-ab2c-478b-97c1-07937bd7b840",
            "display": "<span><i>Discovery</i> (1929-02-21).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b3b70841-d0a7-46b8-bc52-e1d091056e62",
            "display": "<span><i>Gemini</i> (1930-06-25).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6e03cb34-623a-42fc-9378-7bf4de42034a",
            "display": "<span>Walter Sobchak, Lyra Erso, Genghis Khan Asymmetrical dreamcatcher farm-to-table flannel seitan normcore humblebrag plaid poutine.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/39d8b787-de94-493c-ba94-c2340d92020a",
            "display": "<span>The Glory and the Dream.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b68b7f13-5ded-4fe5-afd8-5c5264ce3b28",
      "date": "1963-01-22T00:00:00.000-05:00",
      "label": "22 January 1963 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/79efe996-dfd3-4e3d-b45d-df43bc96705c",
            "display": "<span>Burphon XII, A'keria Chanel Davenport.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/deb64c43-63bc-4c5e-b5dc-accc3c60c5c7",
            "display": "<span><i>Poghril</i>, Pandora Boxx.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fb3da863-8acc-4467-b94d-c72b9bc3211d",
            "display": "<span>Dangrabad Beta, Chad Michaels.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/24903136-1134-416b-9c11-83b59c60591e",
            "display": "<span>Zarss.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d855b460-c59f-442e-9dc2-fe13d3ca5ba3",
            "display": "<span>Horse and Groom.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8a668467-998e-47b9-8acf-5407d39ae882",
            "display": "<span><i>Challenger</i> (1929-06-06).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b2b5b4b0-da9a-46b8-8ef5-9ec637591c36",
            "display": "<span><i>Atlantis</i> (1925-05-06).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/252ddd52-1a7d-4ded-b1bf-6701e6313620",
            "display": "<span><i>Cabbages and Kings</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5a286d19-9e13-4941-8ff9-92039f7ed047",
            "display": "<span>The World, the Flesh and the Devil.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9483e6cc-3382-4013-9a25-29ad91cab99d",
            "display": "<span><i>Down to a Sunless Sea</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ccade765-a016-45b0-afd3-10e75b7b37be",
      "date": "1963-11-25T00:00:00.000-05:00",
      "label": "25 November 1963 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3d240657-ef41-469b-819c-d3dce31f5847",
            "display": "<span>Galaxia Woonbeam, Dead On It [Dida Ritz].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bfec770c-a231-416c-ac7b-897ab3a8f268",
            "display": "<span>Prostetnic Vogon Jeltz, The Most Beautiful Girl In The World [Detox].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ceded957-135a-4536-8b89-39195725fefa",
            "display": "<span>Lintilla, <i>Pretzel Body Logic</i> [Brook Lynn Hytes].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/57c1fbe5-b62b-4894-ad85-da822ebfd0b1",
            "display": "<span>Kria, Delta Work.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fadf243f-2729-4a52-8689-5f303d21be12",
            "display": "<span>Brontitall, Latrice Royale.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/208c9035-d139-4183-a027-1d8045908669",
            "display": "<span>Croydon.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/240fd0a4-e704-472f-b5ec-f2f7a604a033",
            "display": "<span>Challenger (1971-07-12).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/3c8122a8-376c-4cbc-9a12-f501e3f92878",
            "display": "<span><i>Apollo</i> (1944-10-25).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cd197f4d-be4b-408b-aa03-95776d7ccb9e",
            "display": "<span>Challenger (1923-03-20).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/19f98d75-0298-4716-8dfb-1962e4e272f5",
      "date": "1963-12-23T00:00:00.000-05:00",
      "label": "23 December 1963 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/67a8bfe5-4d40-4c63-bee5-549e2c455d8f",
            "display": "<span>Jajazikstak, Adore Delano.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6d30bdd9-696e-4a7c-b668-6cc01ffa9cb5",
            "display": "<span><i>Krikkit</i>, Katya.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c83f80b7-72c9-4a4c-9713-9f339460cdc5",
            "display": "<span>Fallia, Derrick Barry.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0846fa2b-065e-4d4c-bdbe-a413827619b7",
            "display": "<span>Bunny Lebowski, The Albino, Prak Skateboard tilde heirloom carry loko messenger bag hella beard vinegar.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/10a6ed93-1b82-44d2-9af8-284ae6c8cbb8",
            "display": "<span>Parthenia Rice, In a Dry Season, Reed Publishing.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0f29a2c3-1955-4deb-b9d3-9820a6f5d7f7",
            "display": "<span>Grunthos the Flatulent, <i>D.M.S.R</i>, Crucifix <i>shabby chic listicle viral cray bespoke green</i> juice.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2d78cda9-059d-4908-a425-09f3dc102232",
            "display": "<span>Magrathean sperm whale, <i>Kiss</i>, Authentic <i>organic food truck echo</i> street.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e5f61dca-17f9-4e42-8c93-56ae8899fe67",
      "date": "1963-12-31T00:00:00.000-05:00",
      "label": "31 December 1963 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2ffa9f10-0df8-4c6f-bd46-5af223a2ad00",
            "display": "<span>Hotblack Desiato, Alphabet St. [Naomi Smalls].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d7e390b1-a70e-4685-9a66-df570bc75a94",
            "display": "<span>Tricia McMillan, Pop Life [Coco Montrese].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f4f1341c-5fd0-4bcf-a39a-20b3e1d2a97f",
            "display": "<span>Eddie the Computer, <i>Joy In Repetition</i> [Ariel Versace].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4a5333d6-989d-497e-a4ee-a0ce30cc10e9",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1906-1989). Tattooed distillery gluten-free small batch quinoa williamsburg you probably haven't heard of them cronut vinegar.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e765dc9b-06ba-42bf-b50c-4142b29cffff",
            "display": "<span><i>William T. Riker</i> (1901-1975). Organic <i>retro gluten-free chambray humblebrag</i> lumbersexual.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/a3f06503-b2db-4b66-979a-18a94931c21c",
            "display": "<span>Kraig Lueilwitz DVM, <i>Moab Is My Washpot</i>, Daedalus Publishing.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/642dab64-f337-4912-995c-a8f95844b28c",
            "display": "<span><i>A Catskill Eagle</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ebda1823-fd31-4ca6-b1af-48987d2cb416",
      "date": "1964-02-13T00:00:00.000-05:00",
      "label": "13 February 1964 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/34d19cd2-1d2c-42a2-8423-eb45a283b763",
            "display": "<span>Bethselamin, Chad Michaels.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e3bd5a1d-9933-4603-b158-4a3e71d9b728",
            "display": "<span>Jajazikstak, Alaska.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e4e8ec45-ac9f-446d-b1eb-7b455baeb460",
            "display": "<span>L.A. Confidential, dir. Jesus Quintana, Krikkit One, Hughtown, 1945-01-16.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/edf8308c-d9ee-4ca0-b186-9c17059cb8d1",
            "display": "<span>Unforgiven, dir. The Dude, Bistromath, North Sherrystad, 1958-12-01.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/36d38cca-53e7-4126-8af9-c21a3f059a60",
            "display": "<span>Armando Bernier, An Acceptable Time, Ignatius Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/74d34e37-c349-4764-9f27-d04a71c1e93a",
            "display": "<span>Tuan Mosciski, Postern of Fate, Dalkey Archive Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/cfb5e847-caf1-4336-b6e4-b410196eef25",
            "display": "<span>Rep. Charla Upton, Carrion Comfort, Breslov Research Institute.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/48195549-9874-49d1-bc4d-2dc947f48deb",
            "display": "<span>Barry Manilow, International Lover, Park <i>keytar messenger bag pug sartorial vinegar banjo health</i> whatever.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d0421007-df2d-4129-8ee3-6d83fd0698b7",
            "display": "<span>Loonquawl, New Position, Cliche <i>blog craft beer locavore</i> synth.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8552ebd9-d6cd-4f4e-8c3e-b47658eeb6e1",
      "date": "1964-04-08T00:00:00.000-05:00",
      "label": "08 April 1964 - Steppenwolf",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "<i>France</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/37bc8a3e-4d54-4daa-a9be-44f8624343d0",
            "display": "<span>Eroticon VI, The Vixen.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/95f6c7d9-16fc-402f-83f2-a9781cdb17ac",
            "display": "<span>Brontitall, Aja.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f8f33b1e-515e-4039-a584-224f666405e6",
            "display": "<span>Hawalius, Miss Fame.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b169b06f-152b-4279-ba47-f13fd96d5409",
            "display": "<span>Forrest Gump, dir. Jesus Quintana, Krikkit One, Strackehaven, 1923-03-08.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/cdaa6261-3fb4-4bec-9acb-9b2105222278",
            "display": "<span><i>Gladiator</i>, dir. The Big Lebowski, Tanngrisnir, North Taylor, 1938-11-04.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/01ffe892-e4b6-405e-9df0-859ae0c4ac02",
            "display": "<span>The Dude, Scott Malkinson, Effrafax of Wug Everyday brooklyn chicharrones salvia pork belly heirloom tattooed cray forage.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/110f2f94-4087-431a-8cd4-7805059cf732",
            "display": "<span>The Dude, <i>Lyra Erso</i>, Effrafax of Wug Kombucha echo listicle put a bird on it bespoke locavore.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/96c92bcd-4359-457b-941f-9879411b216c",
            "display": "<span>Donny, William T. Riker, Wonko the Sane Cold-pressed umami 8-bit pork belly muggle magic schlitz.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9465e52b-38a2-4e37-bdbd-0b1535e18117",
            "display": "<span>Ms. Marti Rosenbaum, A Passage to India, Flame Tree Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d45408f5-4355-4245-b4a0-82e2fa8677ed",
            "display": "<span>Blaine Swift, A Catskill Eagle, Ellora's Cave.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3f8e2097-fbd2-491d-b3cf-7878a9e70b20",
      "date": "1964-07-07T00:00:00.000-04:00",
      "label": "07 July 1964 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b60e6bba-bed4-4304-9652-680e8c3af3ee",
            "display": "<span>Hactar, When Doves Cry [Mayhem Miller].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/2da9d0e4-ac3d-46c6-b0eb-da4f3568e4ae",
            "display": "<span><i>Cathedral of Chalesm</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ec40a2b4-3635-4519-bd79-6fa708701a94",
            "display": "<span><i>North West Ripple</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/32668125-5eb9-4a0d-90c0-a05ee4fb2ead",
            "display": "<span>Jackie Treehorn, William T. Riker, Colin the Security Robot Celiac irony viral flexitarian cornhole.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e602f03c-e327-42a9-b692-dda120e45c0c",
            "display": "<span>Luciana Predovic, A Time to Kill, Vintage Books at Random House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fe0f8aad-8290-4328-8c6e-f7206cc37917",
            "display": "<span>Abel Jast, <i>The World, the Flesh and the Devil</i>, Bloodaxe Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3c227816-8867-45a1-aed9-3f593cb42fdf",
      "date": "1964-12-18T00:00:00.000-05:00",
      "label": "18 December 1964 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1ca29cff-a327-4700-98ea-cd2ebb743b8c",
            "display": "<span>ugh, <i>La La Land</i>, Hodkiewiczmouth, 13 April 1947.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3156cf6b-8260-45cf-901d-8f5973b83d42",
            "display": "<span>helvetica, Princess Mononoke, Lake Haywood, 29 April 1937.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9de5d8e6-da1c-4380-af0e-348405d9c20c",
            "display": "<span>Vernia Ebert DO, <i>Everything is Illuminated</i>, Black Sparrow Books.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6526a5b0-656e-474a-921a-00cefbd19a04",
            "display": "<span>Trin Tragula, East of Eden, Translated into Santraginus V by Magrathean sperm whale.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/68b324e2-3ae8-4099-9a9f-8a3c867318ef",
            "display": "<span>Reg Nullify, For a Breath I Tarry, Translated into Poghril by Dan Streetmentioner.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/73bc1f43-0229-4c70-b557-9886a9eb2f2a",
            "display": "<span>Mr. Prosser, Mother Night, Translated into Damogran by Trin Tragula.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7e048b72-cfa0-4904-832c-461f9c53c87c",
            "display": "<span>Hactar, Crimson and Clover, Lumbersexual <i>before they sold out diy</i> echo.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2a46b6f0-fc60-437f-a061-eb81bbe2c2a3",
      "date": "1964-12-26T00:00:00.000-05:00",
      "label": "26 December 1964 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/38306bba-55da-452d-8731-653328c1b927",
            "display": "<span>farm-to-table, Chinatown, Lazaroborough, 24 January 1934.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4197b7b3-6379-4669-aa0b-631158c7fae6",
            "display": "<span>chillwave, <i>Lawrence of Arabia</i>, Betteville, 16 July 1966.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2a5645d2-ea0c-4a45-b60e-eed090c84e94",
            "display": "<span><i>Bunny Lebowski</i> (1913-1975). Kickstarter <i>before they sold out chillwave plaid cray goth distillery next level trust</i> fund.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/66766756-f2e6-4e35-a014-88f84b4f1c0f",
            "display": "<span>The Matrix, dir. Donny, Billion Year Bunker, West Denisse, 1931-06-08.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/31db7921-bf6b-429c-8f6f-72e97197732f",
            "display": "<span>Gemini (1963-12-14).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/451c108d-6378-4ffa-815f-e72464f649d1",
            "display": "<span>Enterprise (1925-10-16).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9260a96a-064d-4973-972e-f1ba1802d93c",
            "display": "<span>Orion (1932-10-19).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5ccf3331-2f7b-4ac1-b3a3-ec5a9a923f7e",
      "date": "1965-04-29T00:00:00.000-04:00",
      "label": "29 April 1965 - <i>William T. Riker</i>",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "<i>Horsehead Nebula</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/499909cf-5cb3-4ccf-9c42-dc01d2b674ee",
            "display": "<span>Viltvodle VI, Shangela Wadley.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/854fb0f4-a9fa-4c32-8659-4d280b123284",
            "display": "<span>Elizabeth Hoover (1921-1995). Blue <i>bottle pinterest intelligentsia kickstarter</i> disrupt.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/11ad178f-6cba-4bb1-837d-e782776c61f6",
            "display": "<span><i>Oglaroon</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5d64b108-79ac-4441-bf47-27247ec44661",
            "display": "<span><i>Stavro Mueller Beta</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e7cf985a-b764-4b65-b60c-4b7158f352c6",
            "display": "<span>Stavro Mueller Beta.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/31cd377d-c65b-449b-9622-9aea4a29b644",
            "display": "<span>Deep Thought, <i>Fair Stood the Wind for France</i>, Translated into Hawalius by Oolon Colluphid.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3cab0b3a-e025-48c3-a0f5-88fd1f900b7b",
            "display": "<span>Pasta Fasta, Things Fall Apart, Translated into Eroticon VI by Effrafax of Wug.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9260e7cd-9c23-4963-a189-7201092617ff",
            "display": "<span>Deep Thought, <i>The Cricket on the Hearth</i>, Translated into Golgafrincham by Prostetnic Vogon Kwaltz.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 22,
      "buckets": [
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
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
      "doc_count": 22,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Southern Maryland Academy",
          "doc_count": 12
        },
        {
          "key": "Eastern Ullrich Academy",
          "doc_count": 10
        },
        {
          "key": "Ward Academy",
          "doc_count": 10
        },
        {
          "key": "Spencer Institute",
          "doc_count": 8
        }
      ]
    },
    "language": {
      "doc_count": 22,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 6
        },
        {
          "key": "french",
          "doc_count": 5
        },
        {
          "key": "german",
          "doc_count": 5
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 22,
    "links": {
      "self": "http://example.org/letters?end_date=1965-04-29&page=1&start_date=1959-08-11"
    }
  }
}</pre>
