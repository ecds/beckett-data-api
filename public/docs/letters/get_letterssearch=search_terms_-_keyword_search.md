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

<pre>GET /letters?search=robot%3C%2Fi%3E</pre>

#### Query Parameters

<pre>search: robot&lt;/i&gt;</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=robot%3C%2Fi%3E&gt;; rel=&#39;self&#39;
X-Total-Count: 21
Content-Type: application/json; charset=utf-8
ETag: W/&quot;033e87a6ad6c0bd8b1ed86c953737942&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0f94357f-0952-44a2-8865-a28986a77315
X-Runtime: 1.974167
Vary: Origin
Content-Length: 42851</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/4afe4da6-a70b-4661-9877-55192c732e8a",
      "date": "1957-05-24T00:00:00.000-04:00",
      "label": "24 May 1957 - <i>Otto Aquarius</i>",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1b0220c1-bbd4-42cb-8b18-52841e40e183",
            "display": "<span><i>Apollo</i> (1932-11-12).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9eda389f-0312-4f8d-8219-cb14c0020dbd",
            "display": "<span>Columbia (1970-12-27).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7ddbd55f-5d8f-4ec6-b1a5-89f110a221ee",
            "display": "<span>Shonda Towne, A Time of Gifts, Parragon.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/46835f16-8ef5-4213-a03d-6ab029e6776e",
            "display": "<span>Majikthise, Clouds of Witness, Translated into Frogstar World A by Emily Saunders.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4e0aa947-7a5e-45d5-939f-27f7aa54fb72",
            "display": "<span>Arthur Philip Deodat, Consider Phlebas, Translated into Broop Kidron 13 by Arthur Dent.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ea41d3e7-f566-4873-8843-bb7c26378b0a",
            "display": "<span>Wonko the Sane, <i>In a Dry Season</i>, Translated into Golgafrincham by Trillian.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/253edebe-f03f-429e-8b17-7d4893895708",
            "display": "<span><i>The Wings of the Dove</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e3e29b4c-1234-4cf0-9d75-71edd97aff16",
      "date": "1959-07-02T00:00:00.000-04:00",
      "label": "02 July 1959 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Guildford</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/36af65d1-9a19-41c1-a5c5-79660bdbfd3b",
            "display": "<span><i>Frogstar World A</i>, Manila Luzon.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1f758665-e983-4900-bb5f-d7ca3f1bf250",
            "display": "<span>Homer Simpson (1902-1971). Knausgaard truffaut wolf austin everyday.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6c15454e-d9db-4ec4-b9ea-040a49958081",
            "display": "<span>Maude Lebowski, <i>Leia Organa</i>, Vroomfondel Pickled pitchfork pinterest chartreuse wayfarers thundercats craft beer kitsch.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/24546624-9be8-4603-82f6-795d65d2858f",
            "display": "<span>Elton VonRueden, <i>Oh! To be in England</i>, Papadakis Publisher.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/69ee8ce0-51ff-4397-bd56-72a9a6f449b1",
            "display": "<span>Bart Gleichner DVM, Great Work of Time, Gefen Publishing House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7e90d9de-05be-4e96-862f-5ce37bb8e280",
            "display": "<span>Leigh Renner PhD, <i>Things Fall Apart</i>, Eerdmans Publishing.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/18c96080-eec5-49e7-b4c1-0f3dac138215",
      "date": "1959-09-08T00:00:00.000-04:00",
      "label": "08 September 1959 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "<i>Kakrafoon Kappa</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ad6b6437-1aa1-4e30-afc8-dcb7b4a97709",
            "display": "<span>goth, <i>Metropolis</i>, Croninside, 01 February 1924.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/55dd89de-17da-4dae-a540-ad75f7c1597d",
            "display": "<span>Yooden Vranx, <i>When Doves Cry</i> [Kim Chi].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/873627e4-81af-442b-9a05-c9bec6f57700",
            "display": "<span>Tricia McMillan, My Name Is Prince [Adore Delano].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a2acb448-da6e-453d-9200-cea9adcf505d",
            "display": "<span>Goodfellas, dir. Bunny Lebowski, Vogon Constructor Fleet, Port Nonaville, 1948-11-16.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f6c1f7ee-7c61-47a1-ae79-31a8209e271e",
            "display": "<span>Mr. Smith Goes to Washington, dir. Brandt, Vogon Constructor Fleet, East Seleneberg, 1934-10-22.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7edc58b7-d9e6-4699-9fd0-cbe8510ffe83",
            "display": "<span>A Monstrous Regiment of Women.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/8f7ce1a7-689d-467a-8ea5-d53a2626c5b1",
            "display": "<span><i>The Parliament of Man</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e4b6df6d-561f-45d6-a703-4b664a8e31fe",
      "date": "1959-09-27T00:00:00.000-04:00",
      "label": "27 September 1959 - <i>Data</i>",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/aba5cb3f-9889-4b87-a128-fccdcccf7ba2",
            "display": "<span>Max Quordlepleen, Starfish And Coffee [Detox].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/94e47ffd-d439-453b-9977-c1e02423cb99",
            "display": "<span><i>Earth</i>, Delta Work.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d2b2cec9-ce9e-40d8-8d24-9efeae0335c2",
            "display": "<span>Frogstar World C, Plastique Tiara.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9182b60e-7c84-4168-a427-2fbdcf238c1f",
            "display": "<span><i>Miracle Max</i> (1922-1979). Pork belly umami vinyl fingerstache brooklyn forage meh.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d65da7cf-e092-48dd-ae20-3b64a06b6a3f",
            "display": "<span>Homer Simpson (1914-1979). Humblebrag <i>kitsch loko salvia selvage</i> keytar.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f5f6ca41-e571-4cf6-b4ef-bd890b0970cc",
            "display": "<span><i>Mario</i> (1920-1993). Vice <i>polaroid phlogiston godard</i> 8-bit.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1343e090-a00b-4e09-a33c-b92eb9c25a20",
            "display": "<span>The Big Bang Burger Bar.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/99de3608-bcd8-43a9-a6b4-025ac0dfe482",
            "display": "<span><i>Xaxis</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e87c29a6-346b-448a-b0c1-b4d93ad9268f",
            "display": "<span>Frogstar system.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/68b1885f-26cc-4df4-a3d0-c0bea9411a82",
      "date": "1960-05-31T00:00:00.000-04:00",
      "label": "31 May 1960 - <i>Colin the Security Robot</i>",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0210a4fe-2587-4718-8d21-a42ce907677d",
            "display": "<span><i>Krikkit</i>, Jujubee.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/dab1fd8e-ad7c-4211-9361-054b4633aeda",
            "display": "<span>Frogstar World C, Monet X Change.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/14601109-8a58-4873-a338-4c42cb799f11",
            "display": "<span>Dead Poets Society, dir. The Big Lebowski, Bistromath, Port Dana, 1934-09-17.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/5b5abd4f-1446-4ba1-afb3-bcece88a3a8e",
            "display": "<span><i>Monty Python and the Holy Grail</i>, dir. Brandt, Billion Year Bunker, Lake Alba, 1964-03-11.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d5be2794-65e2-4cbe-bd39-ba8dfd67c872",
            "display": "<span>Lintilla, O Jerusalem!, Translated into Bartledan by Trin Tragula.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/736b0653-a950-41f3-941e-e4dca7e45419",
            "display": "<span>Genghis Khan, <i>When 2 R In Love</i>, Roof pop-up scenester cardigan.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7718164e-3e0c-4612-b7e9-7ca69b91512f",
            "display": "<span>The Allitnils, <i>She's Always In My Hair</i>, Synth <i>meh chicharrones brunch</i> flexitarian.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/defd58c9-cf97-420a-ac1f-c52c6c96c9a7",
            "display": "<span>Rob McKenna, <i>New Position</i>, Hoodie <i>you probably haven't heard of them retro flexitarian</i> meditation.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/336289fe-ced7-4fdf-b6e8-f941cd91ae53",
      "date": "1961-01-22T00:00:00.000-05:00",
      "label": "22 January 1961 - Emory",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7d0fe679-d82d-4d8d-8fd8-2b79eacb9960",
            "display": "<span>Yooden Vranx, Partyman [Pandora Boxx].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5ed35c69-8784-4e30-b2f5-a999baa489d1",
            "display": "<span>Gagrakacka, Farrah Moan.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/14396de0-de6d-4c63-8ca4-96d612c2d197",
            "display": "<span>Monsters, Inc., dir. Jesus Quintana, Heart of Gold, Whitleyberg, 1950-02-21.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a6009bc6-92b9-4a3d-92c5-356062f923f8",
            "display": "<span><i>Star Wars: Episode III – Revenge of the Sith</i>, dir. Brandt, Tanngrisnir, Stephanyfort, 1956-08-13.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/809d6de9-aa42-4e0e-a5dc-ed217264514c",
            "display": "<span><i>Apollo</i> (1969-04-11).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e204b836-6f68-4119-977f-9fd826977cb5",
      "date": "1961-02-28T00:00:00.000-05:00",
      "label": "28 February 1961 - <i>Homer Simpson</i>",
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
            "id": "http://example.org/entities/468a3abe-4fed-48a8-aaf4-c07ab0d48895",
            "display": "<span><i>Scary Terry</i> (1925-1976). Everyday heirloom pbr&b twee stumptown cornhole dreamcatcher ennui fanny pack.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/53cac7c1-f026-436d-b2fa-5c49f554f7ed",
            "display": "<span>Colin the Security Robot (1910-1992). Normcore <i>squid 90's deep v</i> blog.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0e2b94ad-c376-40c7-ab28-8c1df1c65520",
            "display": "<span>Enterprise (1939-06-26).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1eddb8c9-e294-4b03-91f8-02bfd5dd6444",
            "display": "<span>Walter Sobchak, <i>Leia Organa</i>, Colin the Security Robot Poutine offal salvia muggle magic ethical viral hammock.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/00e675cc-f706-47f0-b8a7-7629e3dd38ef",
            "display": "<span>Slartibartfast, <i>The Last Enemy</i>, Translated into Frogstar World B by Barry Manilow.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/44723384-ba62-4053-8b21-80a2c81449d7",
      "date": "1961-12-11T00:00:00.000-05:00",
      "label": "11 December 1961 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bf648630-8b00-42de-b057-d4e87a23fcd5",
            "display": "<span>Ned Gerblansky (1921-1995). Five dollar toast occupy letterpress chillwave kitsch fingerstache.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e27dd115-1d81-46ca-8454-848ce596a4b0",
            "display": "<span><i>Data</i> (1904-1987). Williamsburg gentrify try-hard intelligentsia wolf ethical.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4428f08c-024d-48cc-840c-62bd79070091",
            "display": "<span>Jackie Treehorn, Scary Terry, Elvis Godard gastropub ramps banh mi ennui whatever.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1f14de01-234c-4c83-ab60-3a3f44b0caa4",
            "display": "<span>Trillian, Tender Is the Night, Translated into Allosimanius Syneca by Bowerick Wowbagger.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4f044b1c-5157-45d2-b31a-052e9775808a",
            "display": "<span><i>Precious Bane</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9f6c10ac-9680-4f5e-8da2-75a0ae714a4e",
            "display": "<span><i>The Green Bay Tree</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bd8606a0-c0ae-4e42-996f-24c486ad0055",
      "date": "1962-01-12T00:00:00.000-05:00",
      "label": "12 January 1962 - <i>Brandt</i>",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/183290e6-28b2-444a-8d95-fe6f1f939788",
            "display": "<span>intelligentsia, Toy Story, Timmyborough, 23 June 1961.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b020796f-434f-4ed3-bd9d-e283870ef2ba",
            "display": "<span>lumbersexual, <i>WALL·E</i>, Weissnatfort, 12 November 1945.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ed3c4fe9-b791-47fa-bddd-5a03b7d28bf5",
            "display": "<span>mustache, <i>Dead Poets Society</i>, Eliciashire, 19 April 1951.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/ad83b27c-e5f3-4bcd-80ce-574dd87c8918",
            "display": "<span>Intouchables, dir. Walter Sobchak, Krikkit One, Littelton, 1934-04-22.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/bebbc731-32eb-4bc9-adff-54e587c13e10",
            "display": "<span><i>Batman Begins</i>, dir. Jackie Treehorn, Tanngrisnir, Port Brandenhaven, 1927-09-11.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ce7af4b0-ebfd-4908-85bd-20a7b5743492",
            "display": "<span>Gone Girl, dir. The Dude, Krikkit One, East Lupita, 1964-11-06.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0f9404e0-4263-4822-b3f6-7af38fb3c983",
            "display": "<span>The Big Lebowski, Otto Aquarius, Agrajag Tousled skateboard waistcoat roof stumptown jean shorts marfa pork belly drinking.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9cea7b8d-1f66-42a1-8b29-d84821592443",
            "display": "<span>Maude Lebowski, <i>Emory</i>, Lunkwill and Fook Freegan tilde carry jean shorts kitsch microdosing 3 wolf moon artisan.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4caaefbf-201c-4aac-86fb-dad7842377cf",
            "display": "<span>Charles Darwin, <i>Tiger! Tiger!</i>, Translated into Frogstar World C by Prostetnic Vogon Jeltz.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7e876e64-a5e1-473f-b60f-ede159038de1",
            "display": "<span>Prostetnic Vogon Kwaltz, The Far-Distant Oxus, Translated into Oglaroon by Yooden Vranx.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/82b611cb-3c9d-4655-a259-ef96124349cb",
            "display": "<span>Agda, Jacob Have I Loved, Translated into Jaglan Beta by Pizpot Gargravarr.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9b652a0b-754a-4d01-8a7f-59dda80af435",
      "date": "1962-05-08T00:00:00.000-04:00",
      "label": "08 May 1962 - <i>Emory</i>",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/11e21d86-5d56-4c3a-9257-01a072e0d954",
            "display": "<span><i>Xaxis</i>, Raven.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5d5582af-7cfc-46d7-94d5-9d8408717984",
            "display": "<span><i>Allosimanius Syneca</i>, Coco Montrese.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/190f628c-4b2a-499a-9f5c-8c8362110b8d",
            "display": "<span>Maude Lebowski, <i>Miracle Max</i>, Agrajag 90's etsy lumbersexual knausgaard cred green juice drinking.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/27145b92-fd03-4a7e-8bfe-f72a0e768e7f",
            "display": "<span>The Dude, <i>Miracle Max</i>, Deep Thought Fingerstache raw denim asymmetrical freegan.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/72e83235-231b-4f03-8c1d-0feced6f235b",
            "display": "<span>Jesus Quintana, <i>Data</i>, Lintilla Pbr&b cardigan distillery paleo mumblecore tofu.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/310f454f-0829-4732-abc1-38e587727814",
            "display": "<span>Lunkwill and Fook, <i>Le Grind</i>, Trust fund vinegar flannel next level kale chips meh lo-fi mustache whatever.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/354d23fc-0f0c-46be-8c46-17ae7880c202",
            "display": "<span>Hactar, <i>Head</i>, Polaroid carry bespoke brooklyn actually microdosing put a bird on it hashtag meggings.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8da53adc-b596-497e-8b69-bbc173a0bd8f",
            "display": "<span>Hotblack Desiato, <i>Partyman</i>, Portland <i>green juice kogi</i> chicharrones.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/cfaf0d7c-c468-47e9-9702-1411d317c1ea",
            "display": "<span><i>Beneath the Bleeding</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4c02348b-4fd9-426a-b67c-3e0546364ba8",
      "date": "1962-11-17T00:00:00.000-05:00",
      "label": "17 November 1962 - Colin the Security Robot",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f4c47e36-aa4c-4d96-82ac-4133d706881a",
            "display": "<span>Sqornshellous Zeta, Eureka.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/49c8f16a-6f27-46f4-aabc-744fdf564ce1",
            "display": "<span>Brandt (1903-1979). Brunch scenester cold-pressed quinoa.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/61667406-9f70-493f-98c2-4da64f1aceab",
            "display": "<span><i>Colin the Security Robot</i> (1918-1992). Celiac <i>vice pabst single-origin coffee mumblecore echo direct trade tumblr</i> tacos.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/28220e7c-d479-4fee-8846-1fede0513847",
            "display": "<span>How to Train Your Dragon, dir. The Big Lebowski, Bistromath, Lake Clement, 1948-10-28.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/9605c23a-108b-4393-9b6a-fcc3b92c777e",
            "display": "<span><i>The Dark Knight Rises</i>, dir. Karl Hungus, Golgafrinchan Ark Fleet Ship B, Gearldineburgh, 1943-05-31.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/be471219-62ac-4193-b7c0-85944d4b6df8",
            "display": "<span>Stalker, dir. Donny, Bistromath, East Rudy, 1962-12-22.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/91b0f8c5-fbe6-45fd-97f1-e6223b86845c",
            "display": "<span>Fr. Javier Hauck, The Torment of Others, Ziff Davis Media.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b39167fa-82b2-4c24-b3e2-e59391b8e855",
            "display": "<span>Bruno Denesik MD, Gone with the Wind, Libertas Academica.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a9450a65-dc20-4247-8905-0b7bb339b10a",
      "date": "1962-11-29T00:00:00.000-05:00",
      "label": "29 November 1962 - <i>Butterscotch Horseman</i>",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>France</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f55ae52c-b309-479b-98f4-0b1c031ad64f",
            "display": "<span>mustache, Lawrence of Arabia, New Irena, 24 January 1971.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/30c27715-9571-4649-a282-6a65acdf6d11",
            "display": "<span>Agda, <i>Eye No</i> [Miz Cracker].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d281fc6a-e33e-4b44-8ac3-c2da6cddd241",
            "display": "<span>Vroomfondel, <i>How Come You Don't Call Me Anymore?</i> [A'keria Chanel Davenport].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ee29e965-7e6f-431b-af6a-3d13b86fdc7c",
            "display": "<span>Colin the Security Robot, <i>Lady Cab Driver</i> [Naomi Smalls].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/165f39d5-1daa-4961-834c-e4743233323a",
            "display": "<span><i>Mario</i> (1915-1993). Kinfolk mlkshk 8-bit single-origin coffee celiac roof.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6c7f1fbb-e7a1-434c-bdaf-50bdb3e163a1",
            "display": "<span>Brandt (1923-1971). Deep v chicharrones thundercats letterpress craft beer whatever goth.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/93b1544c-3858-4127-86c9-47fa8d90851e",
            "display": "<span><i>Otto Aquarius</i> (1920-1982). Squid brunch vice everyday.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/9a3d73de-1368-4d2a-beef-ad69f0d56c6c",
            "display": "<span>Bunny Lebowski, Butterscotch Horseman, Eccentrica Gallumbits Polaroid pabst messenger bag park waistcoat five dollar toast normcore small batch blog.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/de3fe185-4f44-4b3f-b9b6-d0e5ff8a1b20",
            "display": "<span>Jesus Quintana, <i>Data</i>, Wonko the Sane Meh mustache letterpress aesthetic trust fund.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8cb2c04b-6c78-44c8-9be0-aa05ca1e1ff8",
      "date": "1963-10-28T00:00:00.000-05:00",
      "label": "28 October 1963 - Colin the Security Robot",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ad84cf7d-5cbb-4163-a491-ab2072772fc3",
            "display": "<span>offal, Oldboy, New Williamchester, 25 January 1930.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d609796d-2ed2-4e69-acf0-fbd6e5dfdc41",
            "display": "<span>humblebrag, Stalker, North Fabiola, 14 April 1928.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ee8b8571-0a29-48ef-80d7-d7001e6119c3",
            "display": "<span>+1, TRON, Wildermantown, 22 September 1968.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/69059872-ac6d-4458-a9e3-35cad38e335c",
            "display": "<span><i>Golgafrincham</i>, Peppermint.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b3f6603e-f1ed-4e1f-bf3a-68d342fa26a4",
            "display": "<span><i>Xaxis</i>, Latrice Royale.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1e0e0f93-4fbb-4210-a249-ce2fcb5a3ba4",
            "display": "<span>Ziggie's Den of Iniquity.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/94e47d09-b105-47ea-90c1-69c46c8965c6",
            "display": "<span>Islington.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e47b3882-3128-4ccd-bc48-1691f21122ac",
            "display": "<span><i>Highgate Cemetery</i>.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/ce709e0e-7745-4c64-82bb-3e4645f2b3fc",
            "display": "<span>Karren Torp, The Mirror Crack'd from Side to Side, Bowes & Bowes.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ed3b3673-6430-4026-84ff-6a9d2a9d5de9",
            "display": "<span>Dr. Marcellus Gutmann, <i>The Far-Distant Oxus</i>, Firebrand Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0899d376-81e4-4f10-a825-10e8fad71844",
      "date": "1964-04-01T00:00:00.000-05:00",
      "label": "01 April 1964 - <i>Butterscotch Horseman</i>",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>Pleiades system</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/061b2248-67dc-4f0f-bd81-ec3d3267a7f4",
            "display": "<span>normcore, Gone Girl, East Porfirioside, 22 January 1969.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/205366d1-2222-40ec-9abc-c2061ea09230",
            "display": "<span>sriracha, The Kid, New Lowellfurt, 19 March 1971.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/26c9797c-5b05-4c22-a239-7493ff740ed8",
            "display": "<span>tumblr, Whiplash, Thielfurt, 26 November 1940.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6352c521-aaad-44a4-a12c-cd4f4a887959",
            "display": "<span><i>Bethselamin</i>, BenDeLaCreme.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/64d3677c-94f8-4d1a-a8c0-1e008c4b012b",
            "display": "<span><i>Sesefras Magna</i>, Jessica Wild.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/092df18f-b1ef-459e-8fa6-9757be70fb95",
            "display": "<span><i>Emory</i> (1906-1998). Green <i>juice banh mi literally distillery vinegar food truck celiac pug muggle</i> magic.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/42be88a5-7caf-437e-b945-1c56f0b60d21",
            "display": "<span><i>Mario</i> (1904-1984). Beard thundercats franzen tofu godard slow-carb.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/af765302-187c-4003-9e8e-d995ced0cf0f",
            "display": "<span>Emory (1901-1972). Locavore <i>art party cray portland hella salvia fanny pack</i> irony.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/73d84011-ab27-43d1-a4ec-ec02064bc3f8",
            "display": "<span>Hotblack Desiato's bodyguard, Unweaving the Rainbow, Translated into Fallia by Bowerick Wowbagger.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e3f7fc0a-6454-4273-8426-a90270860da9",
            "display": "<span>Hillman Hunter, <i>Beyond the Mexique Bay</i>, Translated into Santraginus V by Fenchurch.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2d930ed5-c440-4ae7-b36d-a75f03b0c939",
      "date": "1964-06-17T00:00:00.000-04:00",
      "label": "17 June 1964 - Miracle Max",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Seventh Galaxy of Light and Ingenuity</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3bfe0e91-e00a-49bc-8b49-7c0ba3782040",
            "display": "<span><i>Emory</i> (1929-1995). Vegan <i>fanny pack asymmetrical photo booth quinoa pour-over cliche</i> skateboard.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5416dd80-cd93-44e6-ab7d-c548e3cc45d4",
            "display": "<span>Scary Terry (1924-1991). Portland sartorial before they sold out pop-up.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b22e6b62-a2d1-434b-b0e3-c40a38e567cf",
            "display": "<span>The Shawshank Redemption, dir. The Big Lebowski, Krikkit One, Lake Kathe, 1943-11-23.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/c95f7d87-1c9d-4c82-9a15-5cdbae328277",
            "display": "<span><i>Orion</i> (1960-07-23).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/df6986f3-b55e-46cb-a7f5-40265c442e49",
            "display": "<span>Apollo (1923-12-27).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7c65732c-adf7-4fe9-811c-1f2327a65560",
            "display": "<span>Ninfa Spencer, Blood's a Rover, Heyday Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d7b9c27d-0164-44b1-92df-55b94d2fdbb6",
      "date": "1964-07-09T00:00:00.000-04:00",
      "label": "09 July 1964 - Brandt",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/85978fdf-bb26-42e1-a7a1-a398665421fc",
            "display": "<span>schlitz, <i>Blade Runner</i>, Port Juan, 28 February 1929.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e92dcfc7-8966-434a-96f4-242087ac284c",
            "display": "<span>+1, <i>Room</i>, Louiemouth, 06 July 1959.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/162226cd-8d5e-4b5a-9567-97ed76273558",
            "display": "<span><i>Viltvodle VI</i>, Pandora Boxx.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/372f0857-ef12-4fde-89b6-f3fb806eeca4",
            "display": "<span><i>Allosimanius Syneca</i>, Detox.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a0a05f16-0e94-4d60-ab3f-82c4bbd12323",
            "display": "<span>Allosimanius Syneca, Nina Bonina Brown.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1ed15d89-2c3f-4f82-ac8e-70ccad3e9d59",
            "display": "<span>Apollo (1923-05-23).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d4bda7ca-2b9c-4302-b47d-75dd84af8b00",
            "display": "<span>Leif Padberg, Vanity Fair, Virgin Publishing.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ce6b8253-3fb2-48ae-a074-666cc4d10267",
      "date": "1964-12-22T00:00:00.000-05:00",
      "label": "22 December 1964 - <i>Colin the Security Robot</i>",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/8192179d-b5de-4bac-97b1-a44e5465d2ab",
            "display": "<span>hella, <i>Twelve Monkeys</i>, Port Lennaton, 17 October 1944.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/95b98870-449c-4c00-8cde-f7865b2d8d96",
            "display": "<span>Toy Story 2, dir. Jesus Quintana, Vogon Constructor Fleet, Paucekview, 1957-02-04.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4b5b0d19-1bfd-413c-8631-c52d02c5ddd3",
            "display": "<span><i>Challenger</i> (1963-04-18).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4fb89157-e92e-44b2-81fb-347bde6370c4",
            "display": "<span>Apollo (1942-09-11).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6b84efa8-0391-4600-bcae-7ac61ea30388",
            "display": "<span>Atlantis (1952-06-20).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e9967c9b-6447-401b-ab8f-c58d4e466b7c",
            "display": "<span>The Big Lebowski, Data, Frankie and Benjy Church-key wolf mumblecore roof hoodie fanny pack farm-to-table raw denim actually.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a479c2ab-3004-4164-b87c-8d9d623e597f",
      "date": "1965-01-20T00:00:00.000-05:00",
      "label": "20 January 1965 - <i>Brandt</i>",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5a946ba4-178b-4ac0-9c10-b7040a03b842",
            "display": "<span>brunch, Witness for the Prosecution, Lake Susann, 06 September 1942.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cfe92b53-9b70-4796-aaa7-4adbb0e2410c",
            "display": "<span>carry, <i>Jaws</i>, North Lidia, 11 September 1960.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/4a1e8d4b-a670-423f-ab0f-f5928ac1865c",
            "display": "<span>Frogstar World B.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/79c57925-a814-443d-8efe-062d3323b8b1",
            "display": "<span>Belgium.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/bb73163a-8bcc-4191-8300-f4fa8b89711a",
            "display": "<span><i>Norway</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c04dc999-eda5-4bf9-986a-0df89504d757",
            "display": "<span>Bunny Lebowski, Otto Aquarius, Bowerick Wowbagger Quinoa health hashtag shabby chic.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2bc5531e-72b4-4d55-b2f0-9aefd4f1fbd4",
            "display": "<span><i>Beyond the Mexique Bay</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/804e0714-8f3d-404b-8a5d-5b22fede0810",
            "display": "<span><i>Cover Her Face</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/80930654-7efd-4c45-83d5-e8d836e93638",
            "display": "<span>Dulce et Decorum Est.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d596feef-3db3-4778-8114-75a5bb44a588",
      "date": "1965-02-04T00:00:00.000-05:00",
      "label": "04 February 1965 - Emory",
      "recipients": [
        "Emory"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/bb4f66a8-ce3b-4087-81ac-695ac89e19c1",
            "display": "<span><i>Toy Story 3</i>, dir. Bunny Lebowski, RW6, Cecilport, 1970-06-08.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/13cfcdcc-54fe-456a-a97b-cb933d39a911",
            "display": "<span>Ms. Vannesa Douglas, Wildfire at Midnight, Burns & Oates.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/61eb2619-ca63-4de6-887f-e3cd4df59def",
            "display": "<span>Trillian, Waiting for the Barbarians, Translated into Oglaroon by Gail Andrews.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9f81af8a-b63e-42ee-be93-dd4c798d5686",
            "display": "<span>Agda, <i>Vanity Fair</i>, Translated into Happi-Werld III by Zarquon.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bf14cea0-d176-403a-b31c-f06702dd1938",
            "display": "<span>Charles Darwin, Many Waters, Translated into Lamuella by Humma Kavula.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a7785cc0-66a4-4f48-af2f-5f6eac1b3cfc",
            "display": "<span><i>Mother Night</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6254067d-4112-447c-ad7e-a3d2de479695",
      "date": "1965-03-30T00:00:00.000-05:00",
      "label": "30 March 1965 - Homer Simpson",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/9f13b936-1583-46d9-9612-e536cb285a00",
            "display": "<span>readymade, <i>3 Idiots</i>, Breanashire, 14 December 1957.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0a57a344-4824-4de7-a179-ea5550ec6580",
            "display": "<span>Broop Kidron Thirteen, Trixie Mattel.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/96fc3687-44d2-4597-8655-d075d50260fb",
            "display": "<span><i>Oglaroon</i>, Robbie Turner.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a7c64d64-c19b-41d1-9dac-e31f49c243f5",
            "display": "<span><i>Lamuella</i>, Manila Luzon.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/76911e6f-93e3-44d1-affe-360686e31d8f",
            "display": "<span><i>Cathedral of Chalesm</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fe61b035-e55b-450b-a286-369a6d3d7311",
            "display": "<span><i>London</i>.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7fe72d90-6425-4d46-9a5e-e6cbd5e13baf",
            "display": "<span>Majikthise, Girls & Boys, Hoodie blog quinoa readymade post-ironic.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/87ae0961-0e0e-4462-a9e3-7f3385040505",
            "display": "<span>JinJenz, When 2 R In Love, Offal sartorial keytar health 3 wolf moon ramps.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9d733107-de1d-438a-8c71-3ca2959c5eff",
            "display": "<span>Arthur Philip Deodat, Alphabet St., Forage <i>actually yolo cliche kale chips you probably haven't heard of them before they sold out</i> skateboard.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4bf89576-f618-4509-a4e0-9cce13ea29ac",
      "date": "1965-10-17T00:00:00.000-04:00",
      "label": "17 October 1965 - Leia Organa",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "<i>Belgium</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/20844d04-fbe0-409f-9598-7a6b1dc2fc18",
            "display": "<span><i>Xaxis</i>, Alexis Michelle.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/4866fe3c-5d5a-4c47-812a-324f23c56efb",
            "display": "<span>Jaglan Beta, Willam.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ff820760-978a-45ea-b7ce-9cc2f23dcd63",
            "display": "<span>Krikkit, Sharon Needles.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4774260c-02d7-4a7a-aa50-1482f4edddd8",
            "display": "<span><i>Emory</i> (1922-1990). Sriracha <i>tote bag truffaut loko tacos muggle magic mlkshk</i> chillwave.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bea27d03-f63b-448c-a30a-f38584849776",
            "display": "<span>Bunny Lebowski, <i>Leia Organa</i>, Marvin Helvetica banh mi diy scenester vinyl brunch.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c47ac650-0149-4417-ab37-36d80d32f537",
            "display": "<span>Bunny Lebowski, Leia Organa, Fenchurch Hashtag brunch lumbersexual kombucha tilde shoreditch mumblecore bicycle rights next level.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c8c1586a-5d1f-40fe-8ede-e1c18fb96b60",
            "display": "<span>Walter Sobchak, Miracle Max, Galaxia Woonbeam Truffaut franzen flexitarian artisan ennui 3 wolf moon.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2335a8d2-cbb5-488e-955e-dd4fdd062c05",
            "display": "<span>Dr. Bridgette Labadie, Bury My Heart at Wounded Knee, Dalkey Archive Press.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 21,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
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
          "doc_count": 4
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
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
      "doc_count": 21,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "D'Amore Academy",
          "doc_count": 12
        },
        {
          "key": "East Emmerich",
          "doc_count": 11
        },
        {
          "key": "Cruickshank University",
          "doc_count": 9
        },
        {
          "key": "Eastern Kshlerin College",
          "doc_count": 6
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 21,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 9
        },
        {
          "key": "german",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 21,
    "links": {
      "self": "http://example.org/letters?page=1&search=robot%3C%2Fi%3E"
    }
  }
}</pre>
