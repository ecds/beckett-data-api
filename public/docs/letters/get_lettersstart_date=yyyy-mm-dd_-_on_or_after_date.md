# Letters API

## GET /letters?start_date=:YYYY-MM-DD - On or After Date

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

<pre>GET /letters?start_date=1977-07-17</pre>

#### Query Parameters

<pre>start_date: 1977-07-17</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1977-07-17&gt;; rel=&#39;self&#39;
X-Total-Count: 13
Content-Type: application/json; charset=utf-8
ETag: W/&quot;7237f4015f92cef71997ab9a888e46c0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d4136513-ee4f-44f1-a658-aae24125036a
X-Runtime: 2.766775
Vary: Origin
Content-Length: 52951</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/1eb74d62-0fde-4b34-9e99-ffc989e8d1e5",
      "date": "1977-07-17T00:00:00.000-04:00",
      "label": "17 July 1977 - Herzog, Isaac",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Herzog, Isaac"
      ],
      "destinations": [
        "Madagascar"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6f71f278-aac6-4015-8fc8-bb2236a26cae",
            "display": "<section><p><strong>Composer</strong> Phouchg</p>\n<p><strong>Title</strong> Bambi</p>\n<p><strong>Description</strong> Sriracha brooklyn chambray williamsburg vegan bicycle rights neutra gentrify.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fd7ca38f-9f2d-4784-beae-097db267b210",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato</p>\n<p><strong>Title</strong> Girls &amp; Boys</p>\n<p><strong>Description</strong> Celiac <i>humblebrag flexitarian jean</i> shorts.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/6ff24465-b4cc-430f-a4f0-c7d0346bd5ce",
            "display": "<section><p><strong>Composer</strong> Majikthise</p>\n<p><strong>Title</strong> <i>Baby I'm A Star</i></p>\n<p><strong>Description</strong> Ennui <i>narwhal lumbersexual singleorigin coffee meh ethical kombucha poutine</i> lofi.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5284afab-952e-4103-8c21-8addf303ddd6",
            "display": "<section><p><strong><i>Traal</i></strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e092a80d-4d39-473f-85d0-6c6ed51758e8",
            "display": "<section><p><strong>Argabuthon</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/61277491-ea77-4cb0-8e48-5de9d507c3d2",
            "display": "<section><p><strong><i>Jajazikstak</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e4e3c3f2-3d08-4c00-971d-5289cd3d24b3",
            "display": "<section><p><strong>Ozzie Robel, 1925-1982</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2c1d1c84-9002-4ebf-bcad-f7245426ab1d",
            "display": "<section><p><strong>Author</strong> Mr. Prosser, <strong>Original Title</strong> The Grapes of Wrath</p>\n<p><strong>Translated into</strong> Irish Gaelic by Oolon Colluphid</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0bc41dd5-f1e6-41dd-b19e-5c66bdbc54a4",
            "display": "<section><p><strong>Author</strong> Loonquawl, <strong>Original Title</strong> All the King's Men</p>\n<p><strong>Translated into</strong> Norwegian by Loonquawl</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8217960e-97a6-4d3e-b380-21b9a5ad2fa4",
      "date": "1978-01-24T00:00:00.000-05:00",
      "label": "24 January 1978 - Emmerich, Shona",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Emmerich, Shona"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/d33d3a08-81c6-4a00-82ae-ae0875f9be91",
            "display": "<section><p><strong>Golgafrincham</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0225c512-61bd-4777-9d1f-8e85d577f651",
            "display": "<section><p><strong>Rosio Aufderhar, 1910-1986</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/ae5bc3d0-ac38-4715-803e-94573a9aaf10",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1954-03-13.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/50389945-5fc4-449d-b3c2-5b84db38a8e3",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1948-07-12.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/25cd489f-518b-4991-b18c-308e3e836a6f",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1946-09-03.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b3515316-1d29-405b-ad0a-73ab0d534554",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Taylor &amp; Francis</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Publication</strong> Deep v fanny pack sustainable letterpress gastropub.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/75a22a9b-4c57-4526-871a-c091c57980d0",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> FabJob</p>\n<p><strong>Translator</strong> Yooden Vranx</p>\n<p><strong>Publication</strong> Chicharrones hashtag polaroid park scenester marfa dreamcatcher 8-bit.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/195d4c33-ef76-40f8-b964-0b5e88edf887",
      "date": "1978-02-12T00:00:00.000-05:00",
      "label": "12 February 1978 - Corkery, Deirdre",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Corkery, Deirdre"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/46a240b7-b121-4fc1-884b-365180a578a9",
            "display": "<section><p><strong>Radio Broadcast</strong>, Postironic venmo poutine quinoa.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Bowerick Wowbagger</p>\n<p><strong>Place, Date</strong> Runteshire, 17 May 1970</p>\n<p><strong>Director</strong> Deep Thought</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/987684b2-84d0-42cd-a04c-c4102ecf4ca2",
            "display": "<section><p><strong>Radio Broadcast</strong>, Twee normcore tousled vhs put a bird on it 3 wolf moon direct trade sriracha.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Mella</p>\n<p><strong>Place, Date</strong> Charleneview, 19 December 1929</p>\n<p><strong>Director</strong> Dan Streetmentioner</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d50321ba-99f3-4b6d-ad41-f9127458e64c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Lumbersexual <i>diy chia aesthetic xoxo semiotics wes anderson artisan</i> twee.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Lintilla</p>\n<p><strong>Place, Date</strong> Port Dalton, 27 October 1955</p>\n<p><strong>Director</strong> Agda</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/91c8b91e-2e82-4a09-a633-27d6b3b0a210",
            "display": "<section><p><strong>Hawalius</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/04d459ae-1c2b-427a-b807-fd2e7fc456ec",
            "display": "<section><p><strong><i>Nano</i></strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/75af8930-e349-4708-a7a2-d7f0b394d657",
            "display": "<section><p><strong>Title</strong> <i>Amadeus</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Heart of Gold, Jimmieland</p>\n<p><strong>Date(s)</strong> 1960-10-21.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/99b7c17d-52c5-4c7c-a73f-b592c3b52f43",
            "display": "<section><p><strong>Title</strong> Blithe Spirit</p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1967-07-25.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ee5b2a5f-85f8-4bba-8a6e-eb4e975cc7e4",
      "date": "1978-03-30T00:00:00.000-05:00",
      "label": "30 March 1978 - Will, Conception",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Will, Conception"
      ],
      "destinations": [
        "Preliumtarn"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9edc3c10-56b1-4a1f-88df-62ca066ce690",
            "display": "<section><p><strong>Composer</strong> Loonquawl</p>\n<p><strong>Title</strong> <i>Thunder</i></p>\n<p><strong>Description</strong> Fixie <i>bicycle rights occupy</i> fingerstache.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/98dd7f7c-31e8-4426-99a3-649369fd96a7",
            "display": "<section><p><strong>Composer</strong> Charles Darwin</p>\n<p><strong>Title</strong> Starfish And Coffee</p>\n<p><strong>Description</strong> Pbrb <i>hella craft beer paleo 90s selvage pabst</i> bitters.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2ca321b6-0a14-442d-b733-659b1b667cba",
            "display": "<section><p><strong><i>Xaxis</i></strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e0f8e2f2-dc95-4fbf-b00f-bb8118b53ab7",
            "display": "<section><p><strong>Author</strong> Bennie Kub</p>\n<p><strong>Title</strong> <i>The Torment of Others</i></p>\n<p><strong>Publication</strong> Kodansha.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/291b68f2-29af-47c3-8b76-e1e80c5cbb37",
            "display": "<section><p><strong>Author</strong> Domitila Pacocha</p>\n<p><strong>Title</strong> <i>Mr Standfast</i></p>\n<p><strong>Publication</strong> Verso Books.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/04863d69-38c2-4ac2-859d-277c9aa02fc6",
            "display": "<section><p><strong>Title</strong> <i>Dulce et Decorum Est</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Date</strong> 1936-01-29.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/65185623-d36b-441e-98e7-1fae3911fb89",
            "display": "<section><p><strong>Title</strong> <i>The Golden Bowl</i></p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Date</strong> 1969-10-26.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/3b026486-bbd5-427d-8562-d473b026f1b0",
            "display": "<section><p><strong>Title</strong> <i>Jacob Have I Loved</i></p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Ford Prefect</p>\n<p><strong>Date</strong> 1956-07-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/634df5e1-380f-4dfe-aab5-28a0eb13b713",
      "date": "1978-04-18T00:00:00.000-05:00",
      "label": "18 April 1978 - Mueller, Mitzie",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Mueller, Mitzie"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/258ce8d9-bcd3-4678-85ed-471b551d952e",
            "display": "<section><p><strong>Reading</strong>, Vice asymmetrical crucifix before they sold out banjo pickled xoxo portland.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Mella</p>\n<p><strong>Place, Date</strong> Lake Lenardmouth, 05 February 1960</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a73b6877-51fa-44af-a794-9f6af3f0165d",
            "display": "<section><p><strong>Title</strong> <i>The Shawshank Redemption</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Bistromath, East Pierre</p>\n<p><strong>Date(s)</strong> 1939-05-27.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4d7e94a7-05ba-4753-8ae1-4d875cb27a96",
            "display": "<section><p><strong>Title</strong> Intouchables</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / 42</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Vogon Constructor Fleet, Pennieton</p>\n<p><strong>Date(s)</strong> 1961-08-17.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/aad9fa1f-b027-4cad-b66e-c720b54a4959",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1949-02-17.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c89eda14-ed03-45b5-b90c-8ad2b21c9847",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Nauka</i></p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Publication</strong> Sriracha brooklyn wes anderson banjo retro drinking selvage roof.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e9c2c580-70cc-44df-ade4-3772d0957451",
      "date": "1982-12-27T00:00:00.000-05:00",
      "label": "27 December 1982 - Shanahan, Lelah",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Shanahan, Lelah"
      ],
      "destinations": [
        "Frogstar World B"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/939f6e21-71e2-4ffb-8785-3fbe37c3cdd6",
            "display": "<section><p><strong>Title</strong> <i>Mary and Max</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Billion Year Bunker, Cruickshankborough</p>\n<p><strong>Date(s)</strong> 1955-03-31.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6e116da3-ffed-4e11-84fe-a9f3b29317a7",
            "display": "<section><p><strong>Title</strong> Double Indemnity</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Starship Titanic, Lilaborough</p>\n<p><strong>Date(s)</strong> 1967-01-28.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0b8c5fcb-6dbf-41aa-bf3c-fbe85076e356",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1966-12-19.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2c7b2528-03b6-4270-913c-5a778d5ef944",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Book Works</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Publication</strong> Irony wes anderson ennui asymmetrical cornhole yolo mustache fixie.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e42320f7-10d2-4364-ab41-69c1fbb13709",
            "display": "<section><p><strong>Author</strong> Wally Kulas</p>\n<p><strong>Title</strong> <i>Stranger in a Strange Land</i></p>\n<p><strong>Publication</strong> Bantam Spectra.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7f6ced31-e94e-4ff8-9137-d1912affa851",
            "display": "<section><p><strong>Author</strong> Domingo Prosacco</p>\n<p><strong>Title</strong> <i>The Mermaids Singing</i></p>\n<p><strong>Publication</strong> Del Rey Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d5e358b8-ac69-4b83-9a4c-1d9d3765295c",
            "display": "<section><p><strong>Author</strong> The Hon. Merrie Reichert</p>\n<p><strong>Title</strong> Surprised by Joy</p>\n<p><strong>Publication</strong> Bella Books.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a4606b2-ba50-4267-af48-dbcc6d1556eb",
      "date": "1984-12-09T00:00:00.000-05:00",
      "label": "09 December 1984 - Hane, Demetria",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Hane, Demetria"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/d58cfe19-344b-4eda-986c-a5faaad62273",
            "display": "<section><p><strong>Rehearsal</strong>, Venmo polaroid austin cornhole.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Zarquon</p>\n<p><strong>Place, Date</strong> New Kierstenberg, 24 April 1951</p>\n<p><strong>Director</strong> Mella</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/318c478b-e913-406d-85d4-efc0f2b0d00e",
            "display": "<section><p><strong>Donn West, 1923-1994</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f9792b5a-c951-40e7-9c28-4f9243e1fff2",
            "display": "<section><p><strong>Leo Kemmer, 1904-1975</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/47d2460c-904f-4274-a5c7-0b271e5f0803",
            "display": "<section><p><strong>Author</strong> Alfredo Funk</p>\n<p><strong>Title</strong> Postern of Fate</p>\n<p><strong>Publication</strong> Reed Elsevier.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/700cf131-91f1-4892-af1d-c8153005bc99",
            "display": "<section><p><strong>Title</strong> <i>An Acceptable Time</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Date</strong> 1961-12-07.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/97478cb9-f4f7-496a-8a35-d42430bd43c7",
            "display": "<section><p><strong>Title</strong> <i>Of Human Bondage</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1965-11-28.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/70fb2ae6-431a-4d8b-902d-af3de7f4bbe6",
      "date": "1985-01-26T00:00:00.000-05:00",
      "label": "26 January 1985 - Schmitt, Brook",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Schmitt, Brook"
      ],
      "destinations": [
        "<i>Easter Island</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5b5bfab4-7a72-4c90-8b44-036de91b0d77",
            "display": "<section><p><strong>Theatre</strong>, Wes anderson next level pourover flexitarian intelligentsia wolf trust fund gastropub biodiesel.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Rob McKenna</p>\n<p><strong>Place, Date</strong> Haleyfurt, 26 August 1968</p>\n<p><strong>Director</strong> Genghis Khan</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/13d020d2-aca2-4960-838a-b79408d62c77",
            "display": "<section><p><strong>Composer</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>Cream</i></p>\n<p><strong>Description</strong> Heirloom 8bit plaid mixtape hashtag.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/87e23828-4b67-43e4-992d-7b0eb915440a",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1935-02-05.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/add88481-c023-4a78-a23b-7ef992846855",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1961-05-15.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/57572512-1210-4378-bf33-3509366c5b00",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1959-02-04.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/cfbac629-8724-4b92-9ea7-9de3c18d2664",
            "display": "<section><p><strong>Author</strong> Brandi Glover V</p>\n<p><strong>Title</strong> The Mirror Crack'd from Side to Side</p>\n<p><strong>Publication</strong> Blackwell Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/31532234-4782-46fe-84eb-4cdbd81ee65b",
            "display": "<section><p><strong>Author</strong> Alden Bergstrom</p>\n<p><strong>Title</strong> <i>The Mirror Crack'd from Side to Side</i></p>\n<p><strong>Publication</strong> Harvard University Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a0678e29-fa69-494f-a30f-b9ea3d7fec43",
            "display": "<section><p><strong>Author</strong> Maynard Hintz V</p>\n<p><strong>Title</strong> Things Fall Apart</p>\n<p><strong>Publication</strong> Edupedia Publications.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/164a4cd6-25f6-4190-b719-4d0b0b55625b",
      "date": "1985-07-09T00:00:00.000-04:00",
      "label": "09 July 1985 - Harris, Lyndon",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Harris, Lyndon"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6c53dd71-0e4c-4c80-9608-b71282617c80",
            "display": "<section><p><strong>Composer</strong> Dan Streetmentioner</p>\n<p><strong>Title</strong> When Doves Cry</p>\n<p><strong>Description</strong> Freegan photo booth echo pbrb coldpressed postironic.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/847e1fbd-cf42-46fa-9c56-c664ddc927b7",
            "display": "<section><p><strong>Composer</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>D.M.S.R</i></p>\n<p><strong>Description</strong> Next <i>level ramps neutra cleanse schlitz</i> pourover.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1f6f9bc5-1c44-44a3-b3c5-b3019e737f85",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1945-08-04.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/8245f485-d860-4469-9378-1a0e1dc02106",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1929-03-18.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cc99645e-7121-465a-aa1e-2e0cc9158e2b",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1958-04-01.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/26a22b6e-aa6e-4df6-a991-61797ecf9bb0",
            "display": "<section><p><strong>Author</strong> Meri Douglas</p>\n<p><strong>Title</strong> <i>Everything is Illuminated</i></p>\n<p><strong>Publication</strong> Harcourt Trade Publishers.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/da476c2d-a1d2-493d-b96a-c628a89f1ebc",
            "display": "<section><p><strong>Title</strong> <i>For a Breath I Tarry</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1925-10-23.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9bc44530-d038-46d1-84a7-e0ca08f1ed58",
            "display": "<section><p><strong>Title</strong> <i>The Heart Is Deceitful Above All Things</i></p>\n<p><strong>Proposal/Response</strong> In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Date</strong> 1953-03-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4834cfdc-b868-488c-be8c-a0678920d47f",
      "date": "1986-03-25T00:00:00.000-05:00",
      "label": "25 March 1986 - White, Geraldo",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "White, Geraldo"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b84b5c2a-e631-41f0-a333-6d74c1b9274b",
            "display": "<section><p><strong>Composer</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> Guitar</p>\n<p><strong>Description</strong> Bicycle rights chartreuse street austin marfa goth semiotics salvia.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/040b738f-7abe-4566-9ffb-8d91af43160c",
            "display": "<section><p><strong>Composer</strong> Humma Kavula</p>\n<p><strong>Title</strong> <i>Automatic</i></p>\n<p><strong>Description</strong> Godard meh twee coldpressed.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e4565004-e160-43da-8eed-bb61f8e50589",
            "display": "<section><p><strong>Composer</strong> Zarniwoop</p>\n<p><strong>Title</strong> <i>And God Created Woman</i></p>\n<p><strong>Description</strong> Blue bottle synth shoreditch blog.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8ae0b945-8978-475e-8099-446b4aa8c8a1",
            "display": "<section><p><strong>Dangrabad Beta</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/fd1b60b7-245c-4f07-8c04-4d98e8a529d5",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9e4678df-1c41-48b2-8b68-bde07562efb4",
            "display": "<section><p><strong><i>Sesefras Magna</i></strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/978c0612-47fd-41fd-91be-1f3b2b362b43",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1930-02-03.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/26dcc53f-0550-45ff-9536-e093ef34b9d3",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1940-03-21.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/65ca5aa2-7fe3-40a6-a548-425b4f3c8619",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1949-12-28.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c3316c61-4785-45d2-bd90-a0b606039dfa",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> D. Appleton &amp; Company</p>\n<p><strong>Translator</strong> Lintilla</p>\n<p><strong>Publication</strong> Chartreuse five dollar toast banjo wes anderson slow-carb bushwick sustainable artisan carry.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/6959a826-a32c-4682-b4d8-5153a188e799",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Marshall Cavendish</p>\n<p><strong>Translator</strong> Lintilla</p>\n<p><strong>Publication</strong> Cold-pressed distillery marfa cardigan vegan mixtape.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2e63433d-e7e9-4d29-ac31-880f6c029e01",
      "date": "1987-03-06T00:00:00.000-05:00",
      "label": "06 March 1987 - Sawayn, An",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Sawayn, An"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4e2ae286-0139-4dc3-84b2-75093b1a9a90",
            "display": "<section><p><strong>Rehearsal</strong>, Craft <i>beer cred fashion axe</i> tryhard.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Random Dent</p>\n<p><strong>Place, Date</strong> Delbertbury, 03 May 1952</p>\n<p><strong>Director</strong> Pizpot Gargravarr</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f203af14-1b79-40e9-8395-7d39ff555d96",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/18547e88-ce34-439f-9168-201731cf37c3",
            "display": "<section><p><strong><i>Islington</i></strong></p>\n<p>Chambray <i>retro godard literally hashtag cronut forage bushwick</i> keffiyeh.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/249eb27a-b23b-4684-9052-2841ea6ff438",
            "display": "<section><p><strong>Lord's Cricket Ground</strong></p>\n<p>Lomo shabby chic locavore kogi mlkshk gastropub cleanse neutra.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cd7727e0-de9a-4d8c-99cc-9a86c323c73c",
            "display": "<section><p><strong>Madagascar</strong></p>\n<p>Ennui 90s 1 carry wes anderson sartorial vinegar.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/da6af641-3bea-4c07-a6e9-74e6bc5c36ae",
            "display": "<section><p><strong>Title</strong> Look to Windward</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Pizpot Gargravarr</p>\n<p><strong>Date</strong> 1951-06-18.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cf15037a-7dfc-4a52-9cdd-a5433c058623",
      "date": "1987-11-30T00:00:00.000-05:00",
      "label": "30 November 1987 - Jast, Marcelina",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Jast, Marcelina"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e1a408bc-a1c8-41f5-a5fa-15fc477e7892",
            "display": "<section><p><strong>Vogsphere</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6700ad50-4aa2-4814-9f75-af2bdd255c69",
            "display": "<section><p><strong>Barnard's Star</strong></p>\n<p>Flannel <i>ethical selfies pinterest locavore</i> lomo.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9fe50479-6e18-4dcf-8e8f-ab2f2ae26d57",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1935-03-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/aaebd2d3-cd2e-4e8b-8fe0-de625cf7b856",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1954-09-11.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7cce0150-2dc6-4bcf-87f4-33a03f07e56a",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1943-11-17.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/30fe1749-db8f-4e87-9797-3fa9394dd442",
            "display": "<section><p><strong>Author</strong> Yung O'Reilly MD</p>\n<p><strong>Title</strong> <i>Postern of Fate</i></p>\n<p><strong>Publication</strong> University of Michigan Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f2bdf3e9-b994-4b82-920e-241c993be5aa",
            "display": "<section><p><strong>Author</strong> Cyrstal Sipes II</p>\n<p><strong>Title</strong> His Dark Materials</p>\n<p><strong>Publication</strong> Anova Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/aef0e3da-a835-48f3-854a-a88d0ac13c97",
            "display": "<section><p><strong>Author</strong> Ezequiel Raynor</p>\n<p><strong>Title</strong> Look to Windward</p>\n<p><strong>Publication</strong> Virgin Publishing.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d7d7e2ae-0e2a-4a42-8b66-3e82d917bb9d",
      "date": "1988-02-09T00:00:00.000-05:00",
      "label": "09 February 1988 - Smitham, Jane",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Smitham, Jane"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e1f31e17-61bf-4efe-9222-a08879da4441",
            "display": "<section><p><strong>Mariana Bogan, 1918-1995</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/da56639d-f649-493a-b2fc-5723e0390139",
            "display": "<section><p><strong>Kallie Kris, 1927-1994</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7e77413d-ecad-4e6e-92c8-d8bb0273ff78",
            "display": "<section><p><strong>Title</strong> <i>A Beautiful Mind</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Bistromath, West Thomas</p>\n<p><strong>Date(s)</strong> 1962-07-01.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/24e9167c-982f-45a0-b001-d9d7af2619c2",
            "display": "<section><p><strong>Title</strong> Vertigo</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Port Apolonia</p>\n<p><strong>Date(s)</strong> 1942-07-19.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/33ab415a-49ad-4b2e-ba17-61c7331ac139",
            "display": "<section><p><strong>Title</strong> <i>Blade Runner 2049</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> RW6, East Gerard</p>\n<p><strong>Date(s)</strong> 1964-04-14.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/48eb2bc9-ab76-4595-833c-da34bc6f7546",
            "display": "<section><p><strong>Author</strong> Zarquon, <strong>Original Title</strong> <i>A Glass of Blessings</i></p>\n<p><strong>Translated into</strong> Irish Gaelic by Elvis</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d0f59353-f902-4123-b458-b0d059d5eead",
            "display": "<section><p><strong>Author</strong> Mr. Prosser, <strong>Original Title</strong> <i>Jesting Pilate</i></p>\n<p><strong>Translated into</strong> Spanish by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ab15206a-0b1c-42ba-afe6-ddf49888da7f",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> <i>Far From the Madding Crowd</i></p>\n<p><strong>Translated into</strong> Spanisn by Zaphod Beeblebrox</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f910b02c-8ed6-424b-8a68-7ed03287e07f",
            "display": "<section><p><strong>Title</strong> No Highway</p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1946-04-17.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 0,
          "doc_count": 4
        },
        {
          "key": 3,
          "doc_count": 3
        },
        {
          "key": 4,
          "doc_count": 3
        },
        {
          "key": 2,
          "doc_count": 2
        },
        {
          "key": 1,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "doc_count": 13,
      "buckets": [
        {
          "key_as_string": "1977-01-01T00:00:00.000Z",
          "key": 220924800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 4
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
          "doc_count": 0
        },
        {
          "key_as_string": "1984-01-01T00:00:00.000Z",
          "key": 441763200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1985-01-01T00:00:00.000Z",
          "key": 473385600000,
          "doc_count": 2
        },
        {
          "key_as_string": "1986-01-01T00:00:00.000Z",
          "key": 504921600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1987-01-01T00:00:00.000Z",
          "key": 536457600000,
          "doc_count": 2
        },
        {
          "key_as_string": "1988-01-01T00:00:00.000Z",
          "key": 567993600000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "North Yost",
          "doc_count": 8
        },
        {
          "key": "The Smitham",
          "doc_count": 7
        },
        {
          "key": "Eastern Nebraska Institute",
          "doc_count": 2
        },
        {
          "key": "South Hettinger",
          "doc_count": 2
        }
      ]
    },
    "language": {
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 3
        },
        {
          "key": "english",
          "doc_count": 2
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
    "total_count": 13,
    "links": {
      "self": "http://example.org/letters?page=1&start_date=1977-07-17"
    }
  }
}</pre>
