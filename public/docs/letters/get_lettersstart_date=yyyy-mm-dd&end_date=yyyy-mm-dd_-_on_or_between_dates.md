# Letters API

## GET /letters?start_date=:YYYY-MM-DD&amp;end_date=:YYYY-MM-DD - On or Between Dates

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of paginated letters response. | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels. | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels. | false | null
| senders | Comma seperated list of sender labels. | false | null
| repositories | Comma seperated list of repository labels. | false | null
| languages | Case insensitive comma seperated list of languages. Options are English, French, German, and Italian. | false | null
| volumes | Comma sperated list of volumes. Options are 0, 1, 2, 3, and 4. Zero means no volume. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?start_date=1956-12-25&amp;end_date=1959-08-29</pre>

#### Query Parameters

<pre>start_date: 1956-12-25
end_date: 1959-08-29</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1959-08-29&amp;page=1&amp;start_date=1956-12-25&gt;; rel=&#39;self&#39;
X-Total-Count: 7
Content-Type: application/json; charset=utf-8
ETag: W/&quot;aff1e0c04208e91eba35420aaa53e3e0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 40e8ce60-8b30-40db-82b2-a6ce0cfc29c1
X-Runtime: 2.983230
Vary: Origin
Content-Length: 34322</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/3abc7e5c-42c2-47bc-bcc6-0c46ddd6da7f",
      "date": "1956-12-25T00:00:00.000-05:00",
      "label": "25 December 1956 - Russel, Renato",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Russel, Renato"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7658d501-f424-43a9-97aa-161148fb8629",
            "display": "<section><p><strong>Rehearsal</strong>, Banjo shoreditch aesthetic pitchfork.</p>\n<p><strong>Attended with</strong> Jesus Quintana and The Allitnils</p>\n<p><strong>Place, Date</strong> Cedricshire, 26 January 1957</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f5011a76-c88e-4f4c-ade8-17283d68353b",
            "display": "<section><p><strong>Ibiza</strong></p>\n<p>Heirloom <i>kickstarter tacos humblebrag</i> synth.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/95fed5a0-e84e-4626-b862-374e04b1fac1",
            "display": "<section><p><strong>Author</strong> Bowerick Wowbagger, <strong>Original Title</strong> <i>In Death Ground</i></p>\n<p><strong>Translated into</strong> Irish Gaelic by Marvin</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0017ddd8-c656-416a-93a8-2becda4a1c5b",
            "display": "<section><p><strong>Author</strong> Arthur Philip Deodat, <strong>Original Title</strong> <i>The Moon by Night</i></p>\n<p><strong>Translated into</strong> German by Genghis Khan</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/24a438b4-4523-4ce5-a36f-c99fe058c287",
            "display": "<section><p><strong>Author</strong> The Allitnils, <strong>Original Title</strong> The Painted Veil</p>\n<p><strong>Translated into</strong> Marathi by Marvin</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/09807e16-d81d-48ee-88a0-0c1f58cf742a",
            "display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> New Position</p>\n<p><strong>Description</strong> Venmo beard pickled cronut.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/200489cd-b9fb-4e3f-ade6-6ec7e77b02ed",
            "display": "<section><p><strong>Artist</strong> Emily Saunders</p>\n<p><strong>Title</strong> When 2 R In Love</p>\n<p><strong>Description</strong> Waistcoat <i>sriracha skateboard knausgaard beard</i> bushwick.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/de45d545-e8c6-4353-b976-b62b5c025b63",
            "display": "<section><p><strong>Artist</strong> Slartibartfast</p>\n<p><strong>Title</strong> <i>3 Chains o' Gold</i></p>\n<p><strong>Description</strong> Loko literally next level synth cred mustache.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/36eace32-0237-4972-a0e6-90ac656a8946",
      "date": "1957-01-26T00:00:00.000-05:00",
      "label": "26 January 1957 - Rice, Misha",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Rice, Misha"
      ],
      "destinations": [
        "<i>Kakrafoon Kappa</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/907ce87d-55d8-4bad-85f2-8f944a66389f",
            "display": "<section><p><strong>Title</strong> Bicycle Thieves</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Krikkit One, South Reyview</p>\n<p><strong>Date(s)</strong> 1957-04-20.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/9aeffa43-ec4b-4ac2-825e-48c14d560498",
            "display": "<section><p><strong>Title</strong> The Green Mile</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Will you open up the exit hatch, please, computer?</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> RW6, West Janeenhaven</p>\n<p><strong>Date(s)</strong> 1972-01-27.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e131720a-c2eb-4056-8930-f7d4b962e098",
            "display": "<section><p><strong>Title</strong> Full Metal Jacket</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, South Norbertoborough</p>\n<p><strong>Date(s)</strong> 1966-01-26.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/75f8163b-243c-440a-a5f4-a1c6fc22c182",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1971-01-05.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/dba9c860-8ead-47fc-a8fe-7c8195135cb5",
            "display": "<section><p><strong>Columbia</strong></p>\n<p><strong>1964-05-05.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/43becfd9-ba5c-42e0-831a-2f5b10c58722",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1935-02-15.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3fcfdf22-9eec-4740-8b67-787c1d8b7790",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Casemate Publishers</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Publication</strong> Irony before they sold out paleo cray.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/2be0f3cf-6107-44b7-8ea8-2b768f7de7ff",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Mark Batty Publisher</i></p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Portland kombucha whatever poutine gentrify heirloom distillery single-origin coffee tofu.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/56319d03-2c5a-4147-9613-30e01e3dbfef",
            "display": "<section><p><strong>Author</strong> Trillian, <strong>Original Title</strong> <i>An Instant In The Wind</i></p>\n<p><strong>Translated into</strong> Greek by Hotblack Desiato</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a6ce996f-c98e-4673-93c6-f46095012fdb",
            "display": "<section><p><strong>Author</strong> Mr. Prosser, <strong>Original Title</strong> <i>Tirra Lirra by the River</i></p>\n<p><strong>Translated into</strong> Hungarian by Colin the Security Robot</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/53ba7b7a-e8fe-4066-b501-2ccbb0f25797",
            "display": "<section><p><strong>Author</strong> Questular Rontok, <strong>Original Title</strong> Vanity Fair</p>\n<p><strong>Translated into</strong> French by Lunkwill and Fook</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/194d22f1-df0a-4eac-9334-b397e2a32a9a",
      "date": "1957-11-16T00:00:00.000-05:00",
      "label": "16 November 1957 - Cruickshank, Cletus",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Cruickshank, Cletus"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9eaf0702-6a46-4c7b-a572-c5150ff4ecab",
            "display": "<section><p><strong><i>Vogsphere</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/92483d73-30e6-493c-936d-45f91ec8e3ad",
            "display": "<section><p><strong>Shila Larkin, 1920-1977</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3fe914fa-cd97-403a-a29d-331c7809c736",
            "display": "<section><p><strong>Rikki Pollich, 1921-1981</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b1fedab8-9a87-4199-9aa7-9bf98958f733",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> And God Created Woman</p>\n<p><strong>Description</strong> Carry synth kinfolk banjo churchkey.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1db90d90-54df-4dd7-a7ff-a83b12755d76",
            "display": "<section><p><strong>Artist</strong> Agrajag</p>\n<p><strong>Title</strong> My Name Is Prince</p>\n<p><strong>Description</strong> Dreamcatcher pickled yuccie jean shorts selfies.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f65d64ad-f041-407a-906a-856fc1d1cdf5",
            "display": "<section><p><strong>Artist</strong> Emily Saunders</p>\n<p><strong>Title</strong> <i>Tamborine</i></p>\n<p><strong>Description</strong> Flexitarian art party lofi polaroid deep v.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f61f4dc5-2187-4925-80ed-d8662a6100cb",
            "display": "<section><p><strong>Title</strong> <i>Sleep the Brave</i></p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Date</strong> 1940-02-27.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a5cd9a59-595b-4eb0-b8c3-85b4f1fd54db",
            "display": "<section><p><strong>Title</strong> <i>Mother Night</i></p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Date</strong> 1922-12-08.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/925e22b2-00c0-4020-b2c5-86f01682f82b",
      "date": "1958-01-12T00:00:00.000-05:00",
      "label": "12 January 1958 - Reilly, Toby",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Reilly, Toby"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/db275f97-dd1d-4123-be86-993eb7297319",
            "display": "<section><p><strong>NowWhat</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/311cfbb3-9b34-4087-a630-5bbb1772337f",
            "display": "<section><p><strong>Joni Ondricka, 1903-1977</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/014bebc2-feda-4285-8419-83842aaf1343",
            "display": "<section><p><strong>Title</strong> The Pianist</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Heart of Gold, East Fernview</p>\n<p><strong>Date(s)</strong> 1970-06-10.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7a59607b-a2ec-4ecb-9d18-47d171d76940",
            "display": "<section><p><strong>Author</strong> Prak, <strong>Original Title</strong> <i>To Say Nothing of the Dog</i></p>\n<p><strong>Translated into</strong> German by Ford Prefect</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/05e89a87-c617-4499-8432-93fc284ba046",
            "display": "<section><p><strong>Author</strong> Galaxia Woonbeam, <strong>Original Title</strong> <i>The Widening Gyre</i></p>\n<p><strong>Translated into</strong> French And English by Barry Manilow</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/db21d91b-a227-409c-a5b5-bc0d2f71454a",
            "display": "<section><p><strong>Author</strong> Lintilla, <strong>Original Title</strong> The Needle's Eye</p>\n<p><strong>Translated into</strong> Arabic by Charles Darwin</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ac387329-66b5-4dc0-bf71-9ce382be45de",
      "date": "1959-01-07T00:00:00.000-05:00",
      "label": "07 January 1959 - Romaguera, Macie",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Romaguera, Macie"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f276bb31-3f10-43a3-8d80-86adf92705a0",
            "display": "<section><p><strong>Chuck Rodriguez, 1903-1972</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/32a3cec4-8893-430e-814b-0f3729fec2ec",
            "display": "<section><p><strong>Vincent Osinski, 1914-1971</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1d6fedd8-5413-41b9-9c3a-b0fd394c13e6",
            "display": "<section><p><strong>Rupert</strong></p>\n<p>Meditation <i>roof fanny pack</i> authentic.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bc36d047-d7e8-4a80-bc02-0c3dde86cd58",
            "display": "<section><p><strong>Artist</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> <i>How Come You Don't Call Me Anymore?</i></p>\n<p><strong>Description</strong> You probably havent heard of them iphone 8bit wolf sustainable.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2755bf6b-6eab-406c-a9d0-441388ba251c",
            "display": "<section><p><strong>Artist</strong> Fenchurch</p>\n<p><strong>Title</strong> <i>Mountains</i></p>\n<p><strong>Description</strong> Biodiesel <i>distillery farmtotable normcore pitchfork shoreditch waistcoat brooklyn</i> tryhard.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b45c4065-5b92-4e29-9202-f44ccc5bc7b1",
            "display": "<section><p><strong>Artist</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Still Waiting</i></p>\n<p><strong>Description</strong> Neutra keffiyeh hashtag chia kinfolk kale chips sustainable tryhard beard.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/bb4b619b-5717-4c6f-b5e1-29ca7a8bc0ae",
            "display": "<section><p><strong>Title</strong> <i>Fame Is the Spur</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Date</strong> 1935-04-14.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/de4e3a07-5902-4bb5-8419-45a1d48fa864",
            "display": "<section><p><strong>Title</strong> <i>The Green Bay Tree</i></p>\n<p><strong>Proposal/Response</strong> In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Date</strong> 1928-11-08.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d169dae6-3b1f-4e83-8446-f341992d6e96",
            "display": "<section><p><strong>Title</strong> <i>Specimen Days</i></p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Yooden Vranx</p>\n<p><strong>Date</strong> 1955-05-04.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c7111e00-118c-4ffb-99e7-4f649e9dc73c",
      "date": "1959-07-29T00:00:00.000-04:00",
      "label": "29 July 1959 - Dach, Vinita",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Dach, Vinita"
      ],
      "destinations": [
        "<i>Frogstar system</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d588f188-aaf5-4d14-9bef-df004c65bc06",
            "display": "<section><p><strong>Title</strong> Into the Wild</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Tanngrisnir, Lake Debbytown</p>\n<p><strong>Date(s)</strong> 1948-01-26.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/156b9a28-9e21-4d5d-add2-f0d3864657a2",
            "display": "<section><p><strong>Title</strong> <i>Lock, Stock and Two Smoking Barrels</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Tanngrisnir, Port Ashlynburgh</p>\n<p><strong>Date(s)</strong> 1970-12-16.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/ea2bb6c9-909d-4fbc-8f24-8940df45071b",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1956-05-28.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/2fb8c286-df06-4f05-b0e3-7b4f14840b6a",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1953-11-14.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/35d35aca-313f-4aec-8385-1c70abdf24d0",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1943-01-06.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/269660b5-7df0-4687-96bf-42a16a121a8f",
            "display": "<section><p><strong>Author</strong> Oolon Colluphid, <strong>Original Title</strong> Fair Stood the Wind for France</p>\n<p><strong>Translated into</strong> Italian by Vroomfondel</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/387c926c-d3af-4220-b8d1-d204c4ae3d3b",
            "display": "<section><p><strong>Author</strong> Yooden Vranx, <strong>Original Title</strong> <i>The Soldier's Art</i></p>\n<p><strong>Translated into</strong> Polish by Slartibartfast</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b8dd5d75-c248-4db9-84e6-c41cb021c699",
            "display": "<section><p><strong>Author</strong> Majikthise, <strong>Original Title</strong> Lilies of the Field</p>\n<p><strong>Translated into</strong> Braille by Barry Manilow</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/772f6416-e081-41c0-ad31-324b4fe5a6b7",
            "display": "<section><p><strong>Title</strong> <i>Down to a Sunless Sea</i></p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1938-06-23.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/58fab02a-3340-46ed-b0e8-51d7860114c7",
            "display": "<section><p><strong>Title</strong> The Far-Distant Oxus</p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Frankie and Benjy</p>\n<p><strong>Date</strong> 1944-01-02.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/6ed995d3-c0c5-470c-adb4-7874ffc387e2",
            "display": "<section><p><strong>Title</strong> Dying of the Light</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Date</strong> 1961-10-20.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/02eafa5a-f7fe-4052-9a23-03bfde88c6e0",
      "date": "1959-08-29T00:00:00.000-04:00",
      "label": "29 August 1959 - Ebert, Shane",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Ebert, Shane"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5f3dd81f-a736-4641-a2b0-aa15ca54f613",
            "display": "<section><p><strong>Composer</strong> Marvin</p>\n<p><strong>Title</strong> Thunder</p>\n<p><strong>Description</strong> Neutra cleanse photo booth keytar cardigan austin squid portland.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e314399e-842a-4617-a437-e7ff5942a7c8",
            "display": "<section><p><strong>Megabrantis cluster</strong></p>\n<p>Kombucha <i>iphone squid ethical kogi fanny</i> pack.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/3ae2c5d1-e7fe-4dab-bb31-f28d71172f39",
            "display": "<section><p><strong><i>Han Dold City</i></strong></p>\n<p>Wes <i>anderson coldpressed godard authentic crucifix xoxo</i> chia.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c5fe1778-8362-4f97-b825-d2e538cacbec",
            "display": "<section><p><strong>Madagascar</strong></p>\n<p>Viral <i>selfies irony tumblr chambray microdosing sustainable banjo</i> roof.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/91c2ef45-0f21-4a20-8a28-b8eb38b6f00f",
            "display": "<section><p><strong>Author</strong> Aron Schaefer</p>\n<p><strong>Title</strong> Blood's a Rover</p>\n<p><strong>Publication</strong> Palgrave Macmillan.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c58b12e6-013f-4321-a117-3715311ac826",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>Black Sweat</i></p>\n<p><strong>Description</strong> Pitchfork venmo health tote bag.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f1a78cdf-907c-45e6-849b-3efcd09ebd77",
            "display": "<section><p><strong>Artist</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> <i>The Beautiful Ones</i></p>\n<p><strong>Description</strong> Drinking <i>typewriter letterpress fingerstache franzen twee</i> actually.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ad28dc0f-375c-41bd-a5ac-d7c8b9622683",
            "display": "<section><p><strong>Artist</strong> Phouchg</p>\n<p><strong>Title</strong> <i>Guitar</i></p>\n<p><strong>Description</strong> Messenger bag aesthetic small batch intelligentsia narwhal venmo sartorial humblebrag.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 3,
          "doc_count": 2
        },
        {
          "key": 2,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "doc_count": 7,
      "buckets": [
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 1
        },
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
          "doc_count": 3
        }
      ]
    },
    "repositories": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Murray College",
          "doc_count": 4
        },
        {
          "key": "Southern Washington University",
          "doc_count": 4
        },
        {
          "key": "Eastern Nebraska College",
          "doc_count": 2
        },
        {
          "key": "Rodriguez College",
          "doc_count": 2
        }
      ]
    },
    "language": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 2
        },
        {
          "key": "french",
          "doc_count": 2
        },
        {
          "key": "italian",
          "doc_count": 2
        },
        {
          "key": "german",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 7,
    "links": {
      "self": "http://example.org/letters?end_date=1959-08-29&page=1&start_date=1956-12-25"
    }
  }
}
~~~

