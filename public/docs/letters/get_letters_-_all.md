# Letters API

## GET /letters - All

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

<pre>GET /letters</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 30
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9e99685890137a965bd4f01dbd710c83&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 70aade0d-da9a-4f82-b2ba-f878e8029eab
X-Runtime: 2.715550
Vary: Origin
Content-Length: 104150</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/1b91bf81-fa36-457c-961e-670d287f84a3",
      "date": "1950-01-08T00:00:00.000-05:00",
      "label": "08 January 1950 - Schneider, Michal",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Schneider, Michal"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/181ac876-7736-4ffb-aaa8-d1792c0f2cf5",
            "display": "<section><p><strong>Sena Ullrich, 1924-1970</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/7ccfc004-1ca4-41ec-aef4-5916f3d61fdc",
            "display": "<section><p><strong>Carlo Stamm, 1923-1994</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7c7f92f3-95e4-4dff-a5f1-eb0d7178a42d",
            "display": "<section><p><strong>Title</strong> Paris, Texas</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / 42</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, North Traceyland</p>\n<p><strong>Date(s)</strong> 1934-08-15.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/f5c55799-4bf3-40b5-b9f8-f685eb7d1259",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Harper &amp; Row</p>\n<p><strong>Translator</strong> Agda</p>\n<p><strong>Publication</strong> Heirloom drinking semiotics bushwick.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f1d225ed-2da9-4e3a-9167-7400707b5fb3",
            "display": "<section><p><strong>Author</strong> Shelly Bashirian</p>\n<p><strong>Title</strong> <i>The Torment of Others</i></p>\n<p><strong>Publication</strong> Edupedia Publications.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1fff77d8-5606-4a61-a844-900920ecc175",
      "date": "1950-02-17T00:00:00.000-05:00",
      "label": "17 February 1950 - Mann, Lynwood",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Mann, Lynwood"
      ],
      "destinations": [
        "Boston"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/42030290-fd30-43b6-99ca-5d2a813b7b96",
            "display": "<section><p><strong>Composer</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> Sometimes It Snows In April</p>\n<p><strong>Description</strong> Ethical neutra tofu 90s.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9b9cd696-c30f-4ee8-9afc-6eb058510d96",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/2faad5f9-ca7a-46ce-ab79-0fc375834bd0",
            "display": "<section><p><strong>Damogran</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/fc48f008-279b-477e-b189-b19061fdf7c3",
            "display": "<section><p><strong><i>Frogstar World B</i></strong></p>\n<p>Austin tousled chambray hashtag glutenfree selvage tacos narwhal brunch.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e6ece84d-6ce6-4178-a741-08f6c0f4ae39",
            "display": "<section><p><strong><i>Seventh Galaxy of Light and Ingenuity</i></strong></p>\n<p>Kitsch <i>ugh direct trade helvetica irony craft beer muggle magic</i> pickled.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/9e5c57fa-c0c5-4c55-8989-3efc0afe05fd",
            "display": "<section><p><strong>Title</strong> <i>Inside Out</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Tanngrisnir, Chiabury</p>\n<p><strong>Date(s)</strong> 1965-07-26.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1d7af1c8-58fb-41f5-a7e6-fd5f3a6ac0b7",
      "date": "1956-07-15T00:00:00.000-04:00",
      "label": "15 July 1956 - West, Arvilla",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "West, Arvilla"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/467ba7cc-7df8-41fe-95ec-a5106e25e380",
            "display": "<section><p><strong>Rehearsal</strong>, Disrupt <i>retro hella chicharrones xoxo sartorial irony tousled</i> aesthetic.</p>\n<p><strong>Attended with</strong> The Dude and Deep Thought</p>\n<p><strong>Place, Date</strong> Joaquinaport, 30 September 1923</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9099e626-b2a7-4193-b81b-0ec72bbdbc47",
            "display": "<section><p><strong>Theatre</strong>, Artisan <i>banh mi chambray sartorial pork belly park whatever polaroid</i> helvetica.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Hotblack Desiato's bodyguard</p>\n<p><strong>Place, Date</strong> Boydbury, 16 May 1940</p>\n<p><strong>Director</strong> Tricia McMillan</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cb7fb072-2751-4d44-adbe-c97620d2d9a8",
            "display": "<section><p><strong>Radio Broadcast</strong>, Locavore <i>readymade synth park tattooed organic vhs</i> lofi.</p>\n<p><strong>Attended with</strong> Donny and The Allitnils</p>\n<p><strong>Place, Date</strong> North Sofia, 30 November 1950</p>\n<p><strong>Director</strong> Tricia McMillan</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cdad3b1d-2f59-41ac-829f-3f5838dc1941",
            "display": "<section><p><strong>Curt Osinski, 1912-1971</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/feacef4b-48e2-42d8-af69-ed250d34ff81",
            "display": "<section><p><strong>Ferne Brakus, 1918-1976</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/320c891d-b47c-4448-a3bd-c9cc7510e2be",
            "display": "<section><p><strong>Author</strong> Angel Leffler</p>\n<p><strong>Title</strong> <i>A Handful of Dust</i></p>\n<p><strong>Publication</strong> Left Book Club.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/76f8886f-e08e-4499-82c7-10e38311b7dc",
            "display": "<section><p><strong>Title</strong> <i>Far From the Madding Crowd</i></p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Date</strong> 1951-04-29.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c11dd259-651e-42ca-8215-0c462c4b4756",
            "display": "<section><p><strong>Title</strong> <i>The Green Bay Tree</i></p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Date</strong> 1959-04-30.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a2fac571-5697-479e-92b4-c32e1e46b8c7",
      "date": "1957-01-29T00:00:00.000-05:00",
      "label": "29 January 1957 - Crist, Teri",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Crist, Teri"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/654ee0fd-04b1-467a-b8e0-ce7fef4864d0",
            "display": "<section><p><strong>Composer</strong> Loonquawl</p>\n<p><strong>Title</strong> Nothing Compares 2 U</p>\n<p><strong>Description</strong> Kinfolk <i>microdosing mumblecore mustache chicharrones selvage</i> postironic.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/009d2262-4b2b-4a9c-af70-800beb52f84c",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Delirious</i></p>\n<p><strong>Description</strong> Humblebrag <i>letterpress shabby chic</i> pourover.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/beb1c548-1d4c-4eac-bf27-1f0c91f560f5",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1945-06-30.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/384eb63a-b548-4eb0-b6d0-f704b689f766",
            "display": "<section><p><strong>Columbia</strong></p>\n<p><strong>1947-05-06.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8ae0f4e5-a9f0-4617-a750-e7397caeb37f",
            "display": "<section><p><strong>Author</strong> Max Quordlepleen, <strong>Original Title</strong> Blithe Spirit</p>\n<p><strong>Translated into</strong> Marathi by Magrathean sperm whale</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3bf828f4-9ec0-4118-9a5a-34c1d08d3cef",
            "display": "<section><p><strong>Author</strong> Elvis, <strong>Original Title</strong> The Widening Gyre</p>\n<p><strong>Translated into</strong> Russian by Hactar</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7b21e425-c3a1-42ac-9dc4-553b00aa1d72",
            "display": "<section><p><strong>Artist</strong> Humma Kavula</p>\n<p><strong>Title</strong> <i>Under The Cherry Moon</i></p>\n<p><strong>Description</strong> Everyday <i>freegan street tote bag brooklyn lomo asymmetrical</i> pickled.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/74a57f82-9c85-4cee-a472-e296dec771b0",
      "date": "1957-02-10T00:00:00.000-05:00",
      "label": "10 February 1957 - Parisian, Alyssa",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Parisian, Alyssa"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/5e3f7f7b-c64f-42c0-a42e-6c5ca6448f02",
            "display": "<section><p><strong>Geraldo Leannon, 1922-1980</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6cd2db7d-72d4-4b7f-8c22-7a7c916dafd1",
            "display": "<section><p><strong>Tammy Gislason, 1927-1984</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/09edb4c5-616c-426a-9a2b-63125ac31843",
            "display": "<section><p><strong>Drema Mraz, 1921-1973</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e5912bc4-d31a-4a80-bb61-9e94b724d271",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1966-11-10.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/761ee1f4-b77a-43bc-87b2-34ff60c65702",
            "display": "<section><p><strong>Author</strong> Garkbit, <strong>Original Title</strong> I Will Fear No Evil</p>\n<p><strong>Translated into</strong> French And English by Tricia McMillan</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/28e1b006-b71d-4e15-8df6-daa34c742988",
            "display": "<section><p><strong>Title</strong> <i>Paths of Glory</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Date</strong> 1942-04-14.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/30e215ee-e69f-4b06-b287-be0417a9584a",
            "display": "<section><p><strong>Title</strong> Number the Stars</p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Date</strong> 1924-03-18.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a3767e3a-40ee-4880-9621-08f6ffdf52bb",
      "date": "1958-04-11T00:00:00.000-05:00",
      "label": "11 April 1958 - Greenfelder, Ivelisse",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Greenfelder, Ivelisse"
      ],
      "destinations": [
        "<i>Western Spiral Arm</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0d54659f-a509-4d97-9643-dcfecf5e3a35",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b35e3814-11a5-4166-8cbc-ee9161d9cf54",
            "display": "<section><p><strong>Brontitall</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c6735467-fac9-456f-9be8-a5352348e443",
            "display": "<section><p><strong>Ellsworth Purdy, 1918-1991</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/da64f982-eb00-48d7-9f9a-04614dddff34",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1949-01-11.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/dadd3059-57cd-4889-80bb-5f5f6c533160",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1935-05-30.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4fdd1c1b-84ee-4010-9c57-d92c82491443",
            "display": "<section><p><strong>Title</strong> <i>A Glass of Blessings</i></p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Lunkwill and Fook</p>\n<p><strong>Date</strong> 1950-03-23.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/76bd31c2-4cb9-4895-b682-651f46043d8e",
      "date": "1959-07-06T00:00:00.000-04:00",
      "label": "06 July 1959 - Fritsch, Granville",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Fritsch, Granville"
      ],
      "destinations": [
        "<i>Ysllodins</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/daaa1a5b-417e-4f2e-a6f9-d55732b2d5d4",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Five <i>dollar toast letterpress knausgaard mustache</i> chillwave.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/773a9797-81a4-4535-ae96-ec0450ed71be",
            "display": "<section><p><strong><i>Bistro Illegal</i></strong></p>\n<p>Keffiyeh jean shorts thundercats ugh meggings.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4916ecd9-6d66-4824-9087-b69f13bc0c92",
            "display": "<section><p><strong>The Domain of The King</strong></p>\n<p>Pickled xoxo intelligentsia waistcoat irony chia.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/cf404f9c-0430-4e93-a8e8-cbc174b58aef",
            "display": "<section><p><strong>Title</strong> The Sting</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Heart of Gold, West Quinn</p>\n<p><strong>Date(s)</strong> 1971-12-31.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/41d48693-2c6c-4423-9c22-2740cfda6485",
            "display": "<section><p><strong>Title</strong> <i>Star Wars: Episode VIII – The Last Jedi</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Billion Year Bunker, Lake Kariland</p>\n<p><strong>Date(s)</strong> 1929-11-05.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/10b54b8c-25ec-4aa0-8727-2ec3b4af2b08",
            "display": "<section><p><strong>Artist</strong> Grunthos the Flatulent</p>\n<p><strong>Title</strong> <i>Bambi</i></p>\n<p><strong>Description</strong> Quinoa <i>synth celiac tumblr occupy 8bit</i> austin.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2e3a071b-25bd-40b0-a723-aae783ef82e2",
            "display": "<section><p><strong>Artist</strong> Hillman Hunter</p>\n<p><strong>Title</strong> <i>Dead On It</i></p>\n<p><strong>Description</strong> Cornhole organic retro freegan ugh migas meh.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ecde6002-f400-4d51-9d6e-9917ac37dcd9",
            "display": "<section><p><strong>Artist</strong> Majikthise</p>\n<p><strong>Title</strong> <i>Cloreen Baconskin</i></p>\n<p><strong>Description</strong> Franzen <i>aesthetic mixtape art party crucifix pork belly</i> kickstarter.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0a3a8169-564f-4f9e-80da-9448933a5cd1",
            "display": "<section><p><strong>Title</strong> <i>Quo Vadis</i></p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Date</strong> 1968-03-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c0df8097-c460-429e-896f-44f2288e6a22",
            "display": "<section><p><strong>Title</strong> <i>A Confederacy of Dunces</i></p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Gag Halfrunt</p>\n<p><strong>Date</strong> 1930-07-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9ebdb508-77de-446c-af8e-3dfeca3c9da8",
            "display": "<section><p><strong>Title</strong> <i>I Sing the Body Electric</i></p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1929-07-17.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/611dc9b5-543e-4533-a571-66980edd92dc",
      "date": "1960-11-14T00:00:00.000-05:00",
      "label": "14 November 1960 - Goodwin, Ruben",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Goodwin, Ruben"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f93f88e3-e481-4b64-a6ec-077e8ba133c0",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/269590de-1e90-470d-868d-7033a45f6896",
            "display": "<section><p><strong><i>Earth</i></strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b365eb16-4f95-4f25-8e11-052fe481a612",
            "display": "<section><p><strong>Frogstar World C</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/bd52ee6a-138f-4ed5-901b-1ad4efd92501",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1923-08-11.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/18de4835-eda3-44f1-80b9-eff7af68a6e4",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1963-03-15.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/05d0765f-0f22-416f-8c69-8974120bb069",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1947-05-08.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c6296954-ed82-44ce-a40a-de3470beabb6",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Central European University Press</p>\n<p><strong>Translator</strong> Lunkwill and Fook</p>\n<p><strong>Publication</strong> Wolf mixtape photo booth flannel.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/49bb34cc-47bd-455e-b95f-587b7d0ce216",
            "display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> Look to Windward</p>\n<p><strong>Translated into</strong> Polish by Lintilla</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/05642aef-7675-4f4b-9d36-669848fb564d",
            "display": "<section><p><strong>Author</strong> Questular Rontok, <strong>Original Title</strong> <i>Little Hands Clapping</i></p>\n<p><strong>Translated into</strong> Gaelic by Arthur Dent</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6e6abd78-6064-480b-a547-689f1f4e0030",
            "display": "<section><p><strong>Author</strong> Yooden Vranx, <strong>Original Title</strong> <i>A Time to Kill</i></p>\n<p><strong>Translated into</strong> Icelandic by Arthur Dent</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d0db7243-6821-49df-98af-88995cd40846",
      "date": "1961-04-21T00:00:00.000-05:00",
      "label": "21 April 1961 - Predovic, Ela",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Predovic, Ela"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/88ee576e-8247-4c95-9e2d-c469bded29a1",
            "display": "<section><p><strong>Theatre</strong>, Umami <i>xoxo pbrb churchkey</i> tryhard.</p>\n<p><strong>Attended with</strong> Brandt and Mr. Prosser</p>\n<p><strong>Place, Date</strong> South Kittiehaven, 25 November 1968</p>\n<p><strong>Director</strong> Oolon Colluphid</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6c2610ea-e958-4d8d-b54b-25a023d300f3",
            "display": "<section><p><strong>Rehearsal</strong>, Literally flexitarian artisan selvage churchkey five dollar toast chillwave ugh.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> Lake Borisland, 04 October 1937</p>\n<p><strong>Director</strong> Random Dent</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/31054e66-4340-4585-835d-02aff9188dca",
            "display": "<section><p><strong>Reading</strong>, Street <i>echo pork belly waistcoat deep v food truck</i> narwhal.</p>\n<p><strong>Attended with</strong> Karl Hungus and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> New Sandy, 05 April 1965</p>\n<p><strong>Director</strong> Hotblack Desiato</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/32b4aa63-da04-498a-99d4-2f9bd3a34ce3",
            "display": "<section><p><strong>Composer</strong> Phouchg</p>\n<p><strong>Title</strong> When We're Dancing Close And Slow</p>\n<p><strong>Description</strong> Letterpress <i>paleo pbrb art</i> party.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/35849cf5-0f00-4aaa-b312-d9b6e173ba1e",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1964-01-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9417c39e-b8e0-496c-9a79-3734b4e5e07a",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1924-08-01.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/34aecd35-d9c2-487c-849c-591a0804792b",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1970-03-10.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/aa133751-ae05-4289-8c33-9f1ec2d36e96",
            "display": "<section><p><strong>Title</strong> <i>The Millstone</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1952-05-26.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/476cb348-c083-49c4-9bcb-d88db89eed2c",
            "display": "<section><p><strong>Title</strong> Dying of the Light</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Ford Prefect</p>\n<p><strong>Date</strong> 1926-08-01.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f05298e8-96e3-4244-9377-de77fe3b2dfc",
      "date": "1964-10-29T00:00:00.000-05:00",
      "label": "29 October 1964 - Goldner, Yvone",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Goldner, Yvone"
      ],
      "destinations": [
        "<i>Rupert</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f2545f25-9c5b-4c61-8976-b2bcece52cac",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1960-04-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/3952ab8d-328c-47da-91c9-c68b593a407f",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1939-11-30.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/db72c9a1-ba25-4c75-8704-6b8a61f38e7d",
            "display": "<section><p><strong>Author</strong> Cortney Greenfelder</p>\n<p><strong>Title</strong> The Skull Beneath the Skin</p>\n<p><strong>Publication</strong> Ziff Davis Media.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a29a6495-6af5-4d35-bb77-1988a3a06fe0",
            "display": "<section><p><strong>Author</strong> Antonio Ledner</p>\n<p><strong>Title</strong> <i>Oh! To be in England</i></p>\n<p><strong>Publication</strong> Peace Hill Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/fd78b5dc-36b2-4869-a2ca-815c4379f37c",
            "display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> <i>Butter In a Lordly Dish</i></p>\n<p><strong>Translated into</strong> Spanish by Agda</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/413a5754-b8b6-49e5-97e3-1feb238ba2ca",
            "display": "<section><p><strong>Author</strong> Majikthise, <strong>Original Title</strong> This Side of Paradise</p>\n<p><strong>Translated into</strong> Flemish by Mella</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c2b70c5d-f635-434e-aff6-caba322a079e",
            "display": "<section><p><strong>Artist</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> I Could Never Take The Place Of Your Man</p>\n<p><strong>Description</strong> Bicycle <i>rights street wayfarers franzen crucifix</i> narwhal.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9e490cf8-8c17-41cb-9469-d208e9e493d1",
            "display": "<section><p><strong>Artist</strong> Genghis Khan</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Five dollar toast forage bespoke pitchfork.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/dcacd9d2-0f6d-4253-a2be-ba23ed0b7fdd",
            "display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> <i>It's Gonna Be A Beautiful Night</i></p>\n<p><strong>Description</strong> Mlkshk <i>lumbersexual taxidermy phlogiston trust fund banh mi narwhal whatever</i> hammock.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ef4f2049-194a-4511-87f7-1e02232a746b",
      "date": "1967-04-14T00:00:00.000-05:00",
      "label": "14 April 1967 - Grimes, Lillian",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Grimes, Lillian"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4bd65f28-daac-4dbd-82c7-75abf52922d4",
            "display": "<section><p><strong>Radio Broadcast</strong>, Heirloom <i>art party sustainable truffaut mumblecore fanny</i> pack.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Yooden Vranx</p>\n<p><strong>Place, Date</strong> Port Douglas, 03 June 1925</p>\n<p><strong>Director</strong> Zarquon</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/eab8485f-1316-4f88-b5f0-ccb496e3125e",
            "display": "<section><p><strong>Rehearsal</strong>, Meh vice five dollar toast wes anderson tryhard.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Emily Saunders</p>\n<p><strong>Place, Date</strong> Skyestad, 26 June 1923</p>\n<p><strong>Director</strong> Agda</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f3fc3e3d-cc91-4690-9ae6-cef7c29b47b1",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1938-10-22.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/23dd4913-1175-4280-a6e9-3704f6dda74a",
            "display": "<section><p><strong>Artist</strong> Arthur Dent</p>\n<p><strong>Title</strong> U Got The Look</p>\n<p><strong>Description</strong> Gastropub <i>bitters yolo health</i> pbrb.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/261b0d23-9c4b-4839-b26e-5606a5d414c7",
            "display": "<section><p><strong>Title</strong> <i>A Monstrous Regiment of Women</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Date</strong> 1935-05-05.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/12c76916-5d31-44dc-9233-99ee69786ee9",
            "display": "<section><p><strong>Title</strong> The Way Through the Woods</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Date</strong> 1945-07-25.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d4bbfa4d-cb6a-4863-aba8-bee94fc54eea",
      "date": "1970-01-22T00:00:00.000-05:00",
      "label": "22 January 1970 - Buckridge, Jammie",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Buckridge, Jammie"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e7fda439-f420-4dc1-ae86-cb8659b816c8",
            "display": "<section><p><strong><i>Frogstar World A</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f14c9c68-75e9-477c-8121-13ac103f6156",
            "display": "<section><p><strong>Consuelo Brown, 1923-1974</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d77d32db-8ac5-4e60-90a5-61e7615d3a11",
            "display": "<section><p><strong>Preliumtarn</strong></p>\n<p>Chartreuse stumptown singleorigin coffee wolf biodiesel yr tryhard etsy waistcoat.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f403665a-2ea0-43f4-91ae-5dd59e7532a4",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Cliche postironic green juice keytar.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6d5a53ce-bde0-4697-bf67-531bdeb40254",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> Girls &amp; Boys</p>\n<p><strong>Description</strong> Messenger <i>bag keytar wayfarers listicle lomo green juice pitchfork</i> kitsch.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c7570cfa-daf4-4224-865e-bd3e6809add3",
      "date": "1971-02-20T00:00:00.000-05:00",
      "label": "20 February 1971 - Yost, Yolande",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Yost, Yolande"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4147602e-5a47-4a86-830c-29b5e3fa45c4",
            "display": "<section><p><strong>Composer</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> Money Don't Matter 2 Night</p>\n<p><strong>Description</strong> Literally <i>pbrb slowcarb muggle magic banjo celiac forage</i> vinegar.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/b832aa51-7a1f-43fe-9b91-ada13a94aa06",
            "display": "<section><p><strong>Evildrome Boozarama</strong></p>\n<p>Health <i>butcher sustainable messenger bag gentrify shoreditch whatever</i> leggings.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e373c3d4-d79d-46d7-b16b-6db9302f25fa",
            "display": "<section><p><strong><i>Guildford</i></strong></p>\n<p>Sriracha skateboard hella green juice pabst glutenfree.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/6ec4fb73-00c6-4bb3-8f08-a8d770806cc8",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1947-04-09.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/61afaf78-9e04-460d-ad44-67246d02ec5c",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Allen Ltd</p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Publication</strong> Waistcoat cardigan loko readymade microdosing typewriter.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/be8fb10b-1c6a-4957-bd7f-9a8ea9c56b4c",
      "date": "1971-05-30T00:00:00.000-04:00",
      "label": "30 May 1971 - Hamill, Sam",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Hamill, Sam"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/cc4ac565-78dc-4afc-930d-a51c82f31834",
            "display": "<section><p><strong>Reading</strong>, Food <i>truck vhs lumbersexual kombucha</i> retro.</p>\n<p><strong>Attended with</strong> Brandt and Wonko the Sane</p>\n<p><strong>Place, Date</strong> East Jami, 29 January 1924</p>\n<p><strong>Director</strong> Garkbit</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/964c2007-b79b-46a1-8ea5-648fa56746ae",
            "display": "<section><p><strong>Reading</strong>, Brooklyn <i>master diy before they sold out vinyl next level fashion</i> axe.</p>\n<p><strong>Attended with</strong> The Dude and Arthur Philip Deodat</p>\n<p><strong>Place, Date</strong> New Genetown, 06 June 1927</p>\n<p><strong>Director</strong> Lintilla</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b054ec6c-8ede-4c2f-969c-885d8532f788",
            "display": "<section><p><strong>Theatre</strong>, Literally <i>mustache gastropub messenger bag churchkey flexitarian</i> ugh.</p>\n<p><strong>Attended with</strong> Donny and Rob McKenna</p>\n<p><strong>Place, Date</strong> Vannesaville, 27 August 1962</p>\n<p><strong>Director</strong> Dan Streetmentioner</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/88f2fc57-280d-4520-800f-f82b65f8a8e5",
            "display": "<section><p><strong>Composer</strong> Pasta Fasta</p>\n<p><strong>Title</strong> <i>Darling Nikki</i></p>\n<p><strong>Description</strong> Brooklyn offal chia readymade fixie kogi keytar deep v tumblr.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/31be095e-34f3-427b-965e-625d13ef9c27",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f839cb0a-b8c1-4364-a97c-8b3a77073864",
            "display": "<section><p><strong>Frogstar World A</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/ae46ff8e-861d-4664-b5c3-7037f433ac8c",
            "display": "<section><p><strong>Jeremy Ferry, 1924-1979</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/92e0ae63-abd3-4e6a-8a66-3a57daddfd9a",
      "date": "1972-11-20T00:00:00.000-05:00",
      "label": "20 November 1972 - Rogahn, Luciana",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Rogahn, Luciana"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/33e20544-0e49-4128-a5e7-22486808162c",
            "display": "<section><p><strong>Rehearsal</strong>, Synth <i>gentrify readymade singleorigin coffee crucifix you probably havent heard of them locavore</i> marfa.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Agrajag</p>\n<p><strong>Place, Date</strong> New Alice, 17 April 1958</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3b7ffe3d-b7ee-4e51-a183-484d7dc08f5e",
            "display": "<section><p><strong>Reading</strong>, Ethical hella xoxo flexitarian.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Reg Nullify</p>\n<p><strong>Place, Date</strong> Kuhicberg, 11 May 1949</p>\n<p><strong>Director</strong> Deep Thought</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cb0611ab-ab32-429c-b3fa-af7622a90a20",
            "display": "<section><p><strong>Reading</strong>, Green <i>juice diy schlitz heirloom xoxo</i> hammock.</p>\n<p><strong>Attended with</strong> Brandt and Hotblack Desiato's bodyguard</p>\n<p><strong>Place, Date</strong> Lewisland, 16 March 1958</p>\n<p><strong>Director</strong> Arthur Philip Deodat</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/cbed3f3a-1578-4d14-bd10-a674ba4dec19",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> <i>Charles Scribner's Sons</i></p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Publication</strong> Jean shorts tacos sustainable ennui.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1134f4bf-8f7c-4fbf-a164-1bc05cd11bb2",
            "display": "<section><p><strong>Author</strong> Jae Maggio</p>\n<p><strong>Title</strong> The Wives of Bath</p>\n<p><strong>Publication</strong> Simon &amp; Schuster.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4ba6c8f8-7d1f-47d9-8c2f-a2ce25d44533",
            "display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> <i>Lilies of the Field</i></p>\n<p><strong>Translated into</strong> Finnish by Trin Tragula</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e1d5e17e-9ca3-4dbe-9d39-243ea2e8214c",
            "display": "<section><p><strong>Author</strong> Zarquon, <strong>Original Title</strong> Cover Her Face</p>\n<p><strong>Translated into</strong> Swedish by Ford Prefect</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/8f39abda-0d30-4de5-aa4e-ccf3eea3e60e",
            "display": "<section><p><strong>Author</strong> Emily Saunders, <strong>Original Title</strong> The Wives of Bath</p>\n<p><strong>Translated into</strong> Spanish by Eddie the Computer</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d146b1d1-7ce5-4818-a21d-9feed06f5d8e",
      "date": "1974-05-23T00:00:00.000-04:00",
      "label": "23 May 1974 - Blick, Allan",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Blick, Allan"
      ],
      "destinations": [
        "Frogstar World B"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ead03b12-b042-4898-a5f4-eb159f65e4d3",
            "display": "<section><p><strong>Ysllodins</strong></p>\n<p>Carry <i>tousled churchkey normcore before they sold</i> out.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5af89051-9596-42ee-b265-d7d44579091e",
            "display": "<section><p><strong>Ziggie's Den of Iniquity</strong></p>\n<p>Letterpress <i>mumblecore chicharrones cleanse raw</i> denim.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/38cf56a0-9149-4f8a-9b2f-b7d393ec1dac",
            "display": "<section><p><strong>Rickmansworth</strong></p>\n<p>Hoodie bicycle rights polaroid locavore kogi mumblecore churchkey.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/42d7a96a-4127-4966-bbec-4971f1b47a00",
            "display": "<section><p><strong>Title</strong> <i>The Dark Knight</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Tanngrisnir, Tarshahaven</p>\n<p><strong>Date(s)</strong> 1931-06-04.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/9fae768f-1d98-4e90-b635-06e51443602e",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Marshall Cavendish</i></p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Publication</strong> Tattooed vinegar cardigan green juice venmo pickled 8-bit.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7230858d-dcf8-4c1b-b4ab-d795f9aace1f",
            "display": "<section><p><strong>Author</strong> Yooden Vranx, <strong>Original Title</strong> <i>The Way Through the Woods</i></p>\n<p><strong>Translated into</strong> English by Humma Kavula</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ac471f19-cf71-402e-bf74-5d2685939855",
            "display": "<section><p><strong>Author</strong> Prak, <strong>Original Title</strong> <i>An Instant In The Wind</i></p>\n<p><strong>Translated into</strong> Braille by The Allitnils</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e4d10d6e-4eb8-4a94-a299-44ce662b5968",
            "display": "<section><p><strong>Author</strong> Effrafax of Wug, <strong>Original Title</strong> Surprised by Joy</p>\n<p><strong>Translated into</strong> Polish by Humma Kavula</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/da2a019c-ae23-483b-9352-ded04db92a8f",
      "date": "1975-09-05T00:00:00.000-04:00",
      "label": "05 September 1975 - Ernser, Martin",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Ernser, Martin"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/7e0475a3-2960-4fcb-ad63-b284c7643473",
            "display": "<section><p><strong>Highgate Cemetery</strong></p>\n<p>Roof <i>waistcoat vhs cred popup schlitz aesthetic slowcarb</i> tofu.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fec48a4c-5a69-4ff7-b1d0-b2c893d31722",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Bicycle rights williamsburg yr phlogiston.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/2ad33829-0459-4dc0-842d-32aa805fa69f",
            "display": "<section><p><strong>Total Perspective Vortex</strong></p>\n<p>Farmtotable park irony franzen.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0de16b50-7060-48a7-b21f-47962d64389b",
            "display": "<section><p><strong>Title</strong> Platoon</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Billion Year Bunker, New Prestonhaven</p>\n<p><strong>Date(s)</strong> 1926-01-08.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/cc3e7c02-1a2c-4132-81c2-dfc4b182dc93",
            "display": "<section><p><strong>Title</strong> <i>Bicycle Thieves</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Krikkit One, East Mitchellborough</p>\n<p><strong>Date(s)</strong> 1926-09-02.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/17741fac-a3d6-45db-a4f3-bb21155c293f",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1963-08-09.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/9fe57a16-5e48-4794-8c9a-c002cfdafc05",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Chambers Harrap</p>\n<p><strong>Translator</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Publication</strong> Wolf biodiesel organic mixtape fixie pop-up food truck ramps xoxo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/2bcfc596-a069-4cff-8dc6-076b821acea3",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Virago Press</i></p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Publication</strong> Humblebrag meh vinyl swag ethical.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/7893ffda-4fa0-47b4-880f-ea24035b7bee",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Medknow Publications</i></p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Publication</strong> Twee gentrify blog readymade organic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ee307a25-b6b5-473d-975d-7210592de62a",
      "date": "1976-11-17T00:00:00.000-05:00",
      "label": "17 November 1976 - Yost, Nichol",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Yost, Nichol"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e9325996-a6e7-485a-9fb3-75380e9dc58d",
            "display": "<section><p><strong>Rehearsal</strong>, Messenger <i>bag readymade fashion axe tofu biodiesel</i> ennui.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Majikthise</p>\n<p><strong>Place, Date</strong> Lake Leandrostad, 14 April 1965</p>\n<p><strong>Director</strong> Agda</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/099bd14c-81b5-423c-a7ea-7f8513284f47",
            "display": "<section><p><strong>Theatre</strong>, Vinegar semiotics master churchkey readymade sustainable coldpressed.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Roosta</p>\n<p><strong>Place, Date</strong> Port Eden, 24 January 1956</p>\n<p><strong>Director</strong> Random Dent</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d4a94547-0561-4bd4-8c18-1c4846a0c656",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1951-06-11.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/dab486d1-5f46-4017-835d-7f8216683ee9",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Brimstone Press</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Publication</strong> Neutra shoreditch chartreuse twee.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cad01bb2-a870-4e47-8e1a-002c2e8ea5a6",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> University of Michigan Press</p>\n<p><strong>Translator</strong> Marvin</p>\n<p><strong>Publication</strong> Letterpress stumptown selfies iphone +1.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/79e67190-c733-49d2-bbf3-c08899a02907",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Faber and Faber</i></p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Publication</strong> Normcore tacos roof salvia diy organic.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4706fe4e-ab29-422f-bffe-cd3cf56c01ef",
            "display": "<section><p><strong>Author</strong> Ayana Osinski</p>\n<p><strong>Title</strong> If Not Now, When?</p>\n<p><strong>Publication</strong> Tammi.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/817e7edd-1feb-48e7-9978-badb8b158840",
            "display": "<section><p><strong>Author</strong> Lucius Hessel</p>\n<p><strong>Title</strong> <i>The Stars' Tennis Balls</i></p>\n<p><strong>Publication</strong> Nonesuch Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/71797c7d-3add-4c09-ac04-42af0ac37c0c",
      "date": "1977-07-05T00:00:00.000-04:00",
      "label": "05 July 1977 - Lemke, Tyson",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Lemke, Tyson"
      ],
      "destinations": [
        "<i>Guildford</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/41ca195f-56cf-4f52-ac6a-fe14517a36e1",
            "display": "<section><p><strong>Reading</strong>, Hammock shabby chic selfies microdosing hoodie coldpressed vhs.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Garkbit</p>\n<p><strong>Place, Date</strong> Marvaville, 24 November 1938</p>\n<p><strong>Director</strong> Elvis</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c07d7414-1f80-4c12-9e47-83cf92a98742",
            "display": "<section><p><strong>Rehearsal</strong>, Lumbersexual <i>tumblr readymade biodiesel</i> bushwick.</p>\n<p><strong>Attended with</strong> Donny and Effrafax of Wug</p>\n<p><strong>Place, Date</strong> Nickolaschester, 10 April 1962</p>\n<p><strong>Director</strong> Rob McKenna</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c3dee524-729a-4548-92c7-c835e4c4cfa9",
            "display": "<section><p><strong>Radio Broadcast</strong>, Normcore synth glutenfree 8bit etsy kickstarter.</p>\n<p><strong>Attended with</strong> Donny and Prostetnic Vogon Kwaltz</p>\n<p><strong>Place, Date</strong> Berthatown, 29 September 1945</p>\n<p><strong>Director</strong> Barry Manilow</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/31fe72f3-e4c2-420c-93ad-ccc9dfafa0ce",
            "display": "<section><p><strong>Lavon Larson, 1915-1985</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/5375ee05-4fb1-4e6a-8dc8-460f1210d622",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>Holt McDougal</i></p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Publication</strong> Vice sartorial raw denim cornhole kogi carry synth ugh.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b86ba58e-feb2-4f77-9ac3-af11b6fc6076",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Breslov Research Institute</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Publication</strong> Godard vinegar freegan vegan taxidermy wes anderson.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d8ad8e25-28fc-4260-821d-e73fb0a1078a",
            "display": "<section><p><strong>Artist</strong> Genghis Khan</p>\n<p><strong>Title</strong> <i>Endorphinmachine</i></p>\n<p><strong>Description</strong> Hella salvia freegan jean shorts tacos kinfolk coldpressed seitan.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/831e71e1-b754-485c-bae9-eac00cb65582",
            "display": "<section><p><strong>Artist</strong> Dan Streetmentioner</p>\n<p><strong>Title</strong> Starfish And Coffee</p>\n<p><strong>Description</strong> Vegan <i>austin plaid helvetica</i> marfa.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/049c1cb7-7199-492b-8c52-2ae76ae11816",
            "display": "<section><p><strong>Artist</strong> Bowerick Wowbagger</p>\n<p><strong>Title</strong> <i>Under The Cherry Moon</i></p>\n<p><strong>Description</strong> Freegan <i>tumblr muggle magic fingerstache etsy</i> salvia.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/10b96a0c-b146-40a3-8b3a-c38ea66880fb",
      "date": "1982-02-08T00:00:00.000-05:00",
      "label": "08 February 1982 - Dietrich, Lakenya",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Dietrich, Lakenya"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1319eeec-a992-4c36-ad2f-e2278ea23b44",
            "display": "<section><p><strong><i>Viltvodle VI</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a89e9fb6-bb76-4f02-b499-b1565a9bf670",
            "display": "<section><p><strong>Damogran</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a51b0a4c-e35e-4b02-9efa-e07397f3a659",
            "display": "<section><p><strong>Fidelia Price, 1913-1986</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f4982d93-fa42-4765-aeee-85aaedfe5b7d",
            "display": "<section><p><strong>Title</strong> <i>Double Indemnity</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Ebertland</p>\n<p><strong>Date(s)</strong> 1930-10-14.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/09fc98a7-55eb-4df8-a2ff-1d93bcae0281",
            "display": "<section><p><strong>Author</strong> Vesta Hudson</p>\n<p><strong>Title</strong> When the Green Woods Laugh</p>\n<p><strong>Publication</strong> Darakwon Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/508fd03c-905f-4b6c-8f0e-6a3c22dcfdce",
            "display": "<section><p><strong>Author</strong> Garrett Graham</p>\n<p><strong>Title</strong> Moab Is My Washpot</p>\n<p><strong>Publication</strong> Medknow Publications.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b5c6fcb0-149e-4046-bc05-4aa1f2697aea",
      "date": "1983-04-16T00:00:00.000-05:00",
      "label": "16 April 1983 - Bernier, Omar",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Bernier, Omar"
      ],
      "destinations": [
        "Denmark"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b3d57d4c-4f28-4202-b7e8-4264e13b4e40",
            "display": "<section><p><strong>Composer</strong> Roosta</p>\n<p><strong>Title</strong> Jam Of The Year</p>\n<p><strong>Description</strong> Tacos lofi fingerstache five dollar toast cray.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/2a9e5c48-344c-458a-b86c-5d7fdf8f737d",
            "display": "<section><p><strong>Composer</strong> Genghis Khan</p>\n<p><strong>Title</strong> <i>When You Were Mine</i></p>\n<p><strong>Description</strong> 1 <i>venmo polaroid helvetica</i> iphone.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3f33ec5a-57b3-4c87-a719-9f002a8b7f6f",
            "display": "<section><p><strong><i>Poghril</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/be1cadf7-57a2-46b6-a815-36198b92cb64",
            "display": "<section><p><strong><i>Magrathea</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/bbc7af44-d10b-4d03-b657-0d1f04287f56",
            "display": "<section><p><strong><i>The Domain of The King</i></strong></p>\n<p>Wolf <i>franzen flannel helvetica</i> lomo.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/09df008f-c8d9-4013-ba23-92a8aaaf2032",
            "display": "<section><p><strong><i>The Domain of The King</i></strong></p>\n<p>Quinoa messenger bag churchkey polaroid wolf tousled.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/8d00870b-d0e6-4a44-9b15-0bb073a89b9f",
            "display": "<section><p><strong><i>Rupert</i></strong></p>\n<p>Squid <i>skateboard pabst put a bird on</i> it.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8fc95bee-61cc-4b1c-98d4-a06fa3eb8d27",
            "display": "<section><p><strong>Author</strong> Oolon Colluphid, <strong>Original Title</strong> <i>The Way Through the Woods</i></p>\n<p><strong>Translated into</strong> Japanese by Trillian</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0342624c-d3a7-4448-a343-81172ad3751e",
            "display": "<section><p><strong>Author</strong> Max Quordlepleen, <strong>Original Title</strong> <i>An Evil Cradling</i></p>\n<p><strong>Translated into</strong> Rumanian by Slartibartfast</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/914f7887-d1f1-4e96-ba24-f245cc35b3a2",
      "date": "1984-06-07T00:00:00.000-04:00",
      "label": "07 June 1984 - Douglas, Oliver",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Douglas, Oliver"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/78db45f8-41d2-4587-b09b-2f09f8a4aba7",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> Thieves In The Temple</p>\n<p><strong>Description</strong> Kitsch <i>whatever cred hashtag pourover</i> pickled.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/00f50487-c91d-4fbe-84a2-7899ac8e3e5e",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Artisan actually authentic etsy roof photo booth keytar jean shorts.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/71e640ad-fe0f-4dd0-b5fc-93216d168473",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>McGraw Hill Financial</i></p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Publication</strong> Helvetica microdosing paleo cronut biodiesel cleanse yolo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5ec81ada-9ab0-4f5b-96e3-86f46ef8ca6a",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>Lethe Press</i></p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Publication</strong> Single-origin coffee stumptown xoxo kombucha kinfolk deep v heirloom brooklyn everyday.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b83d62c8-64f1-47e3-8c7f-da764b2aeede",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Reed Publishing</i></p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Publication</strong> Bushwick hammock helvetica squid locavore fingerstache typewriter crucifix.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/fd910035-a367-4ac5-9e05-536d19d87032",
            "display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> The Monkey's Raincoat</p>\n<p><strong>Translated into</strong> Irish Gaelic by Vroomfondel</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0a6b4443-ba82-4a85-be31-3a3d7abd022b",
            "display": "<section><p><strong>Author</strong> Hotblack Desiato, <strong>Original Title</strong> To a God Unknown</p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Oolon Colluphid</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c7c0370b-e5b7-410a-89eb-c685e2e246c6",
            "display": "<section><p><strong>Author</strong> Loonquawl, <strong>Original Title</strong> The Last Enemy</p>\n<p><strong>Translated into</strong> Spanisn by Frankie and Benjy</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cccaea6d-1805-4947-8863-d39f819be754",
      "date": "1984-09-16T00:00:00.000-04:00",
      "label": "16 September 1984 - Denesik, Paris",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Denesik, Paris"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/cab1a5cb-df07-40dc-beb7-c5a7b6291479",
            "display": "<section><p><strong>Composer</strong> Max Quordlepleen</p>\n<p><strong>Title</strong> <i>Screwdriver</i></p>\n<p><strong>Description</strong> Lofi <i>food truck godard kinfolk you probably havent heard of them scenester everyday</i> marfa.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/90b7e47e-7589-4fbb-9e0a-437617891dae",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1972-05-09.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b5d49489-c2a0-4007-92d9-efb9c54dd133",
            "display": "<section><p><strong>Author</strong> Agrajag, <strong>Original Title</strong> A Scanner Darkly</p>\n<p><strong>Translated into</strong> French by Eccentrica Gallumbits</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/2b6a641a-beae-4584-be15-48f2e790c36e",
            "display": "<section><p><strong>Author</strong> Effrafax of Wug, <strong>Original Title</strong> <i>All Passion Spent</i></p>\n<p><strong>Translated into</strong> Serbo Croatian by Pizpot Gargravarr</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/84583e70-b3e3-42a9-9bec-7384d69a3381",
            "display": "<section><p><strong>Artist</strong> Random Dent</p>\n<p><strong>Title</strong> <i>Strange Relationship</i></p>\n<p><strong>Description</strong> Polaroid cardigan viral shabby chic retro tousled schlitz five dollar toast.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8201eb30-f788-4cf4-9f2d-aff4cf560e83",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> <i>I Love U, but I Don't Trust U Anymore</i></p>\n<p><strong>Description</strong> Chicharrones polaroid brooklyn phlogiston.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5f0c4b6b-5b20-4c2c-8a66-e625ac0f8571",
      "date": "1984-12-26T00:00:00.000-05:00",
      "label": "26 December 1984 - Wuckert, Phylicia",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Wuckert, Phylicia"
      ],
      "destinations": [
        "<i>Evildrome Boozarama</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0d65497a-975c-4d8b-b599-1f8105efc84d",
            "display": "<section><p><strong>Theatre</strong>, Shoreditch <i>mlkshk everyday synth</i> hoodie.</p>\n<p><strong>Attended with</strong> The Dude and Roosta</p>\n<p><strong>Place, Date</strong> Omerfurt, 01 January 1945</p>\n<p><strong>Director</strong> Prostetnic Vogon Kwaltz</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9cadec6e-a530-4377-bfa4-8a94784bdb25",
            "display": "<section><p><strong>Fredric Gusikowski, 1924-1997</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/7e947e04-cfb7-4bf2-bcc2-79fd7ce60452",
            "display": "<section><p><strong>Betelgeuse</strong></p>\n<p>Coldpressed actually readymade tryhard deep v sartorial.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9b6d45b7-1510-48e4-ac1d-b0a1bd0b5740",
            "display": "<section><p><strong><i>Sector ZZ9 Plural Z Alpha</i></strong></p>\n<p>Jean shorts flexitarian cronut sartorial wes anderson pabst.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e3dd57a2-cd03-4135-b899-1aa2ae2eeef9",
            "display": "<section><p><strong>Title</strong> <i>Pulp Fiction</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Lake Wes</p>\n<p><strong>Date(s)</strong> 1953-06-23.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8b288ca6-506b-4084-aba5-d4bd84908652",
      "date": "1985-01-11T00:00:00.000-05:00",
      "label": "11 January 1985 - Beatty, Kizzy",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Beatty, Kizzy"
      ],
      "destinations": [
        "<i>Horsehead Nebula</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/76465908-e3a2-46a9-a848-741d00e71cf9",
            "display": "<section><p><strong>Composer</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>Little Red Corvette</i></p>\n<p><strong>Description</strong> Cardigan <i>tacos truffaut vinegar</i> celiac.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f7b54b10-f59b-42e4-92cd-403f17bad308",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> Cloreen Baconskin</p>\n<p><strong>Description</strong> Kinfolk <i>hoodie squid selfies brooklyn photo</i> booth.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9e31e61d-1ea3-49e5-ba09-ed6ff3059cc9",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> <i>(There'll Never B) Another Like Me</i></p>\n<p><strong>Description</strong> Normcore helvetica fixie distillery.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/604d3088-79fd-4b60-98a4-6e26e0568d99",
            "display": "<section><p><strong><i>Guildford</i></strong></p>\n<p>Carry <i>offal photo booth whatever marfa cred phlogiston hella</i> lomo.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9c1b5dd0-3683-4875-8c78-7b6c78dc58c1",
            "display": "<section><p><strong>London</strong></p>\n<p>Craft <i>beer lofi meh</i> authentic.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/3e863d5e-e827-4483-9b67-fec0d5786601",
            "display": "<section><p><strong>Total Perspective Vortex</strong></p>\n<p>Cronut <i>schlitz kogi raw denim organic sartorial</i> coldpressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/b8b63b83-249e-498a-8c56-63c936c1708c",
            "display": "<section><p><strong>Author</strong> Dr. Carmen Robel</p>\n<p><strong>Title</strong> Beneath the Bleeding</p>\n<p><strong>Publication</strong> Cambridge University Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a5e5250a-45ba-4441-84e1-8760be492a53",
            "display": "<section><p><strong>Author</strong> Vannesa Barrows</p>\n<p><strong>Title</strong> <i>The Stars' Tennis Balls</i></p>\n<p><strong>Publication</strong> Eel Pie Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/bcd3ff4e-ad32-4ee9-b707-99840765b1b3",
            "display": "<section><p><strong>Author</strong> Neda Homenick</p>\n<p><strong>Title</strong> The Cricket on the Hearth</p>\n<p><strong>Publication</strong> Kogan Page.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/5089b967-bcf3-4aea-a08c-1961c7cbce32",
            "display": "<section><p><strong>Author</strong> Hotblack Desiato's bodyguard, <strong>Original Title</strong> <i>Françoise Sagan</i></p>\n<p><strong>Translated into</strong> Gaelic by Tricia McMillan</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 7
        },
        {
          "key": 2,
          "doc_count": 7
        },
        {
          "key": 3,
          "doc_count": 7
        },
        {
          "key": 4,
          "doc_count": 7
        },
        {
          "key": 0,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 30,
      "buckets": [
        {
          "key_as_string": "1950-01-01T00:00:00.000Z",
          "key": -631152000000,
          "doc_count": 2
        },
        {
          "key_as_string": "1951-01-01T00:00:00.000Z",
          "key": -599616000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1952-01-01T00:00:00.000Z",
          "key": -568080000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1953-01-01T00:00:00.000Z",
          "key": -536457600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1954-01-01T00:00:00.000Z",
          "key": -504921600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1955-01-01T00:00:00.000Z",
          "key": -473385600000,
          "doc_count": 0
        },
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
          "doc_count": 1
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
          "doc_count": 0
        },
        {
          "key_as_string": "1966-01-01T00:00:00.000Z",
          "key": -126230400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1967-01-01T00:00:00.000Z",
          "key": -94694400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1968-01-01T00:00:00.000Z",
          "key": -63158400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 1
        },
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 2
        },
        {
          "key_as_string": "1972-01-01T00:00:00.000Z",
          "key": 63072000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1973-01-01T00:00:00.000Z",
          "key": 94694400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1975-01-01T00:00:00.000Z",
          "key": 157766400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1976-01-01T00:00:00.000Z",
          "key": 189302400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1977-01-01T00:00:00.000Z",
          "key": 220924800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1980-01-01T00:00:00.000Z",
          "key": 315532800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1983-01-01T00:00:00.000Z",
          "key": 410227200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1984-01-01T00:00:00.000Z",
          "key": 441763200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1985-01-01T00:00:00.000Z",
          "key": 473385600000,
          "doc_count": 3
        },
        {
          "key_as_string": "1986-01-01T00:00:00.000Z",
          "key": 504921600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1987-01-01T00:00:00.000Z",
          "key": 536457600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1988-01-01T00:00:00.000Z",
          "key": 567993600000,
          "doc_count": 2
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
          "key": "Northern Feest College",
          "doc_count": 16
        },
        {
          "key": "North Wisconsin College",
          "doc_count": 15
        },
        {
          "key": "The Konopelski College",
          "doc_count": 11
        },
        {
          "key": "Southern Spencer",
          "doc_count": 9
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
          "key": "german",
          "doc_count": 9
        },
        {
          "key": "french",
          "doc_count": 8
        },
        {
          "key": "italian",
          "doc_count": 7
        },
        {
          "key": "english",
          "doc_count": 6
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 30,
    "links": {
      "self": "http://example.org/letters?page=1",
      "last": "http://example.org/letters?page=2",
      "next": "http://example.org/letters?page=2"
    }
  }
}</pre>
