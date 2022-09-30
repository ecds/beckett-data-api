# Letters API

## GET /letters?volumes=:list_of_volumes

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

<pre>GET /letters?volumes=1%2C+3</pre>

#### Query Parameters

<pre>volumes: 1, 3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;volumes=1%2C+3&gt;; rel=&#39;self&#39;
X-Total-Count: 13
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0ccd60a40e75aea0f50ecc29d552181d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f3e4960f-616c-4544-841b-6c32e227c80a
X-Runtime: 3.389397
Vary: Origin
Content-Length: 59427</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/5d244d52-b027-41a2-acf2-c94de4d59e20",
      "date": "1957-03-03T00:00:00.000-05:00",
      "label": "03 March 1957 - Bednar, Tatiana",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Bednar, Tatiana"
      ],
      "destinations": [
        "<i>Arthur Dent's house</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/89de194e-1674-486f-b13d-d537b3393615",
            "display": "<section><p><strong>Composer</strong> Reg Nullify</p>\n<p><strong>Title</strong> Guitar</p>\n<p><strong>Description</strong> Organic diy mustache meh chambray whatever salvia art party.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bf774745-ca11-4865-a1ac-c5ad0cf21f7c",
            "display": "<section><p><strong>Composer</strong> Gail Andrews</p>\n<p><strong>Title</strong> <i>Screwdriver</i></p>\n<p><strong>Description</strong> Meditation direct trade biodiesel vegan forage keytar.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/530fe793-e488-4556-88ca-3afa666573b1",
            "display": "<section><p><strong>Irina DuBuque, 1924-1996</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/7a2e2787-15c8-4429-95f2-94790c05cfbd",
            "display": "<section><p><strong>Johnnie Lakin, 1921-1973</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3f1cf039-d3f5-4823-a9c3-63dea9ac287a",
            "display": "<section><p><strong>Ollie Thompson, 1927-1980</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/343950f9-bf14-42bf-b9e3-5a727465311b",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Shoemaker &amp; Hoard Publishers</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Publication</strong> Lumbersexual typewriter knausgaard quinoa shoreditch muggle magic jean shorts synth poutine.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d05402d6-8e4d-42cd-9751-7803257514a4",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Open Court Publishing Company</p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Publication</strong> Sartorial keytar vinyl kickstarter hella plaid.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/de7303c3-bf63-48a5-b728-62b404fd289d",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Anova Books</p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Publication</strong> Retro blue bottle banh mi butcher 3 wolf moon wolf drinking chambray.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b58013e2-4a6d-4d27-bed8-211c091a3010",
            "display": "<section><p><strong>Artist</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Still Waiting</i></p>\n<p><strong>Description</strong> 90s listicle squid microdosing.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8cc2a692-0478-4fd1-98e5-adf1343ad518",
            "display": "<section><p><strong>Artist</strong> Zarniwoop</p>\n<p><strong>Title</strong> Thunder</p>\n<p><strong>Description</strong> Chicharrones <i>selfies tumblr vinegar microdosing blue bottle tofu</i> coldpressed.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ccec2395-9262-4191-8aaa-8f11f4086a41",
      "date": "1957-08-26T00:00:00.000-04:00",
      "label": "26 August 1957 - Sporer, Ha",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Sporer, Ha"
      ],
      "destinations": [
        "Xaxis"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5e19f276-d3aa-42ca-9024-4256b44214e7",
            "display": "<section><p><strong>Theatre</strong>, Singleorigin <i>coffee 8bit kitsch put a bird on it vinegar</i> hashtag.</p>\n<p><strong>Attended with</strong> Donny and Fenchurch</p>\n<p><strong>Place, Date</strong> Jeffmouth, 16 December 1948</p>\n<p><strong>Director</strong> Paula Nancy Millstone Jennings</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/981fe6bf-42bc-4998-92ab-bc5402d900d4",
            "display": "<section><p><strong>Theatre</strong>, Whatever <i>chia art party photo booth fashion axe</i> farmtotable.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> Port Leta, 16 September 1936</p>\n<p><strong>Director</strong> Grunthos the Flatulent</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/567c5860-7266-4d23-b893-c6f03f69a661",
            "display": "<section><p><strong><i>Frogstar World B</i></strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8966b06d-63d0-4c8b-aa22-3e59d25c0db5",
            "display": "<section><p><strong>Earth</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/2c636fc9-177a-4b09-b3cb-7774d8fb5ae0",
            "display": "<section><p><strong><i>Blagulon Kappa</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2659680c-9561-4069-9a8a-62da6da7ea52",
            "display": "<section><p><strong>Author</strong> Carter Little</p>\n<p><strong>Title</strong> Those Barren Leaves, Thrones, Dominations</p>\n<p><strong>Publication</strong> Blackstaff Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a448883c-706f-4661-acbc-6c98fa8aa9c8",
            "display": "<section><p><strong>Author</strong> Msgr. Rosa Batz</p>\n<p><strong>Title</strong> Number the Stars</p>\n<p><strong>Publication</strong> New Holland Publishers.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e0332d4f-9d5a-482d-a6dd-152abd6e2f9a",
            "display": "<section><p><strong>Artist</strong> Agda</p>\n<p><strong>Title</strong> (There'll Never B) Another Like Me</p>\n<p><strong>Description</strong> Biodiesel <i>trust fund 1 vhs locavore cred asymmetrical venmo</i> paleo.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a807ca79-9bc7-4baf-aacf-711550f7b329",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> I Would Die 4 U</p>\n<p><strong>Description</strong> Leggings diy tilde brooklyn keffiyeh artisan selvage.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/288c69be-a73a-4a17-a763-e6141cfd33e7",
      "date": "1959-01-09T00:00:00.000-05:00",
      "label": "09 January 1959 - Beatty, Cecil",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Beatty, Cecil"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d2e12c68-0cc1-4a6c-880e-472fd45e4a4e",
            "display": "<section><p><strong>Composer</strong> Yooden Vranx</p>\n<p><strong>Title</strong> I Feel For You</p>\n<p><strong>Description</strong> 8bit <i>cardigan art party artisan mlkshk craft beer five dollar toast</i> brunch.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/623c8e60-cfe9-4dd4-9405-646a4eb923de",
            "display": "<section><p><strong><i>Poghril</i></strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/351630c3-9070-479c-877c-acf76e4cf0cd",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/11d6319c-49ce-4070-8e19-a9b53781cf78",
            "display": "<section><p><strong><i>Broop Kidron 13</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d392fdb8-66ae-4f37-8845-208aed811452",
            "display": "<section><p><strong>Title</strong> <i>The Silence of the Lambs</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Vogon Constructor Fleet, Antonstad</p>\n<p><strong>Date(s)</strong> 1957-10-01.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/34f78659-604a-4d2a-8b30-fb20d6b02458",
            "display": "<section><p><strong>Artist</strong> Loonquawl</p>\n<p><strong>Title</strong> Starfish And Coffee</p>\n<p><strong>Description</strong> Synth scenester typewriter kinfolk.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/eb315628-6e41-4211-82db-1d76e828d74b",
            "display": "<section><p><strong>Artist</strong> Trillian</p>\n<p><strong>Title</strong> The Beautiful Ones</p>\n<p><strong>Description</strong> Schlitz helvetica letterpress pinterest.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/adba2761-7973-4448-a926-d2a2e5157928",
      "date": "1961-04-06T00:00:00.000-05:00",
      "label": "06 April 1961 - Schuster, Arthur",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Schuster, Arthur"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c17178fc-8e7f-4307-b1df-71547cc4ca13",
            "display": "<section><p><strong><i>Eroticon VI</i></strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/033b4dc7-3e1d-40f2-8c07-efce4c298c21",
            "display": "<section><p><strong><i>Viltvodle VI</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/dfb7be2c-5b64-4267-85ee-eb30aa77663a",
            "display": "<section><p><strong><i>Broop Kidron Thirteen</i></strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/fdf4a16b-6c89-4e7c-adf9-1b720d644c38",
            "display": "<section><p><strong>Mariella Connelly, 1923-1976</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/58364f32-2272-4804-a87e-f2fecee0dc53",
            "display": "<section><p><strong>Title</strong> The Pianist</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Billion Year Bunker, New Merlyn</p>\n<p><strong>Date(s)</strong> 1948-07-26.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/745410b0-3808-4123-ac3f-32d2e4570c45",
            "display": "<section><p><strong>Title</strong> The Truman Show</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Starship Titanic, Laviniaport</p>\n<p><strong>Date(s)</strong> 1963-07-28.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2c1f505a-a0f4-41d6-a1c0-f31c43a26c56",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1971-06-18.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f01bfbf5-7334-494d-b52c-548052e0d720",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1956-03-14.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4ac06ab4-3535-4cba-877f-0f6bdc9a7f5f",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1951-05-04.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bd0080fe-6c3a-4683-99bb-0da071629a82",
      "date": "1961-04-09T00:00:00.000-05:00",
      "label": "09 April 1961 - Brown, Yong",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Brown, Yong"
      ],
      "destinations": [
        "<i>Horsehead Nebula</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7ad13f3b-f18c-458a-b99a-a7ffa18601e0",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> U Got The Look</p>\n<p><strong>Description</strong> Next level coldpressed tryhard skateboard microdosing hella.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/cc5709ce-e8e2-470b-8ee1-3062bed46301",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1952-05-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/af177f88-eef8-447b-8812-965a3e73f004",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1964-10-02.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1aa899ac-36fe-43ff-a3ec-66f9ec05e269",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Vintage Books at Random House</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Publication</strong> Roof waistcoat echo knausgaard distillery church-key narwhal phlogiston.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5e303617-75c0-47fb-875b-ee001144f267",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Ellora's Cave</i></p>\n<p><strong>Translator</strong> Lunkwill and Fook</p>\n<p><strong>Publication</strong> Trust fund etsy tilde loko.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e3d507ef-50bd-4138-9e98-d113ed285042",
            "display": "<section><p><strong>Author</strong> Loonquawl, <strong>Original Title</strong> An Acceptable Time</p>\n<p><strong>Translated into</strong> Marathi by Genghis Khan</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0c991f89-40c8-4740-a817-ccd97e6396b1",
      "date": "1964-11-29T00:00:00.000-05:00",
      "label": "29 November 1964 - Purdy, Major",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Purdy, Major"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/ed5b7975-bcef-4b55-a483-325e17e30aae",
            "display": "<section><p><strong>Odell Murphy, 1913-1996</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3b0fb112-ffc6-4454-a321-c79d1bd32385",
            "display": "<section><p><strong>Maria Mayer, 1915-1981</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0a8345e2-3e32-449c-9650-56a3de6e0afe",
            "display": "<section><p><strong><i>Horsehead Nebula</i></strong></p>\n<p>Park letterpress fashion axe listicle.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5140a69d-100e-4f56-ba9a-386b64765ff5",
            "display": "<section><p><strong>Title</strong> Rocky</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Wolfport</p>\n<p><strong>Date(s)</strong> 1952-12-26.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/16dd27b9-e8db-44ba-9c2b-e2a629735860",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>ECW Press</i></p>\n<p><strong>Translator</strong> Agda</p>\n<p><strong>Publication</strong> Church-key vinyl vinegar vegan.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/38cb8a90-3862-4d41-8cb8-d763a38cb98e",
      "date": "1971-09-25T00:00:00.000-04:00",
      "label": "25 September 1971 - O'Keefe, Reyna",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "O'Keefe, Reyna"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/934bcdaf-1e11-4ae8-b89d-ee9ba8eb6ee5",
            "display": "<section><p><strong>Composer</strong> Hillman Hunter</p>\n<p><strong>Title</strong> Mountains</p>\n<p><strong>Description</strong> Deep <i>v brunch narwhal</i> lomo.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/beabb23c-0fe3-4449-83ba-df5d6ffcb4a4",
            "display": "<section><p><strong>Composer</strong> Max Quordlepleen</p>\n<p><strong>Title</strong> Pop Life</p>\n<p><strong>Description</strong> Banjo <i>shoreditch taxidermy godard crucifix shabby chic</i> authentic.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ddf90f52-a6f5-42a5-b4d4-8d737f3cae86",
            "display": "<section><p><strong>Composer</strong> Wonko the Sane</p>\n<p><strong>Title</strong> <i>Starfish And Coffee</i></p>\n<p><strong>Description</strong> Umami <i>tousled shabby chic tofu polaroid salvia asymmetrical bicycle rights</i> bushwick.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/466d5684-1b49-48b7-8c80-88b80487bbfd",
            "display": "<section><p><strong>Blagulon Kappa</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9ac2810b-5ad9-49c4-a7c2-bbf9a7afbc47",
            "display": "<section><p><strong>Author</strong> Mckinley Dibbert</p>\n<p><strong>Title</strong> <i>The Lathe of Heaven</i></p>\n<p><strong>Publication</strong> Da Capo Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9f340461-06f7-4bee-81cd-0cf0b81edd1f",
            "display": "<section><p><strong>Author</strong> Bryce Bogan VM</p>\n<p><strong>Title</strong> I Will Fear No Evil</p>\n<p><strong>Publication</strong> Voyager Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/064aef5a-4987-4540-9cf0-3faa5fe85a9f",
            "display": "<section><p><strong>Author</strong> Lawerence Hills</p>\n<p><strong>Title</strong> Where Angels Fear to Tread</p>\n<p><strong>Publication</strong> Broadview Press.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ce0ef2dd-ebc8-42ba-864d-e4c28b3bce0d",
            "display": "<section><p><strong>Title</strong> Dying of the Light</p>\n<p><strong>Proposal/Response</strong> But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1956-09-23.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e97b202b-434c-4c3e-b4ae-2fc190099132",
            "display": "<section><p><strong>Title</strong> The Millstone</p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1953-08-28.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d5c98cbd-5258-4ec0-a116-6a771c13ff37",
      "date": "1972-06-05T00:00:00.000-04:00",
      "label": "05 June 1972 - Frami, Maurice",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Frami, Maurice"
      ],
      "destinations": [
        "<i>Seventh Galaxy of Light and Ingenuity</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e2135e5d-0c8f-410e-b794-ff57a2ea2871",
            "display": "<section><p><strong>Composer</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> She's Always In My Hair</p>\n<p><strong>Description</strong> Retro aesthetic taxidermy tumblr etsy lofi.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/41da8a06-ed87-4450-a185-bc7f1b0fc11f",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Leafwood Publishers</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Publication</strong> Occupy waistcoat next level lomo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c0be6e63-a237-4e00-8a72-2e08e3a6cdbb",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Atlas Press</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Publication</strong> Tousled try-hard sustainable synth twee everyday.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/10a5eff0-e1d8-4288-ad40-8c24ca250c29",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> Tamborine</p>\n<p><strong>Description</strong> Shoreditch <i>flannel brooklyn goth chartreuse</i> vhs.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3859c355-2961-4129-b5d8-483f8e649830",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> Partyman</p>\n<p><strong>Description</strong> Waistcoat cornhole yuccie chia austin.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d4d6a1a4-3608-4141-8d21-9f276821cdc4",
            "display": "<section><p><strong>Artist</strong> Reg Nullify</p>\n<p><strong>Title</strong> <i>Guitar</i></p>\n<p><strong>Description</strong> Tofu kale chips celiac chillwave next level.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/81348a4e-6b82-4a6f-88c1-5b3a6d1d4e27",
            "display": "<section><p><strong>Title</strong> <i>What's Become of Waring</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Date</strong> 1951-12-26.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c8d40c30-7877-4ba2-be4d-e6f6cd235c4c",
            "display": "<section><p><strong>Title</strong> <i>Dulce et Decorum Est</i></p>\n<p><strong>Proposal/Response</strong> But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Translator</strong> Grunthos the Flatulent</p>\n<p><strong>Date</strong> 1930-03-03.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e1a1270f-3286-42e9-b846-409f8c967f3c",
            "display": "<section><p><strong>Title</strong> <i>From Here to Eternity</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Date</strong> 1930-08-06.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fdbd984e-1158-43ba-b1e9-b866f464ea78",
      "date": "1974-02-09T00:00:00.000-04:00",
      "label": "09 February 1974 - Stanton, Christal",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Stanton, Christal"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c93e6143-1184-4a17-83f7-63af3f66a0e5",
            "display": "<section><p><strong>Composer</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> Gold</p>\n<p><strong>Description</strong> Bespoke <i>phlogiston shabby chic portland health</i> vhs.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f963b7d8-8a55-47a3-9ecf-2abe1a230988",
            "display": "<section><p><strong>Golgafrincham</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/7de7d7cb-da2f-4275-82b1-d00e347f95a6",
            "display": "<section><p><strong>Kria</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c0a9fe45-679a-47bd-9100-e8eb27a33769",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Gaspereau Press</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Publication</strong> Cronut art party helvetica locavore taxidermy.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/0405dd26-bf1a-449a-bf54-8156f8ec534f",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Cloverdale Corporation</i></p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Publication</strong> Locavore synth tote bag wayfarers 8-bit kombucha fingerstache.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/9ddf8272-0b36-491a-8557-22eaacaafc52",
            "display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> <i>The Millstone</i></p>\n<p><strong>Translated into</strong> Finnish by Agda</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/49aa76b4-f3e8-4c7a-a688-820898f44fc3",
            "display": "<section><p><strong>Author</strong> Eddie the Computer, <strong>Original Title</strong> <i>The Daffodil Sky</i></p>\n<p><strong>Translated into</strong> Finnish by Slartibartfast</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7f642e37-7a2f-46a1-b9ab-e27ccce11588",
            "display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> <i>The Needle's Eye</i></p>\n<p><strong>Translated into</strong> French And English by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/213f9dc1-a381-4c30-b7e9-605bb78afbd7",
      "date": "1975-02-22T00:00:00.000-05:00",
      "label": "22 February 1975 - Murphy, Riley",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Murphy, Riley"
      ],
      "destinations": [
        "<i>Frogstar World B</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/28b95ed2-02f2-438e-9cb3-a1d2afd08428",
            "display": "<section><p><strong>Composer</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> I Would Die 4 U</p>\n<p><strong>Description</strong> Tumblr <i>quinoa knausgaard vice cred</i> tryhard.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7b7229b0-a970-4341-8adb-bac286b7aa77",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>When You Were Mine</i></p>\n<p><strong>Description</strong> Chartreuse <i>austin tilde yuccie raw</i> denim.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/7fb425f8-4346-424a-94a4-e1b8b7ec9bf6",
            "display": "<section><p><strong>Magrathea</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5ba0c0ed-3ba9-49ec-82ba-edcafb60f3ce",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8e721b5d-ea1b-4b24-b698-f475c0609e61",
            "display": "<section><p><strong>Author</strong> Amb. Anya Pagac</p>\n<p><strong>Title</strong> O Jerusalem!</p>\n<p><strong>Publication</strong> Holland Park Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/6de7258c-65a2-4c10-a117-7716f4cfbbce",
            "display": "<section><p><strong>Author</strong> Mckinley Welch</p>\n<p><strong>Title</strong> Tirra Lirra by the River</p>\n<p><strong>Publication</strong> Hackett Publishing Company.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/cf789d1a-dc04-4ded-8383-fa934fa02d15",
            "display": "<section><p><strong>Title</strong> His Dark Materials</p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Date</strong> 1947-02-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/62ec8731-6d6e-490d-8258-7fa575e96fe4",
            "display": "<section><p><strong>Title</strong> <i>Butter In a Lordly Dish</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Date</strong> 1969-07-08.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c800fbfa-ed33-448f-a021-8c4465391677",
            "display": "<section><p><strong>Title</strong> Recalled to Life</p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1924-08-17.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1273cba1-d5ee-4896-b41b-e3e4d90cbc74",
      "date": "1981-12-17T00:00:00.000-05:00",
      "label": "17 December 1981 - Conroy, Hoyt",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Conroy, Hoyt"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/b44acbfa-b9ed-427d-abae-ca1a0c7995d9",
            "display": "<section><p><strong>Composer</strong> JinJenz</p>\n<p><strong>Title</strong> I Feel For You</p>\n<p><strong>Description</strong> Pinterest <i>squid brunch street before they sold out cliche</i> drinking.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d192e7fe-0bef-4534-b319-33767d44e842",
            "display": "<section><p><strong>Composer</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Mr. Nelson</i></p>\n<p><strong>Description</strong> You <i>probably havent heard of them loko chambray williamsburg cred postironic singleorigin</i> coffee.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/ce0ae02d-e5ea-4317-9e84-2b69002a26a2",
            "display": "<section><p><strong>Debbie Koch, 1904-1984</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/02a1c94a-7fc5-4167-b298-5ed140d13eb7",
            "display": "<section><p><strong>Willie Von, 1923-1990</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d606001e-b70f-4746-ba02-76edc53b879b",
            "display": "<section><p><strong>Wilmer Doyle, 1903-1988</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/ba7dcd2f-c09d-460b-9e68-55d3cb2e1ed3",
            "display": "<section><p><strong>Author</strong> Brittny Blick</p>\n<p><strong>Title</strong> I Will Fear No Evil</p>\n<p><strong>Publication</strong> Mascot Books.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/48799bd9-e74f-47d2-9ec2-4f2fadc5d36e",
            "display": "<section><p><strong>Author</strong> Frankie and Benjy, <strong>Original Title</strong> <i>O Pioneers!</i></p>\n<p><strong>Translated into</strong> Serbo Croatian by Tricia McMillan</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3fdff91a-fbf6-45f6-b25d-29b7742724f4",
            "display": "<section><p><strong>Author</strong> Trillian, <strong>Original Title</strong> An Acceptable Time</p>\n<p><strong>Translated into</strong> Greek by Zaphod Beeblebrox</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f3d4a5b7-d81a-4951-8b58-1568c761364e",
            "display": "<section><p><strong>Author</strong> Mr. Prosser, <strong>Original Title</strong> The Parliament of Man</p>\n<p><strong>Translated into</strong> English by Frankie and Benjy</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/352c491b-21e2-473d-8375-e4554f3306f3",
      "date": "1985-12-15T00:00:00.000-05:00",
      "label": "15 December 1985 - Toy, Migdalia",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Toy, Migdalia"
      ],
      "destinations": [
        "The Domain of The King"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/58706233-9df7-49c4-9e23-2cfd6ad07aba",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Thunder</i></p>\n<p><strong>Description</strong> Meggings <i>chicharrones roof portland iphone craft beer chia</i> brunch.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/801a8bce-9b22-472c-b5dd-55a756c33ac8",
            "display": "<section><p><strong><i>Brontitall</i></strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c51ece94-230e-4928-8ce1-27381dfe7d21",
            "display": "<section><p><strong>Author</strong> Melissia Ankunding</p>\n<p><strong>Title</strong> <i>This Side of Paradise</i></p>\n<p><strong>Publication</strong> Open Court Publishing Company.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b7f39765-33ac-47d6-a29a-67d4f3a1ce32",
            "display": "<section><p><strong>Author</strong> Lesia Crooks Ret.</p>\n<p><strong>Title</strong> <i>Carrion Comfort</i></p>\n<p><strong>Publication</strong> Brimstone Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2d123d2a-0d50-4c33-bb9e-78da69cbc0d3",
            "display": "<section><p><strong>Author</strong> Pres. Debbi Bednar</p>\n<p><strong>Title</strong> <i>I Sing the Body Electric</i></p>\n<p><strong>Publication</strong> Parragon.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/587c5857-2453-4a74-86a5-759a1dde8167",
            "display": "<section><p><strong>Title</strong> Ah, Wilderness!</p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1922-10-25.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ce979037-0e44-40fd-9552-2fd43078b277",
            "display": "<section><p><strong>Title</strong> <i>Infinite Jest</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1926-04-06.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/95f74ff0-fcdd-4c7a-97ff-c634ac572c52",
            "display": "<section><p><strong>Title</strong> A Swiftly Tilting Planet</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Date</strong> 1942-06-27.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4d0ea62b-cde9-468d-b502-00e0a5baf4d3",
      "date": "1987-01-24T00:00:00.000-05:00",
      "label": "24 January 1987 - Sauer, Jayna",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Sauer, Jayna"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/48537b61-fbba-4b3f-96f5-8e3231a14cc2",
            "display": "<section><p><strong>Lanie Reichert, 1911-1977</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8a7d5a45-c21e-415e-8199-fe0981516662",
            "display": "<section><p><strong>Diego Luettgen, 1905-1972</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/79eb4df0-2b41-4517-a099-bc08c21bd7f2",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Fairview Press</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Publication</strong> Bicycle rights raw denim 3 wolf moon stumptown waistcoat goth whatever venmo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/06837b33-3190-4172-98ab-add69699af4b",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Carcanet Press</p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Publication</strong> Twee hammock wayfarers portland banh mi.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f1a6471c-5e93-4ede-8273-dc3357d720d5",
            "display": "<section><p><strong>Author</strong> Mr. Harriett Waters</p>\n<p><strong>Title</strong> The Glory and the Dream</p>\n<p><strong>Publication</strong> Sidgwick &amp; Jackson.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8f243ee8-a509-44f0-b27d-715e4a55a6fe",
            "display": "<section><p><strong>Author</strong> Barney Olson</p>\n<p><strong>Title</strong> <i>The Last Temptation</i></p>\n<p><strong>Publication</strong> Lion Hudson.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/c6bf8a3b-5f0e-4b96-a735-87604b8fc41f",
            "display": "<section><p><strong>Title</strong> <i>O Pioneers!</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1960-02-06.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/fddb3ff9-abec-419b-a7eb-5442ab481308",
            "display": "<section><p><strong>Title</strong> From Here to Eternity</p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Date</strong> 1922-11-12.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/96e083e1-cc21-4d57-adbe-274137450645",
            "display": "<section><p><strong>Title</strong> The Doors of Perception</p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Date</strong> 1955-12-13.</p></section>"
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
          "doc_count": 8
        },
        {
          "key": 2,
          "doc_count": 6
        },
        {
          "key": 4,
          "doc_count": 6
        },
        {
          "key": 0,
          "doc_count": 5
        },
        {
          "key": 3,
          "doc_count": 5
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 13,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 2
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
          "doc_count": 2
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
          "doc_count": 1
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
        },
        {
          "key_as_string": "1986-01-01T00:00:00.000Z",
          "key": 504921600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1987-01-01T00:00:00.000Z",
          "key": 536457600000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "East West Virginia College",
          "doc_count": 7
        },
        {
          "key": "West Rohan",
          "doc_count": 7
        },
        {
          "key": "East Yundt",
          "doc_count": 6
        },
        {
          "key": "The Indiana Institute",
          "doc_count": 4
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 5
        },
        {
          "key": "french",
          "doc_count": 3
        },
        {
          "key": "german",
          "doc_count": 3
        },
        {
          "key": "italian",
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
      "self": "http://example.org/letters?page=1&volumes=1%2C+3"
    }
  }
}
~~~

