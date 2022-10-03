# Letters API

## GET /letters?repositories=:repository_labels - Repository Search

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

<pre>GET /letters?repositories=Northern+Kiehn</pre>

#### Query Parameters

<pre>repositories: Northern Kiehn</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=Northern+Kiehn&gt;; rel=&#39;self&#39;
X-Total-Count: 12
Content-Type: application/json; charset=utf-8
ETag: W/&quot;723e695b554050616e5ea61d384310fd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 00c98552-1368-4696-bd8f-ea92b1c4f393
X-Runtime: 2.801809
Vary: Origin
Content-Length: 51990</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/64554cd3-cfae-419b-bf52-e997ea6faf40",
      "date": "1950-10-27T00:00:00.000-05:00",
      "label": "27 October 1950 - Ledner, Ross",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Ledner, Ross"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/38dd9cfd-0d51-48b7-872f-cb1551aef909",
            "display": "<section><p><strong>Radio Broadcast</strong>, Narwhal <i>fashion axe paleo aesthetic etsy bushwick bicycle</i> rights.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Wonko the Sane</p>\n<p><strong>Place, Date</strong> Strosinhaven, 16 December 1969</p>\n<p><strong>Director</strong> Yooden Vranx</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/52e53c9c-8cc7-4e2d-b68a-737e541796e5",
            "display": "<section><p><strong>Rehearsal</strong>, Blue <i>bottle skateboard jean shorts banjo celiac deep v</i> roof.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Oolon Colluphid</p>\n<p><strong>Place, Date</strong> Port Ayanachester, 22 September 1952</p>\n<p><strong>Director</strong> Phouchg</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9a2f1cd1-c4f7-4fac-8b72-9e3ae7325d2e",
            "display": "<section><p><strong>Magrathea</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/afde2c47-a792-4653-b7c1-233e20e45cf0",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6e65f9da-4633-4fc2-b4de-2d0bc1080d84",
            "display": "<section><p><strong><i>Frogstar World B</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/157d9858-363f-4b8d-9d05-1cbb4f076aeb",
            "display": "<section><p><strong>Title</strong> <i>The Godfather: Part II</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Vogon Constructor Fleet, Christieview</p>\n<p><strong>Date(s)</strong> 1967-05-30.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/dbd96f9e-55af-4206-ab0f-e2c465f3ba11",
            "display": "<section><p><strong>Title</strong> <i>Life Is Beautiful</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Huelland</p>\n<p><strong>Date(s)</strong> 1960-08-27.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/faffdd9f-7f13-4125-bf2f-fab799748887",
            "display": "<section><p><strong>Title</strong> <i>No Country for Old Men</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Heart of Gold, Samstad</p>\n<p><strong>Date(s)</strong> 1937-03-23.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e3f5fdd0-4d2f-4e07-b097-ad9a1cf16da7",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1932-07-27.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8739369d-6de7-4d7f-84c1-2fbfdea63747",
      "date": "1951-11-29T00:00:00.000-05:00",
      "label": "29 November 1951 - Dicki, Doretta",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Dicki, Doretta"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ef88010d-d041-4838-a3ed-6ba2aea02908",
            "display": "<section><p><strong>Argabuthon</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/809d4ca5-1fdd-4eed-a0aa-6259bca5086c",
            "display": "<section><p><strong><i>Frogstar World A</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/25efa50b-82ca-43e5-b0f1-70014baf0bd9",
            "display": "<section><p><strong><i>Sector ZZ9 Plural Z Alpha</i></strong></p>\n<p>Truffaut bushwick meh beard.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/52aab1e7-6099-4da2-a2e8-4ae82478b140",
            "display": "<section><p><strong><i>Evildrome Boozarama</i></strong></p>\n<p>Everyday humblebrag cleanse seitan.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4334e304-6579-4b54-b824-02f0a2b2c0e5",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1966-12-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4ce209ce-0e82-497b-9031-6c6ed3697cc6",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1951-06-21.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b82fd2b5-0f72-49b8-a679-12683dce8a99",
            "display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> <i>Some Buried Caesar</i></p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Barry Manilow</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0de256d0-2cc3-4a8d-8695-01253b5d7422",
      "date": "1955-11-30T00:00:00.000-05:00",
      "label": "30 November 1955 - Murphy, Albert",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Murphy, Albert"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6dc1fb6b-e9da-49a2-aeb0-858997f35606",
            "display": "<section><p><strong>Theatre</strong>, Vhs <i>everyday godard yr freegan roof</i> cliche.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Agda</p>\n<p><strong>Place, Date</strong> Konopelskistad, 28 June 1963</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2cd035e9-614b-4bd6-a433-7b4f7ee29c60",
            "display": "<section><p><strong>Rehearsal</strong>, Organic postironic keytar churchkey retro raw denim bushwick vegan.</p>\n<p><strong>Attended with</strong> Karl Hungus and Fenchurch</p>\n<p><strong>Place, Date</strong> North Seemafurt, 17 November 1927</p>\n<p><strong>Director</strong> Random Dent</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/87a3840c-5674-432c-a644-4f27a640988b",
            "display": "<section><p><strong>Theatre</strong>, Migas <i>mumblecore wolf xoxo bitters food truck loko</i> yuccie.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Loonquawl and Phouchg</p>\n<p><strong>Place, Date</strong> Haneland, 16 February 1933</p>\n<p><strong>Director</strong> Eddie the Computer</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a8b775c3-8d4a-4dfd-a3a8-e5aeb47daa0a",
            "display": "<section><p><strong><i>Space</i></strong></p>\n<p>Singleorigin <i>coffee tousled keytar disrupt dreamcatcher cliche</i> schlitz.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/0e8a51ab-fca6-4152-87b5-25cee3828b8e",
            "display": "<section><p><strong>Betelgeuse</strong></p>\n<p>Crucifix synth twee goth vinegar artisan irony master pourover.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b34cf5ad-135c-4fe8-913d-ce7d72e9375d",
            "display": "<section><p><strong><i>France</i></strong></p>\n<p>Vice <i>wes anderson forage keffiyeh tilde skateboard kickstarter butcher</i> selvage.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/85b32f13-e670-41c3-b18e-5f8e583c5b01",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1924-03-19.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0e71ba5b-1d35-4446-9de4-b56be3cabdfa",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1944-01-10.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a0e2af08-dddc-49e6-af57-e39773608a28",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1950-01-02.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0e95f7d2-896f-4a6d-8bb3-b06af6f02748",
            "display": "<section><p><strong>Title</strong> Recalled to Life</p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Date</strong> 1953-06-26.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/835f913e-e9b8-43db-b98b-1b1153c7bd8b",
      "date": "1956-06-06T00:00:00.000-04:00",
      "label": "06 June 1956 - Bernier, Ali",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Bernier, Ali"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b493c1b1-a93e-42af-b43e-dd93989c2ed8",
            "display": "<section><p><strong>Theatre</strong>, Kogi <i>kombucha glutenfree you probably havent heard of them</i> intelligentsia.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Trin Tragula</p>\n<p><strong>Place, Date</strong> Port Saritastad, 20 July 1949</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3be19b97-59ae-4c0e-82d4-d71397334420",
            "display": "<section><p><strong>Stevie Wolf, 1921-1993</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/65240af2-abe1-467b-b401-9138e4bc8779",
            "display": "<section><p><strong>Augustina Reichert, 1926-1979</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4592c66a-27db-4207-a9ae-39c719d217ae",
            "display": "<section><p><strong>Adan Corkery, 1916-1978</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f2de7bae-47d8-4170-a7c0-58396dd6eed3",
            "display": "<section><p><strong>Author</strong> Jarod Cole JD</p>\n<p><strong>Title</strong> Precious Bane</p>\n<p><strong>Publication</strong> Hachette Book Group USA.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f19c2500-e6db-41b3-976b-a994824a6ffb",
            "display": "<section><p><strong>Author</strong> Michale Schuster I</p>\n<p><strong>Title</strong> <i>A Summer Bird-Cage</i></p>\n<p><strong>Publication</strong> Parachute Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1430ffb8-6eea-4939-9658-bd73a3e309a9",
            "display": "<section><p><strong>Author</strong> Jada Torphy</p>\n<p><strong>Title</strong> <i>In Death Ground</i></p>\n<p><strong>Publication</strong> Mainstream Publishing.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f2c177bc-7b7b-45a0-aa7c-f91a09374b5c",
            "display": "<section><p><strong>Title</strong> Ring of Bright Water</p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Date</strong> 1969-04-01.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1f9904a3-9cc6-4175-b6e3-03f7a5ce333c",
            "display": "<section><p><strong>Title</strong> Terrible Swift Sword</p>\n<p><strong>Proposal/Response</strong> Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1954-08-24.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fdca89a1-9630-45f8-ad3b-ec549593729d",
      "date": "1959-08-09T00:00:00.000-04:00",
      "label": "09 August 1959 - Sawayn, Beryl",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Sawayn, Beryl"
      ],
      "destinations": [
        "Xaxis"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/4088adb5-6d23-4ab8-97b1-932bb00d25fe",
            "display": "<section><p><strong>Preliumtarn</strong></p>\n<p>Ramps salvia messenger bag hella shabby chic.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1899e58c-b2a0-4cca-9f00-f5d89e8c9fab",
            "display": "<section><p><strong><i>Slim's Throat Emporium</i></strong></p>\n<p>Five dollar toast iphone ugh dreamcatcher kickstarter raw denim pork belly.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ca95ed19-5bc8-4fe6-b037-d8f0b655b08a",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Phlogiston master aesthetic meggings umami letterpress coldpressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6c0a72e7-a9f1-4f62-8fd1-6580cfd7c35d",
            "display": "<section><p><strong>Title</strong> Toy Story 3</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Waelchishire</p>\n<p><strong>Date(s)</strong> 1933-11-08.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/6ce9b2d6-8db6-4284-a2b7-f74211d1c83a",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1945-06-03.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/65468886-6ba3-4315-bb48-276480331691",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Charles Scribner's Sons</p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Publication</strong> Pug gentrify tote bag pinterest bicycle rights.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/35ace6a8-af12-4262-bc1d-a37c5f190213",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Focal Press</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Publication</strong> Yr forage fashion axe venmo ugh freegan.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f4bf4c78-3127-4a5b-879e-77f3c007e504",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Hachette Book Group USA</p>\n<p><strong>Translator</strong> Pasta Fasta</p>\n<p><strong>Publication</strong> Stumptown salvia banjo plaid swag.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cf727930-0ba0-4fdd-9dff-3652fc7710a7",
      "date": "1964-08-27T00:00:00.000-04:00",
      "label": "27 August 1964 - Simonis, Dwight",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Simonis, Dwight"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/707d6141-783d-454b-a0b2-2bcd8798db53",
            "display": "<section><p><strong>Radio Broadcast</strong>, Chia <i>polaroid pug poutine</i> butcher.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Max Quordlepleen</p>\n<p><strong>Place, Date</strong> Eugeniohaven, 22 May 1946</p>\n<p><strong>Director</strong> Majikthise</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e8ce2ff6-c793-4e84-ac6b-39ca8fa91e6a",
            "display": "<section><p><strong>Radio Broadcast</strong>, Tousled <i>portland cornhole tilde flexitarian slowcarb</i> humblebrag.</p>\n<p><strong>Attended with</strong> The Dude and Magrathean sperm whale</p>\n<p><strong>Place, Date</strong> New Silvanafurt, 21 March 1938</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e7298a9c-ccbf-4961-9cb4-207cb41a1952",
            "display": "<section><p><strong>Rehearsal</strong>, Echo retro xoxo lumbersexual.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Trin Tragula</p>\n<p><strong>Place, Date</strong> North Jewellbury, 15 August 1948</p>\n<p><strong>Director</strong> Hillman Hunter</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6bbac81b-430d-403b-9a2b-c9786001067d",
            "display": "<section><p><strong>Lamuella</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f5e54188-3dc2-421d-9b73-761c39ce74cc",
            "display": "<section><p><strong>Broop Kidron Thirteen</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ee57bd25-381a-4019-9b4b-23abb480bc4f",
            "display": "<section><p><strong><i>Broop Kidron 13</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3c0f07bd-6899-4864-a499-51b2395b12b8",
            "display": "<section><p><strong>Darcey Dickinson, 1910-1998</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5bbd08a7-5c2d-4da7-ae88-9d0035878068",
            "display": "<section><p><strong>Deangelo VonRueden, 1926-1978</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/378ab7b4-6c5a-4383-8ebf-3318fcead4f6",
            "display": "<section><p><strong>Gonzalo Rogahn, 1920-1973</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b8eac0ac-acbd-435f-a7bc-d8d7f631190e",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1949-01-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/640e5a2b-b29f-40da-971c-2004d411a2b6",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1951-02-19.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0962b694-c03e-44ca-862c-e3b7a18ece58",
      "date": "1964-10-20T00:00:00.000-04:00",
      "label": "20 October 1964 - Ankunding, Carl",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Ankunding, Carl"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c6f71eb7-132a-4eaa-b503-3f2e993cae5b",
            "display": "<section><p><strong><i>Santraginus V</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/93e8a292-1083-42d4-a731-4a8c0f666934",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Farrar, Straus &amp; Giroux</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Publication</strong> Pug cold-pressed drinking authentic narwhal gluten-free.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e271db61-a412-46a9-bf20-4c69a5da5a72",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Hodder &amp; Stoughton</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Publication</strong> Austin actually hammock freegan pitchfork selfies williamsburg occupy.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6eee93fe-e61a-4bfc-aac5-b273bc6ee40d",
            "display": "<section><p><strong>Author</strong> Trillian, <strong>Original Title</strong> <i>The Man Within</i></p>\n<p><strong>Translated into</strong> Hebrew by Max Quordlepleen</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9984ce13-873a-421d-800f-3cc18ac12a78",
            "display": "<section><p><strong>Artist</strong> Random Dent</p>\n<p><strong>Title</strong> Housequake</p>\n<p><strong>Description</strong> Jean <i>shorts hashtag waistcoat 90s xoxo</i> roof.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/45ca2bba-1997-4fba-9564-dfd531cd5dc9",
            "display": "<section><p><strong>Artist</strong> Barry Manilow</p>\n<p><strong>Title</strong> Pretzel Body Logic</p>\n<p><strong>Description</strong> Kitsch <i>readymade bespoke listicle chambray fashion axe</i> farmtotable.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/502779d8-5604-4acb-a2f8-ea4236c0361e",
      "date": "1975-01-18T00:00:00.000-05:00",
      "label": "18 January 1975 - Abernathy, Dante",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Abernathy, Dante"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/27876738-649a-4cf4-96c4-fbfc7ac80b5e",
            "display": "<section><p><strong>Nano</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a8ae5e76-418d-41be-ba3b-143d88a91e23",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Viking Press</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Publication</strong> Bitters yolo chartreuse beard salvia health deep v selfies xoxo.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/c3ae9127-39cb-4431-8ecd-c8801660cf46",
            "display": "<section><p><strong>Author</strong> Mr. Prosser, <strong>Original Title</strong> <i>Dulce et Decorum Est</i></p>\n<p><strong>Translated into</strong> Portuguese by Roosta</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ead57a22-6a4d-48ef-83b2-07787725c096",
            "display": "<section><p><strong>Title</strong> <i>Everything is Illuminated</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Frankie and Benjy</p>\n<p><strong>Date</strong> 1959-09-17.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/70f8cb6c-97bb-4024-a813-d370663e2e3b",
      "date": "1975-06-16T00:00:00.000-04:00",
      "label": "16 June 1975 - Towne, Ricardo",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Towne, Ricardo"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c7b25aa2-e250-42a6-842d-1a332b293d28",
            "display": "<section><p><strong>Libbie King, 1905-1981</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b27d88ca-db9f-4041-a1ae-1e773b4dc808",
            "display": "<section><p><strong>Title</strong> <i>Django Unchained</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, East Bret</p>\n<p><strong>Date(s)</strong> 1943-04-18.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7eac7185-febf-46a9-93c7-181fd9f22708",
            "display": "<section><p><strong>Title</strong> <i>Whiplash</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Don’t Panic</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> RW6, South Loyd</p>\n<p><strong>Date(s)</strong> 1957-10-05.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/0676781f-1fc2-49ea-9993-e05304191296",
            "display": "<section><p><strong>Title</strong> Cool Hand Luke</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / 42</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Vogon Constructor Fleet, Erdmanmouth</p>\n<p><strong>Date(s)</strong> 1930-06-01.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/18ac23b8-b514-46c6-b5a3-8edc7dc82740",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Bison Books</p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Yolo fixie wes anderson pinterest shabby chic heirloom bushwick.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/383e24f1-7513-4516-962b-1420937348e3",
            "display": "<section><p><strong>Title</strong> <i>Now Sleeps the Crimson Petal</i></p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Date</strong> 1964-11-11.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/25cdb048-c65c-4eb8-9986-509244c91d5f",
            "display": "<section><p><strong>Title</strong> <i>That Good Night</i></p>\n<p><strong>Proposal/Response</strong> Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1957-01-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/52c71023-fcd7-4406-9620-4f2f0055e302",
            "display": "<section><p><strong>Title</strong> It's a Battlefield</p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Date</strong> 1953-11-13.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/40769197-e418-48f9-9661-2c065c4c9a4e",
      "date": "1978-10-23T00:00:00.000-04:00",
      "label": "23 October 1978 - Flatley, Ivory",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Flatley, Ivory"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/0f309a83-2190-4824-b513-18b0b34f21d3",
            "display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> A Love Bizarre</p>\n<p><strong>Description</strong> Forage five dollar toast letterpress heirloom fingerstache truffaut lofi.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/8c740a64-4970-4be5-bc36-10bf053c1b7d",
            "display": "<section><p><strong>Composer</strong> Pasta Fasta</p>\n<p><strong>Title</strong> <i>Pink Cashmere</i></p>\n<p><strong>Description</strong> Waistcoat <i>tattooed wolf authentic pinterest meggings</i> scenester.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3b65206a-f10c-4eb9-8fde-656ce7e4edac",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/09187185-5880-42d5-bc56-71153f92847f",
            "display": "<section><p><strong><i>Barnard's Star</i></strong></p>\n<p>Paleo blue bottle raw denim typewriter.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f170b815-00a2-4ef7-b171-9d9dcb54250e",
            "display": "<section><p><strong>Title</strong> 12 Years a Slave</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Marquisville</p>\n<p><strong>Date(s)</strong> 1928-02-02.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d8821a33-5915-4d62-8e37-f88bfc8cc2b6",
      "date": "1981-08-19T00:00:00.000-04:00",
      "label": "19 August 1981 - Hickle, Irwin",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Hickle, Irwin"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/29c22a52-96ed-4724-9b02-8eac39a18260",
            "display": "<section><p><strong>Composer</strong> Zarniwoop</p>\n<p><strong>Title</strong> <i>A Love Bizarre</i></p>\n<p><strong>Description</strong> Tumblr <i>mustache occupy scenester pitchfork mixtape</i> cornhole.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e59d3dfb-22de-4d8e-ad91-53c8b47e9269",
            "display": "<section><p><strong>Composer</strong> Bowerick Wowbagger</p>\n<p><strong>Title</strong> <i>Partyman</i></p>\n<p><strong>Description</strong> Knausgaard <i>next level fixie ethical heirloom pbrb iphone</i> semiotics.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/51c749f8-7a73-43d5-81db-c7a7475769bf",
            "display": "<section><p><strong>Composer</strong> Questular Rontok</p>\n<p><strong>Title</strong> Strange Relationship</p>\n<p><strong>Description</strong> Migas <i>art party keffiyeh mumblecore marfa 3 wolf moon venmo</i> bitters.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/036d9dd8-5d35-499b-9b77-154c9bda4f4e",
            "display": "<section><p><strong>Albert Swaniawski, 1905-1979</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/37a7bb5c-c11a-4276-aa70-d2e26e62265c",
            "display": "<section><p><strong>Mallory Schaden, 1904-1976</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/a29c2aa9-fa20-4d36-ae67-04f5d9dab8a5",
            "display": "<section><p><strong>Deon Considine, 1925-1994</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5446bb86-0e4f-44f8-aec7-9c37f4e763f4",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1957-07-03.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/460473b0-fb6c-4765-b9ef-9cbf1ec2a4b4",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Berkley Books</i></p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Publication</strong> Selfies raw denim microdosing put a bird on it irony.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d79f021c-838d-4cbc-8c5b-bf50362eeed6",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Carnegie Mellon University Press</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Publication</strong> Lumbersexual street wolf ramps roof pinterest humblebrag tilde.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ecb2590f-d932-46fd-bf3b-1977cc2f1fae",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Matthias Media</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Publication</strong> Viral small batch ethical tilde pour-over neutra yolo gentrify readymade.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4cf0519b-a729-408f-bec9-18bdac73ae42",
      "date": "1985-06-02T00:00:00.000-04:00",
      "label": "02 June 1985 - Fisher, Faustino",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Fisher, Faustino"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1355199c-a825-47a8-bc24-ddf23970f20c",
            "display": "<section><p><strong>Irmgard Gleichner, 1902-1974</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b05a02da-5b7c-47ca-84aa-50efd71da12d",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1946-05-31.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/5f621311-6a1d-4fe4-a697-6879363f7ad3",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1939-04-30.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/e797e982-a291-41c5-a170-2a664ef0d717",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1968-12-15.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a49b7754-31cf-4834-b519-7a1df18b5203",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Atheneum Publishers</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Publication</strong> Before they sold out cold-pressed plaid tacos.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/38919e1b-34d9-4c09-a929-28ae780c3ee9",
            "display": "<section><p><strong>Author</strong> Prostetnic Vogon Jeltz, <strong>Original Title</strong> The Way of All Flesh</p>\n<p><strong>Translated into</strong> Norwegian by Elvis</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 1,
          "doc_count": 3
        },
        {
          "key": 2,
          "doc_count": 2
        },
        {
          "key": 3,
          "doc_count": 2
        },
        {
          "key": 4,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 12,
      "buckets": [
        {
          "key_as_string": "1950-01-01T00:00:00.000Z",
          "key": -631152000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1951-01-01T00:00:00.000Z",
          "key": -599616000000,
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 0
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
          "doc_count": 2
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
          "doc_count": 0
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
          "doc_count": 0
        },
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1972-01-01T00:00:00.000Z",
          "key": 63072000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1973-01-01T00:00:00.000Z",
          "key": 94694400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1975-01-01T00:00:00.000Z",
          "key": 157766400000,
          "doc_count": 2
        },
        {
          "key_as_string": "1976-01-01T00:00:00.000Z",
          "key": 189302400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1977-01-01T00:00:00.000Z",
          "key": 220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1983-01-01T00:00:00.000Z",
          "key": 410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1984-01-01T00:00:00.000Z",
          "key": 441763200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1985-01-01T00:00:00.000Z",
          "key": 473385600000,
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
          "key": "Northern Johnson Academy",
          "doc_count": 19
        },
        {
          "key": "Kovacek Academy",
          "doc_count": 12
        },
        {
          "key": "Northern Kiehn",
          "doc_count": 12
        },
        {
          "key": "East Howell",
          "doc_count": 11
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 7
        },
        {
          "key": "english",
          "doc_count": 3
        },
        {
          "key": "french",
          "doc_count": 1
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
    "total_count": 12,
    "links": {
      "self": "http://example.org/letters?page=1&repositories=Northern+Kiehn"
    }
  }
}
~~~

