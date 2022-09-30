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
ETag: W/&quot;72b8779a8a79161211b2da128b087aa5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b09ac365-b3ae-4b15-bb9f-df24ef8604d4
X-Runtime: 3.541899
Vary: Origin
Content-Length: 113677</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/f8e44b1b-150c-4ed2-9558-424d69e4024d",
      "date": "1951-08-19T00:00:00.000-04:00",
      "label": "19 August 1951 - Conn, Marlin",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Conn, Marlin"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/762d3952-8fc1-4fad-8d3c-8cdaf9b6f7dc",
            "display": "<section><p><strong>Composer</strong> Deep Thought</p>\n<p><strong>Title</strong> <i>Girls &amp; Boys</i></p>\n<p><strong>Description</strong> Cray <i>farmtotable cronut lomo</i> kickstarter.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ef02e142-2ee0-41ba-b3d0-b42628dda31d",
            "display": "<section><p><strong>Composer</strong> Agda</p>\n<p><strong>Title</strong> <i>Tamborine</i></p>\n<p><strong>Description</strong> 3 wolf moon tryhard irony fingerstache twee.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f4104181-c61a-4f96-b3c1-56eeb817a4ee",
            "display": "<section><p><strong>Composer</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> Pink Cashmere</p>\n<p><strong>Description</strong> Kitsch <i>tote bag gastropub</i> actually.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c30b9756-f659-421d-9ac4-4836513cb622",
            "display": "<section><p><strong><i>Frogstar World B</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/492ce68d-51a8-410e-a27e-bf92c2b90c1c",
            "display": "<section><p><strong><i>Golgafrincham</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/1cf61d4a-e768-47df-bf60-54e60571327b",
            "display": "<section><p><strong><i>Magrathea</i></strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/116f11b1-e044-4155-b9e7-834e7e3433f5",
            "display": "<section><p><strong>Title</strong> A Beautiful Mind</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Krikkit One, East Tony</p>\n<p><strong>Date(s)</strong> 1953-03-14.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/08113f8c-9eb5-4178-915c-924fb803593e",
            "display": "<section><p><strong>Title</strong> Groundhog Day</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Krikkit One, Port Laticiashire</p>\n<p><strong>Date(s)</strong> 1960-03-04.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/809ebd94-06b9-4109-9bec-1e3644baf8e0",
            "display": "<section><p><strong>Artist</strong> Vroomfondel</p>\n<p><strong>Title</strong> I Love U, but I Don't Trust U Anymore</p>\n<p><strong>Description</strong> Sriracha chambray microdosing plaid.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9b3e416e-f0fb-484b-b080-9407d13f425d",
            "display": "<section><p><strong>Artist</strong> Agda</p>\n<p><strong>Title</strong> Endorphinmachine</p>\n<p><strong>Description</strong> Bespoke <i>drinking kombucha green juice small</i> batch.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9c9af478-9b6f-4eb0-bd97-e1c97e586234",
      "date": "1952-01-29T00:00:00.000-05:00",
      "label": "29 January 1952 - Kertzmann, Odis",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Kertzmann, Odis"
      ],
      "destinations": [
        "<i>Kakrafoon Kappa</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/411ef385-6c28-4dd4-9db5-313d34a1c1f8",
            "display": "<section><p><strong>Composer</strong> JinJenz</p>\n<p><strong>Title</strong> Play In The Sunshine</p>\n<p><strong>Description</strong> Truffaut jean shorts poutine everyday hella ennui master cleanse.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/60ca1b35-f2b9-4e28-b573-685d72bd0971",
            "display": "<section><p><strong>Tomas Welch, 1913-1991</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3da8745d-3db6-4f1f-b2eb-6f3d82c8b5a0",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Book League of America</p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Publication</strong> Xoxo schlitz brunch artisan lumbersexual intelligentsia.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/70790268-abb9-447c-aa05-c2f922abf29f",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> G-Unit Books</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Publication</strong> Hella health yuccie next level mustache godard park farm-to-table tumblr.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/91afdead-fc00-4f78-bf77-da986430ec8b",
            "display": "<section><p><strong>Title</strong> Precious Bane</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Date</strong> 1960-02-10.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/09d130ea-6288-4fe0-b745-9ddeae732dba",
      "date": "1952-02-19T00:00:00.000-05:00",
      "label": "19 February 1952 - Gorczany, Andrea",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Gorczany, Andrea"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f49eb111-dd18-47d0-a7cd-2216d94e289a",
            "display": "<section><p><strong>Title</strong> The Pianist</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Billion Year Bunker, Nikolausstad</p>\n<p><strong>Date(s)</strong> 1964-01-07.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4865cca5-cf0d-4303-a8b2-4d98fe989e70",
            "display": "<section><p><strong>Author</strong> Amb. Rebekah Wunsch</p>\n<p><strong>Title</strong> <i>It's a Battlefield</i></p>\n<p><strong>Publication</strong> Applewood Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f90c9955-f8dc-49d8-907b-982ad17fcb2a",
            "display": "<section><p><strong>Author</strong> Devin Fadel</p>\n<p><strong>Title</strong> A Time to Kill</p>\n<p><strong>Publication</strong> D. Reidel.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b10d86a7-1695-47c3-9619-a6019b6e5e02",
            "display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> The Heart Is Deceitful Above All Things</p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Agda</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e7169bfa-5aa3-47c4-b557-6f0613877e1d",
            "display": "<section><p><strong>Author</strong> Magrathean sperm whale, <strong>Original Title</strong> <i>No Longer at Ease</i></p>\n<p><strong>Translated into</strong> Greek by Hillman Hunter</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/deec8a9d-ed3f-41c7-8f9c-158b31069280",
            "display": "<section><p><strong>Title</strong> Edna O'Brien</p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Date</strong> 1944-04-18.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/58b88f1d-a18e-4e20-a4e2-ace4ccce7f7b",
            "display": "<section><p><strong>Title</strong> <i>The Violent Bear It Away</i></p>\n<p><strong>Proposal/Response</strong> Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Date</strong> 1959-06-11.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8c5dd6f7-a290-498a-8e94-86de80566791",
      "date": "1952-11-03T00:00:00.000-05:00",
      "label": "03 November 1952 - Hane, Deborah",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Hane, Deborah"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/504ab1f0-a759-420a-93f3-03c915d70b34",
            "display": "<section><p><strong>Royal Boyer, 1908-1972</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/95663387-a2f6-4b98-82a8-d55062cbce71",
            "display": "<section><p><strong>Lashell McKenzie, 1907-1974</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/24401812-2658-4abf-aaed-e8625c57e34c",
            "display": "<section><p><strong>Gordon Ryan, 1917-1970</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e7860e37-09b8-476b-9d62-273f55f4d4d0",
            "display": "<section><p><strong>Café Lou</strong></p>\n<p>Swag readymade vinegar actually literally.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5939a48c-0144-4d20-ac69-96141de686ee",
            "display": "<section><p><strong><i>Seventh Galaxy of Light and Ingenuity</i></strong></p>\n<p>3 <i>wolf moon heirloom hammock forage seitan</i> lofi.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1cdd2e58-12f7-40b5-ab64-b44cfcd16559",
            "display": "<section><p><strong>Boston</strong></p>\n<p>Tofu flexitarian pug roof bushwick letterpress authentic chillwave.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/56f6fb6f-f58a-4cae-a639-67ea38f16df2",
            "display": "<section><p><strong>Title</strong> The Prestige</p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Heart of Gold, Kozeyville</p>\n<p><strong>Date(s)</strong> 1934-07-21.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/369661e0-4674-469a-b35a-0b50d47fdee5",
            "display": "<section><p><strong>Title</strong> <i>Tiger! Tiger!</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Date</strong> 1937-06-03.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a249b787-0fb2-4638-97b8-d298e24aa455",
            "display": "<section><p><strong>Title</strong> O Jerusalem!</p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Date</strong> 1925-06-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ec7307cf-0f8c-4944-9787-cadef01a02e8",
            "display": "<section><p><strong>Title</strong> If Not Now, When?</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Date</strong> 1925-06-12.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f0f77880-a6ab-4484-a50d-cd9039153ebc",
      "date": "1953-07-22T00:00:00.000-04:00",
      "label": "22 July 1953 - Pagac, Mary",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Pagac, Mary"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d78a9c9b-2743-416c-80e9-9fd670c6c7d5",
            "display": "<section><p><strong>Nickolas Hoppe, 1905-1992</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b78e6c03-8ec4-431c-b309-a33afc5ee230",
            "display": "<section><p><strong>Title</strong> <i>The Grapes of Wrath</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Shanellbury</p>\n<p><strong>Date(s)</strong> 1928-12-28.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/3af78545-e2d9-4fd0-9939-cec8df499ca0",
            "display": "<section><p><strong>Title</strong> <i>The Lives of Others</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Zoratown</p>\n<p><strong>Date(s)</strong> 1953-08-21.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7c8b8ffa-c37d-4b3f-8700-43d1d46d597b",
            "display": "<section><p><strong>Title</strong> Whiplash</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Heart of Gold, North Claude</p>\n<p><strong>Date(s)</strong> 1929-01-07.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6c646b5b-bc79-4c62-8849-4db7a256b7db",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Yr <i>marfa thundercats tumblr intelligentsia vice food</i> truck.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a7ce4c2d-00cf-47ba-a877-1ef781c48559",
            "display": "<section><p><strong>Artist</strong> Yooden Vranx</p>\n<p><strong>Title</strong> 17 Days</p>\n<p><strong>Description</strong> Bushwick <i>actually taxidermy trust fund blue bottle cornhole mumblecore</i> skateboard.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/80394c6d-6ba5-49ac-956f-f8251d4ab596",
            "display": "<section><p><strong>Artist</strong> Roosta</p>\n<p><strong>Title</strong> <i>17 Days</i></p>\n<p><strong>Description</strong> Readymade <i>flexitarian shoreditch paleo asymmetrical fixie park</i> wolf.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ca70e6f3-19be-4879-af3e-3fb5af2db6db",
            "display": "<section><p><strong>Title</strong> A Time to Kill</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1952-04-03.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d38bd4d3-0ae5-4e14-8d64-8a9fff489705",
            "display": "<section><p><strong>Title</strong> In Dubious Battle</p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Agda</p>\n<p><strong>Date</strong> 1923-10-28.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/eba10745-671a-40b1-94e7-6b87c6d89a6b",
            "display": "<section><p><strong>Title</strong> <i>The Far-Distant Oxus</i></p>\n<p><strong>Proposal/Response</strong> But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Date</strong> 1943-10-22.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c48251ef-fbcf-4b68-93ca-e40ed8ed1955",
      "date": "1954-09-02T00:00:00.000-04:00",
      "label": "02 September 1954 - Kohler, Collin",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Kohler, Collin"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/82abaf31-1e0e-4004-9b9b-d5eeeeb0ba0f",
            "display": "<section><p><strong>Reading</strong>, Yuccie roof messenger bag stumptown fanny pack hammock mumblecore intelligentsia.</p>\n<p><strong>Attended with</strong> Brandt and Hotblack Desiato's bodyguard</p>\n<p><strong>Place, Date</strong> Mosechester, 11 June 1945</p>\n<p><strong>Director</strong> Eccentrica Gallumbits</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1f70068d-2ea3-49ba-bbef-96ef4e4b35f3",
            "display": "<section><p><strong>Composer</strong> Grunthos the Flatulent</p>\n<p><strong>Title</strong> Superfunkycalifragisexy</p>\n<p><strong>Description</strong> Phlogiston pinterest photo booth venmo normcore vice stumptown leggings marfa.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ea224e2f-bf2a-4336-b3b5-2c4ff77839db",
            "display": "<section><p><strong>Composer</strong> Hillman Hunter</p>\n<p><strong>Title</strong> <i>Let's Go Crazy</i></p>\n<p><strong>Description</strong> Polaroid <i>everyday banjo whatever sustainable</i> wayfarers.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/491e6c57-c6c3-4e6d-8613-7f3e69b0ee19",
            "display": "<section><p><strong>Composer</strong> Dan Streetmentioner</p>\n<p><strong>Title</strong> <i>Can't Stop This Feeling I Got</i></p>\n<p><strong>Description</strong> Goth scenester readymade stumptown freegan viral.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/eef464da-09c7-4bf4-baca-1d84a690936a",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Zed Books</p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Ramps offal whatever microdosing heirloom polaroid drinking taxidermy.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/bb7019bd-6da6-46da-a31c-2b2b46a480b3",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Atheneum Publishers</p>\n<p><strong>Translator</strong> Marvin</p>\n<p><strong>Publication</strong> Pop-up five dollar toast letterpress umami hoodie paleo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/69544ba1-939d-402a-b2fe-a2f4eef36047",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> University of Akron Press</p>\n<p><strong>Translator</strong> Lintilla</p>\n<p><strong>Publication</strong> Mlkshk mixtape skateboard yr single-origin coffee lomo lumbersexual etsy.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/139b1a22-f36c-41bb-a58f-d2e4077bb7c5",
            "display": "<section><p><strong>Author</strong> Andrea Koepp</p>\n<p><strong>Title</strong> Cabbages and Kings</p>\n<p><strong>Publication</strong> Airiti Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/5619a9c7-08f8-4465-91ca-5c821844a7ec",
            "display": "<section><p><strong>Author</strong> Letty Schaefer</p>\n<p><strong>Title</strong> If Not Now, When?</p>\n<p><strong>Publication</strong> McGraw-Hill Education.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/5888cb4b-d869-4824-85f0-a6268e7937e2",
            "display": "<section><p><strong>Author</strong> Latia Konopelski</p>\n<p><strong>Title</strong> O Jerusalem!</p>\n<p><strong>Publication</strong> Lion Hudson.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e0c20613-947b-4089-81a7-bc9b6c000ff7",
      "date": "1955-04-06T00:00:00.000-05:00",
      "label": "06 April 1955 - Stroman, Emeline",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Stroman, Emeline"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e5b18e3a-4b2e-413e-8c50-bd6c30d58b74",
            "display": "<section><p><strong><i>Santraginus V</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7e595af2-e744-4a47-98c4-217c3b99b987",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Karadi Tales</p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Plaid authentic mlkshk venmo heirloom swag.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/fa769092-3e48-406d-87f2-524bcd99593d",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Black Dog Publishing</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Publication</strong> Phlogiston thundercats street actually.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3a61f797-dcff-4fa3-8aa3-4f043588bce5",
            "display": "<section><p><strong>Artist</strong> Yooden Vranx</p>\n<p><strong>Title</strong> The Most Beautiful Girl In The World</p>\n<p><strong>Description</strong> Mlkshk lomo bespoke kitsch cornhole cardigan.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a021d3f9-74ca-43f0-979b-54d3e23bbf75",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Pretzel Body Logic</i></p>\n<p><strong>Description</strong> Neutra yuccie you probably havent heard of them godard.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/25d82f15-e4fa-4a1f-ad97-18bf05604faa",
            "display": "<section><p><strong>Artist</strong> Fenchurch</p>\n<p><strong>Title</strong> Automatic</p>\n<p><strong>Description</strong> Venmo <i>slowcarb ethical keytar polaroid wayfarers</i> fingerstache.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7f000afd-e438-42ac-a612-c643d21bd64e",
            "display": "<section><p><strong>Title</strong> No Longer at Ease</p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Date</strong> 1961-12-09.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/df769dc5-9298-4a15-8171-e90afa0e49ca",
            "display": "<section><p><strong>Title</strong> Consider Phlebas</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Date</strong> 1967-07-13.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/55e41708-ffea-4b3e-9932-9200ccc1ef31",
      "date": "1955-05-21T00:00:00.000-04:00",
      "label": "21 May 1955 - Turcotte, Isiah",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Turcotte, Isiah"
      ],
      "destinations": [
        "Fenchurch Street railway station"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/bce71dd8-2551-4837-b990-700265c3e1d7",
            "display": "<section><p><strong>Krikkit</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/560c7fee-851e-4467-aaf7-afe1ceb4a531",
            "display": "<section><p><strong>Arkintoofle Minor</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/139b6379-512b-42b1-94eb-d27c5335ba49",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/7edd56d8-bb9e-41a0-bb80-284154ba8d97",
            "display": "<section><p><strong>Islington</strong></p>\n<p>Heirloom put a bird on it raw denim williamsburg diy.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/92a778da-cebe-42d5-a048-6b71da69c9bc",
            "display": "<section><p><strong><i>Pleiades system</i></strong></p>\n<p>Authentic tacos muggle magic knausgaard carry.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b9f7078f-9951-42c9-93a2-e7f76b90bca9",
            "display": "<section><p><strong>Title</strong> Cool Hand Luke</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / 42</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> RW6, Bofurt</p>\n<p><strong>Date(s)</strong> 1954-07-03.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5ef2e89b-8150-4d5b-9af6-57e8cae9b35f",
            "display": "<section><p><strong>Title</strong> The Moon by Night</p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Date</strong> 1951-10-13.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f4ebe9a5-5fb9-4b89-a752-d051dd384809",
            "display": "<section><p><strong>Title</strong> <i>Alone on a Wide, Wide Sea</i></p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Date</strong> 1936-12-16.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/477662b6-8e62-46a6-b8aa-82f207d08d63",
            "display": "<section><p><strong>Title</strong> <i>Nine Coaches Waiting</i></p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Date</strong> 1931-07-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e1042a4a-e4b7-4683-911b-7074f48df4c3",
      "date": "1957-08-19T00:00:00.000-04:00",
      "label": "19 August 1957 - Bruen, Benito",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Bruen, Benito"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/31f9e188-de6d-4d38-b0e8-925cb207137d",
            "display": "<section><p><strong>Theatre</strong>, Blue <i>bottle synth asymmetrical pork belly knausgaard</i> vice.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Prostetnic Vogon Jeltz</p>\n<p><strong>Place, Date</strong> Westborough, 04 May 1965</p>\n<p><strong>Director</strong> Lintilla</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/ac97aa32-30ed-41cc-83e2-3c973e191c4c",
            "display": "<section><p><strong>Title</strong> <i>The Terminator</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Krikkit One, Shanahanshire</p>\n<p><strong>Date(s)</strong> 1958-01-25.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4b0c95c8-d502-4723-a741-b6b62b417ce9",
            "display": "<section><p><strong>Author</strong> Questular Rontok, <strong>Original Title</strong> The Mirror Crack'd from Side to Side</p>\n<p><strong>Translated into</strong> Marathi by Eccentrica Gallumbits</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/21961360-9115-4385-92a2-e95ba27c6ab1",
            "display": "<section><p><strong>Author</strong> Slartibartfast, <strong>Original Title</strong> <i>Where Angels Fear to Tread</i></p>\n<p><strong>Translated into</strong> Portuguese by Oolon Colluphid</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2b58d1a9-caac-4555-b2b6-a18ee66c0c20",
            "display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> International Lover</p>\n<p><strong>Description</strong> Offal <i>salvia scenester cleanse letterpress shabby</i> chic.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d0ae7e27-320d-4a36-8c06-c1afbcd7ae51",
      "date": "1957-11-02T00:00:00.000-05:00",
      "label": "02 November 1957 - Davis, Daren",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Davis, Daren"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/95ee69b5-5bd6-4b6b-8bac-00615c952849",
            "display": "<section><p><strong>Rehearsal</strong>, Pbrb <i>franzen flexitarian echo 1</i> seitan.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Frankie and Benjy</p>\n<p><strong>Place, Date</strong> West Mirnaport, 16 May 1933</p>\n<p><strong>Director</strong> Tricia McMillan</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4c18db7a-d380-49a6-a05e-62cc740f303a",
            "display": "<section><p><strong>Theatre</strong>, Celiac <i>ennui authentic umami sustainable</i> williamsburg.</p>\n<p><strong>Attended with</strong> Brandt and Hotblack Desiato's bodyguard</p>\n<p><strong>Place, Date</strong> McGlynnfurt, 15 February 1960</p>\n<p><strong>Director</strong> Roosta</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/22066307-0ef6-4b1c-b534-faba5788a01c",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1934-01-01.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ae0c7b6f-372d-4e57-b311-739b03c478ad",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1928-11-19.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9e53b54e-4052-4f33-90af-41da4b00cd7f",
            "display": "<section><p><strong>Author</strong> Robert Mraz III</p>\n<p><strong>Title</strong> Vanity Fair</p>\n<p><strong>Publication</strong> Atheneum Books.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2c8d7300-6ec3-448d-9fc5-2a27e13804a4",
            "display": "<section><p><strong>Author</strong> Hillman Hunter, <strong>Original Title</strong> <i>Fair Stood the Wind for France</i></p>\n<p><strong>Translated into</strong> Ukrainian by Grunthos the Flatulent</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/08084b68-3181-4145-9738-8d0664277ed2",
            "display": "<section><p><strong>Author</strong> Deep Thought, <strong>Original Title</strong> Now Sleeps the Crimson Petal</p>\n<p><strong>Translated into</strong> Rumanian by Yooden Vranx</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/dc9d9a1a-0996-41ce-9f69-e15d78451a9a",
            "display": "<section><p><strong>Author</strong> Hotblack Desiato's bodyguard, <strong>Original Title</strong> <i>Paths of Glory</i></p>\n<p><strong>Translated into</strong> German by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a769d046-243c-4978-a93e-e22f096c5fa0",
      "date": "1960-01-03T00:00:00.000-05:00",
      "label": "03 January 1960 - Breitenberg, Krista",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Breitenberg, Krista"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7c94fa29-532a-41f5-b0f4-c3bea346892b",
            "display": "<section><p><strong>Reading</strong>, Offal <i>readymade tofu paleo</i> mumblecore.</p>\n<p><strong>Attended with</strong> The Dude and Charles Darwin</p>\n<p><strong>Place, Date</strong> New Kent, 06 February 1964</p>\n<p><strong>Director</strong> Gag Halfrunt</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4a506a51-4cab-428a-ae49-ea83f39b0a1d",
            "display": "<section><p><strong>Radio Broadcast</strong>, Squid pinterest five dollar toast kinfolk migas ramps keffiyeh plaid.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Arthur Dent</p>\n<p><strong>Place, Date</strong> South Otis, 05 September 1956</p>\n<p><strong>Director</strong> Mella</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8f617c39-3ab7-45b8-8298-8b03c5e840ad",
            "display": "<section><p><strong>Rehearsal</strong>, Banh mi skateboard retro knausgaard drinking quinoa churchkey.</p>\n<p><strong>Attended with</strong> Donny and Random Dent</p>\n<p><strong>Place, Date</strong> New Desmond, 22 April 1926</p>\n<p><strong>Director</strong> Effrafax of Wug</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/aa691be5-e9b4-463a-b431-61e8f2f5314d",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> 1-800-Newfunk Ad</p>\n<p><strong>Description</strong> Tumblr sartorial xoxo 1 listicle flannel cliche cleanse.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1965a344-34e7-4320-a33f-84850ac40a56",
            "display": "<section><p><strong>Burphon XII</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d50c0165-ec33-4838-be20-781cef7a771b",
            "display": "<section><p><strong>Jajazikstak</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/91739eaa-df7c-456f-acde-438f283a25cb",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Shire Books</i></p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Publication</strong> Try-hard occupy helvetica fixie.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d5bfa826-97fd-4157-8f7b-d2124cd60709",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Chambers Harrap</i></p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> Vhs godard migas vinyl.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/2387d9df-9444-49fc-9afa-d65278b922de",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Harry N. Abrams, Inc.</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Publication</strong> Venmo street normcore hoodie fingerstache meh.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ce4727d6-4c39-406c-968e-bb027c1fbfa4",
      "date": "1961-04-10T00:00:00.000-05:00",
      "label": "10 April 1961 - Anderson, Ja",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Anderson, Ja"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/47b18f1f-80f5-47c8-98cf-10f148083b26",
            "display": "<section><p><strong>Title</strong> <i>Lock, Stock and Two Smoking Barrels</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / 42</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, West Donnview</p>\n<p><strong>Date(s)</strong> 1931-07-08.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/dffc1805-9b49-4ddc-940d-e524ce5e8d59",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> David &amp; Charles</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> You probably haven't heard of them single-origin coffee quinoa chartreuse.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/9d9b7ccf-9768-4288-99a9-e7d823427799",
            "display": "<section><p><strong>Author</strong> Vroomfondel, <strong>Original Title</strong> Nectar in a Sieve</p>\n<p><strong>Translated into</strong> Rumanian by Zarquon</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f123c3d9-523c-48d6-b962-1c1a2ec5b6f1",
            "display": "<section><p><strong>Author</strong> Eddie the Computer, <strong>Original Title</strong> <i>A Farewell to Arms</i></p>\n<p><strong>Translated into</strong> Gaelic by Questular Rontok</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/29e8b571-5f8d-4c4c-9cb5-5a15bb503eb7",
            "display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> The Road Less Traveled</p>\n<p><strong>Translated into</strong> Dutch by Vroomfondel</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/bcdf3ca7-cdda-4302-a2b3-1a918c01ac25",
            "display": "<section><p><strong>Title</strong> <i>It's a Battlefield</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Date</strong> 1932-06-15.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1e2429f4-14fd-49b9-9a07-fe846a59e20d",
            "display": "<section><p><strong>Title</strong> The Cricket on the Hearth</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Date</strong> 1972-03-25.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b07af770-9622-4f61-b47e-1469bc3f5832",
      "date": "1963-02-09T00:00:00.000-05:00",
      "label": "09 February 1963 - Grimes, Joaquin",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Grimes, Joaquin"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/be038c46-b715-4e92-a142-43a9717ff41a",
            "display": "<section><p><strong>Composer</strong> Phouchg</p>\n<p><strong>Title</strong> I Love U, but I Don't Trust U Anymore</p>\n<p><strong>Description</strong> Mixtape kitsch slowcarb health wayfarers.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bf209460-97ab-4534-9e50-3c5080c732d9",
            "display": "<section><p><strong>Composer</strong> Mr. Prosser</p>\n<p><strong>Title</strong> <i>Starfish And Coffee</i></p>\n<p><strong>Description</strong> Irony roof stumptown forage vinegar kitsch shoreditch kombucha microdosing.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/1b4db4af-9351-4eda-9ddc-540223a75c33",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Cloreen Baconskin</i></p>\n<p><strong>Description</strong> Literally ethical ugh cardigan leggings bicycle rights asymmetrical postironic tacos.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e362f774-8d3d-43c3-ae86-ab60878ee304",
            "display": "<section><p><strong>Dan Armstrong, 1929-1978</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1d75155e-7d73-4e35-91d8-233a3c0b56e3",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1958-08-28.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c9fa64cb-7b3a-402b-b15a-895f51df7948",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1930-08-13.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/470725de-79da-4812-a2c8-2fd469e8be21",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1936-11-26.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1d33d5df-9582-406b-80b0-69348be1f2c3",
            "display": "<section><p><strong>Author</strong> Robby Hoppe IV</p>\n<p><strong>Title</strong> <i>Mr Standfast</i></p>\n<p><strong>Publication</strong> Macmillan Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4ab25cff-8991-40f2-85dc-526ca90b778d",
            "display": "<section><p><strong>Author</strong> Leonardo Feeney DDS</p>\n<p><strong>Title</strong> <i>Shall not Perish</i></p>\n<p><strong>Publication</strong> Macmillan Publishers.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0bb6190d-020c-41dd-a9ec-21d260c1acdc",
      "date": "1968-06-29T00:00:00.000-04:00",
      "label": "29 June 1968 - Towne, Scotty",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Towne, Scotty"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0697f052-5329-4c63-b302-d08d2852653d",
            "display": "<section><p><strong>Moon Hodkiewicz, 1923-1993</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ab27feab-0446-44e2-bee2-2736192a7454",
            "display": "<section><p><strong>Rico Wilkinson, 1912-1976</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f7104adf-fdfc-4958-89d8-f8040ae57412",
            "display": "<section><p><strong>Abel Ward, 1902-1992</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e49af005-91bf-438c-8f3f-34dbc4afa21a",
            "display": "<section><p><strong><i>Sector XXXZ5QZX</i></strong></p>\n<p>Vinyl cornhole selvage pinterest williamsburg.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b2461108-c9f6-4363-ade3-9a9739cdd180",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Shambhala Publications</p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Publication</strong> Scenester tattooed poutine keytar meggings swag crucifix roof.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5740dd3b-1095-434b-a23c-50c4cd1682ad",
            "display": "<section><p><strong>Title</strong> The Sun Also Rises</p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Date</strong> 1940-04-12.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1cc2fc7f-bfca-4976-8d1f-94ebb7fd2fc4",
            "display": "<section><p><strong>Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Date</strong> 1967-12-06.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd376c38-b136-4ad0-a813-aaf6c91f492b",
      "date": "1968-12-31T00:00:00.000-05:00",
      "label": "31 December 1968 - Klein, Ron",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Klein, Ron"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bc8a91d8-2330-4981-969f-1c9f290eb67b",
            "display": "<section><p><strong>Reading</strong>, Echo <i>hella crucifix hoodie loko</i> poutine.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Hillman Hunter</p>\n<p><strong>Place, Date</strong> Bodeshire, 26 September 1949</p>\n<p><strong>Director</strong> Humma Kavula</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ec3bce1a-9b61-4d4c-9af6-0072bcd680a1",
            "display": "<section><p><strong>Theatre</strong>, Tacos <i>fixie heirloom blue bottle green juice williamsburg quinoa tousled</i> chillwave.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Rob McKenna</p>\n<p><strong>Place, Date</strong> Katharinamouth, 21 September 1944</p>\n<p><strong>Director</strong> Roosta</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c8dd5cbb-3055-4753-865c-9f3056550a75",
            "display": "<section><p><strong><i>Dangrabad Beta</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8a9331ef-9dcf-4024-8d7c-367e9ce9b36d",
            "display": "<section><p><strong><i>Broop Kidron Thirteen</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/992cdc1c-8aff-418c-9d5b-81bc93e286c2",
            "display": "<section><p><strong><i>Krikkit</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1a19f2b1-7ff5-4437-becc-ceb033587f3f",
            "display": "<section><p><strong>Vada Ritchie, 1915-1976</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3d11583b-c556-40e1-96a3-881b1372f449",
            "display": "<section><p><strong>Angele Kovacek, 1926-1988</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/702945f8-9761-478e-b1bc-b25d54d7d7c3",
            "display": "<section><p><strong>Croydon</strong></p>\n<p>Vhs drinking pickled polaroid tilde williamsburg umami.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/07018abd-7828-45c9-94ce-f923061db415",
            "display": "<section><p><strong><i>Evildrome Boozarama</i></strong></p>\n<p>Keffiyeh poutine microdosing vice xoxo mumblecore.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c4c1c339-daba-4f27-bf8e-9d95c87c29a1",
      "date": "1969-05-15T00:00:00.000-04:00",
      "label": "15 May 1969 - Tillman, Krystin",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Tillman, Krystin"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3615a4ad-7658-45b5-b964-96e76bfabba1",
            "display": "<section><p><strong>Composer</strong> Roosta</p>\n<p><strong>Title</strong> When Doves Cry</p>\n<p><strong>Description</strong> Art party cardigan actually kogi migas.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/0b852fa3-da26-4827-9609-4b74c351da45",
            "display": "<section><p><strong>Composer</strong> Vroomfondel</p>\n<p><strong>Title</strong> <i>Little Red Corvette</i></p>\n<p><strong>Description</strong> Sustainable <i>loko 1 flexitarian selvage</i> humblebrag.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/858ab029-5cd5-4244-b402-0eb3fb58c439",
            "display": "<section><p><strong>Composer</strong> Grunthos the Flatulent</p>\n<p><strong>Title</strong> <i>Joy In Repetition</i></p>\n<p><strong>Description</strong> Hoodie <i>kinfolk plaid postironic asymmetrical</i> leggings.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/404a7308-ca82-481d-a75f-2ebd33b499ee",
            "display": "<section><p><strong>Argabuthon</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/25c0d347-1f2d-4cbf-8df4-a67dccd814dc",
            "display": "<section><p><strong>Kakrafoon Kappa</strong></p>\n<p>Humblebrag truffaut art party pbrb raw denim five dollar toast you probably havent heard of them listicle aesthetic.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/0d7ec2fe-f103-436b-8d73-e121d3f99765",
            "display": "<section><p><strong><i>France</i></strong></p>\n<p>Aesthetic swag humblebrag cleanse plaid butcher kickstarter fanny pack.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/94dfd3ed-f9e9-43f8-b167-ddcc5f8bbe7e",
            "display": "<section><p><strong>Artist</strong> Questular Rontok</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Lumbersexual <i>williamsburg wayfarers stumptown lofi paleo schlitz pug</i> microdosing.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cbc841b8-85df-4288-ad54-04375640f2a1",
            "display": "<section><p><strong>Artist</strong> Wonko the Sane</p>\n<p><strong>Title</strong> I Feel For You</p>\n<p><strong>Description</strong> Vhs semiotics retro migas mixtape pbrb sartorial thundercats.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd580182-b9da-461d-8ef9-83c0563e21fe",
      "date": "1969-05-23T00:00:00.000-04:00",
      "label": "23 May 1969 - Morar, Geraldo",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Morar, Geraldo"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3fc21011-cdd8-4c22-a24f-061bf4373195",
            "display": "<section><p><strong>Title</strong> Gladiator</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Myleschester</p>\n<p><strong>Date(s)</strong> 1926-03-31.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/38e487c3-4dca-4888-87fc-2ef407e042aa",
            "display": "<section><p><strong>Title</strong> A Wednesday</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Heart of Gold, Corwinside</p>\n<p><strong>Date(s)</strong> 1950-02-04.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d2506cba-bb37-4c6e-8df0-e724cfeab4af",
            "display": "<section><p><strong>Author</strong> Angeles Schoen</p>\n<p><strong>Title</strong> <i>The Green Bay Tree</i></p>\n<p><strong>Publication</strong> Black Dog Publishing.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6e125be6-be78-423a-bc5c-c2958dafee9b",
            "display": "<section><p><strong>Author</strong> Grunthos the Flatulent, <strong>Original Title</strong> <i>As I Lay Dying</i></p>\n<p><strong>Translated into</strong> Spanisn by Rob McKenna</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d3a1a738-8e9f-47d0-bcc7-5fc056398b82",
            "display": "<section><p><strong>Author</strong> Zaphod Beeblebrox, <strong>Original Title</strong> <i>Nine Coaches Waiting</i></p>\n<p><strong>Translated into</strong> Finnish by Max Quordlepleen</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2b4d4d4b-8716-46b8-94f9-2425712a4434",
            "display": "<section><p><strong>Artist</strong> Magrathean sperm whale</p>\n<p><strong>Title</strong> Sexy MF</p>\n<p><strong>Description</strong> Echo selfies before they sold out whatever occupy diy williamsburg polaroid.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4dae568f-9e0f-42be-9824-ebb791dd10de",
            "display": "<section><p><strong>Artist</strong> Trin Tragula</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Celiac <i>put a bird on it shoreditch plaid sustainable vhs goth raw</i> denim.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0cf2a4cb-a093-4442-a05f-e9b8e3b45565",
            "display": "<section><p><strong>Artist</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Pink Cashmere</i></p>\n<p><strong>Description</strong> Pork belly sustainable thundercats authentic crucifix.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fdb92103-e339-4db7-bf45-343aa06c0fe7",
      "date": "1969-05-28T00:00:00.000-04:00",
      "label": "28 May 1969 - Jaskolski, Marvel",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Jaskolski, Marvel"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3221fea5-e0c5-440d-98b5-403861d318ae",
            "display": "<section><p><strong>Radio Broadcast</strong>, Tumblr <i>chambray semiotics pickled fanny pack</i> postironic.</p>\n<p><strong>Attended with</strong> Donny and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> Lake Jessie, 30 March 1954</p>\n<p><strong>Director</strong> Phouchg</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3bceb9fc-228d-4dde-bdb1-fd5ccc9cf6c2",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Jaico Publishing House</i></p>\n<p><strong>Translator</strong> Mr. Prosser</p>\n<p><strong>Publication</strong> Bespoke polaroid pug dreamcatcher farm-to-table irony church-key.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3ed0e919-4f45-4944-93d5-d598cc1887db",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Viking Press</p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Publication</strong> Poutine plaid direct trade leggings xoxo schlitz.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/69e7b1ee-af59-4c82-878c-b43a52ad953c",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Palgrave Macmillan</i></p>\n<p><strong>Translator</strong> Frankie and Benjy</p>\n<p><strong>Publication</strong> Williamsburg vice retro kickstarter selvage seitan cronut wes anderson.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/c95ec7fa-9e74-4690-89d5-f0bef74b60b5",
            "display": "<section><p><strong>Author</strong> Mr. Prosser, <strong>Original Title</strong> <i>The World, the Flesh and the Devil</i></p>\n<p><strong>Translated into</strong> French by Hillman Hunter</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bb46a85d-2afd-44e5-a112-db0a2fe347ff",
            "display": "<section><p><strong>Author</strong> Slartibartfast, <strong>Original Title</strong> <i>For a Breath I Tarry</i></p>\n<p><strong>Translated into</strong> Ukrainian by Questular Rontok</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/cc780fe8-ee4e-46c1-9ceb-aeb890936cb4",
            "display": "<section><p><strong>Author</strong> Loonquawl and Phouchg, <strong>Original Title</strong> Alone on a Wide, Wide Sea</p>\n<p><strong>Translated into</strong> Serbo Croatian by Pizpot Gargravarr</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9624b3de-ce04-41b3-a2ca-72302469c9ae",
            "display": "<section><p><strong>Artist</strong> Lintilla</p>\n<p><strong>Title</strong> Cloreen Baconskin</p>\n<p><strong>Description</strong> Kale chips pitchfork 8bit yolo gastropub schlitz.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cf1f93cd-ff83-4891-925c-c91e0e489593",
            "display": "<section><p><strong>Artist</strong> Gail Andrews</p>\n<p><strong>Title</strong> It's Gonna Be A Beautiful Night</p>\n<p><strong>Description</strong> Lomo <i>pourover banh mi flannel</i> popup.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c1097c44-e1f0-4e73-9994-22b81a250a42",
            "display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> <i>Money Don't Matter 2 Night</i></p>\n<p><strong>Description</strong> Portland <i>green juice hashtag</i> whatever.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fec24ffa-1fd8-42de-b965-208080ff7420",
      "date": "1969-10-02T00:00:00.000-04:00",
      "label": "02 October 1969 - Glover, Christel",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Glover, Christel"
      ],
      "destinations": [
        "<i>Evildrome Boozarama</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/33b0b33d-aba9-4baf-84a5-ff3476d6141f",
            "display": "<section><p><strong>Theatre</strong>, Pug venmo mumblecore farmtotable.</p>\n<p><strong>Attended with</strong> Donny and Mr. Prosser</p>\n<p><strong>Place, Date</strong> East Haroldton, 25 August 1948</p>\n<p><strong>Director</strong> Lunkwill and Fook</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/25ddb99b-07c8-4226-af40-00b91d2fe713",
            "display": "<section><p><strong>Vito Reinger, 1919-1992</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/276e5dc2-bf93-4597-a7e8-50e3ee889acf",
            "display": "<section><p><strong>Gary Weissnat, 1923-1991</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f0bf443c-a34f-4047-ba27-6ab3a22e6045",
            "display": "<section><p><strong>Deangelo Lang, 1903-1989</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/faf9d294-63f2-44ad-89a6-8113c9e94813",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1971-08-18.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/afc4ead3-ddb3-41ec-acd5-d30b4473b794",
            "display": "<section><p><strong>Author</strong> Barbra Mraz</p>\n<p><strong>Title</strong> <i>Recalled to Life</i></p>\n<p><strong>Publication</strong> Adis International.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ea65742a-391b-4b06-b874-1fb4f84db6dd",
      "date": "1971-01-15T00:00:00.000-05:00",
      "label": "15 January 1971 - Schinner, Dominique",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Schinner, Dominique"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/182ea1a3-ad07-4283-97b5-654a353cabe6",
            "display": "<section><p><strong>Reading</strong>, Goth <i>kinfolk tofu viral helvetica cardigan</i> literally.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Agrajag</p>\n<p><strong>Place, Date</strong> Mertzland, 26 February 1963</p>\n<p><strong>Director</strong> Loonquawl and Phouchg</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/81cf2775-b4a8-41b6-b66b-e2745dcb600a",
            "display": "<section><p><strong>Reading</strong>, Tumblr sriracha humblebrag neutra food truck.</p>\n<p><strong>Attended with</strong> The Dude and Max Quordlepleen</p>\n<p><strong>Place, Date</strong> Kacyfort, 09 November 1932</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8ff1e783-26d6-4d97-9532-9b6d5a08f357",
            "display": "<section><p><strong>Theatre</strong>, Messenger <i>bag synth quinoa five dollar toast flexitarian hella distillery</i> gentrify.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Eddie the Computer</p>\n<p><strong>Place, Date</strong> Deonnatown, 23 October 1927</p>\n<p><strong>Director</strong> Hactar</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1758b6cc-4a3d-4325-84b8-318d1950e4c6",
            "display": "<section><p><strong>Argabuthon</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8c4e27fb-9e90-44ea-9d26-4d23b8c64401",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/21525401-4052-4973-bba2-abcae44f5757",
            "display": "<section><p><strong>Islington</strong></p>\n<p>Keffiyeh vegan humblebrag flexitarian chillwave lumbersexual.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e3ebc30d-b3ad-42f3-bea3-44e777b8118d",
            "display": "<section><p><strong>Horse and Groom</strong></p>\n<p>Wes anderson pug butcher street.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8ea40938-776b-4d7e-8b89-db9e181fb36e",
            "display": "<section><p><strong>Title</strong> <i>Se7en</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Wildermanport</p>\n<p><strong>Date(s)</strong> 1955-08-23.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/181eb2ea-7a48-4a2b-a4ec-a57d9e5239e0",
            "display": "<section><p><strong>Title</strong> <i>The Prestige</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Sebastianbury</p>\n<p><strong>Date(s)</strong> 1961-08-30.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/88d00ec4-c6f6-4eb8-86d3-b2b88ae93994",
            "display": "<section><p><strong>Title</strong> <i>3 Idiots</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> RW6, Kleinhaven</p>\n<p><strong>Date(s)</strong> 1948-01-06.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c29bc64f-3abc-42dd-ad90-d80c9a4360a9",
      "date": "1971-10-15T00:00:00.000-04:00",
      "label": "15 October 1971 - Effertz, Ozie",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Effertz, Ozie"
      ],
      "destinations": [
        "<i>Bistro Illegal</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c350d34c-a6e3-4ad2-a5f0-995b975df481",
            "display": "<section><p><strong>Composer</strong> Zaphod Beeblebrox</p>\n<p><strong>Title</strong> When You Were Mine</p>\n<p><strong>Description</strong> Mumblecore <i>chia butcher cray everyday lomo selvage forage</i> ugh.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4f9c3cec-8c22-45f8-8379-fb1e36a24611",
            "display": "<section><p><strong><i>Han Wavel</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/0ac0604c-d538-4d91-9aee-20348e86e81d",
            "display": "<section><p><strong>Jajazikstak</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/29262bbe-ffcf-420f-9f29-ec2fcb2641ea",
            "display": "<section><p><strong>29 Arlington Avenue</strong></p>\n<p>Readymade <i>forage retro tofu helvetica raw denim bicycle rights</i> viral.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/dfc39611-42ad-4d0e-80c5-a920cc1e867c",
            "display": "<section><p><strong><i>Sector XXXZ5QZX</i></strong></p>\n<p>Mumblecore ugh truffaut fingerstache lumbersexual kitsch etsy.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/11f91b71-6c2a-4930-86aa-90ac7a0b5696",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1966-11-27.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a0ae5a4c-22a6-4854-9208-b3c36d022507",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1961-03-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/dfbc79ac-6ea7-42a7-a20b-35a3b0d8aa1d",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1949-03-03.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/58eb1118-8f68-4ccb-8e48-055b13af7a26",
      "date": "1974-05-31T00:00:00.000-04:00",
      "label": "31 May 1974 - Herman, Terrence",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Herman, Terrence"
      ],
      "destinations": [
        "Zarss"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/003098cb-4674-49dd-8291-cca036fb9cef",
            "display": "<section><p><strong>Composer</strong> Yooden Vranx</p>\n<p><strong>Title</strong> Pink Cashmere</p>\n<p><strong>Description</strong> Hella squid deep v williamsburg wes anderson scenester.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e1358f6f-077e-4343-b901-4f4eca609ed3",
            "display": "<section><p><strong>Composer</strong> Humma Kavula</p>\n<p><strong>Title</strong> <i>A Love Bizarre</i></p>\n<p><strong>Description</strong> Banh <i>mi pabst synth kombucha mustache migas gentrify paleo</i> lofi.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/41370f8c-3fdd-46dc-a5d6-64cad40f51e0",
            "display": "<section><p><strong><i>Highgate Cemetery</i></strong></p>\n<p>Slowcarb <i>goth chillwave drinking</i> migas.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6068f75f-e5b5-49eb-bff0-62efc1775029",
            "display": "<section><p><strong>Author</strong> Prostetnic Vogon Kwaltz, <strong>Original Title</strong> Absalom, Absalom!</p>\n<p><strong>Translated into</strong> Hungarian by Vroomfondel</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d4ba6801-a226-4bcb-9cb7-73e5278c0e56",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> Tender Is the Night</p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6847ac77-ad29-44f7-b261-d4b239dea43a",
            "display": "<section><p><strong>Author</strong> Arthur Dent, <strong>Original Title</strong> <i>The Stars' Tennis Balls</i></p>\n<p><strong>Translated into</strong> Serbo Croatian by Gail Andrews</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b41b21f7-6546-414b-a713-36a947d78dc6",
            "display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> <i>(There'll Never B) Another Like Me</i></p>\n<p><strong>Description</strong> Listicle everyday godard poutine.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a360e179-2e61-4efc-ab66-1d9b7b5996ab",
      "date": "1974-06-21T00:00:00.000-04:00",
      "label": "21 June 1974 - Gusikowski, Inge",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Gusikowski, Inge"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e1887a49-3d5a-437b-9c5f-68d1c7032662",
            "display": "<section><p><strong>Radio Broadcast</strong>, Ennui <i>vinegar typewriter narwhal xoxo venmo craft</i> beer.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Paula Nancy Millstone Jennings</p>\n<p><strong>Place, Date</strong> East Bertramside, 22 April 1953</p>\n<p><strong>Director</strong> Yooden Vranx</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2682f7b5-018c-40b4-8c25-b6cc406dfccc",
            "display": "<section><p><strong>Composer</strong> Reg Nullify</p>\n<p><strong>Title</strong> Le Grind</p>\n<p><strong>Description</strong> Taxidermy cray blue bottle vhs before they sold out narwhal wolf shoreditch.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/32791806-62d9-4813-921b-c3314b41fdaa",
            "display": "<section><p><strong>Author</strong> Rep. Oda Schuppe</p>\n<p><strong>Title</strong> The Waste Land</p>\n<p><strong>Publication</strong> Mandrake Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/61364995-b02e-4dbf-9d27-de862f99d9bb",
            "display": "<section><p><strong>Author</strong> Josefina Rippin</p>\n<p><strong>Title</strong> The Line of Beauty</p>\n<p><strong>Publication</strong> Flame Tree Publishing.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ea4607a0-7b84-4679-83cc-9f7720abbd13",
            "display": "<section><p><strong>Artist</strong> Marvin</p>\n<p><strong>Title</strong> <i>And God Created Woman</i></p>\n<p><strong>Description</strong> Sriracha <i>pickled slowcarb keytar shoreditch</i> austin.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/73dc6d56-da56-4648-b2f0-fa8b77ec3ddb",
            "display": "<section><p><strong>Artist</strong> Prak</p>\n<p><strong>Title</strong> <i>New Position</i></p>\n<p><strong>Description</strong> Carry tattooed occupy chartreuse intelligentsia phlogiston chicharrones.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4ab34b8a-22c3-4294-8e67-42d04ea6d93e",
            "display": "<section><p><strong>Artist</strong> Slartibartfast</p>\n<p><strong>Title</strong> Guitar</p>\n<p><strong>Description</strong> Muggle <i>magic pourover scenester vinyl direct trade blue bottle trust fund 3 wolf moon</i> literally.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/93e23595-a961-4e61-853a-d9e72170e83f",
      "date": "1974-08-08T00:00:00.000-04:00",
      "label": "08 August 1974 - Bogisich, Dylan",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Bogisich, Dylan"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/d4280f86-bb05-4239-9c61-c1e0c5fcd39a",
            "display": "<section><p><strong>Sqornshellous Zeta</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c8779ac0-cf04-4347-9a19-3293b110ece3",
            "display": "<section><p><strong><i>Nano</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/446e058e-47f5-4634-ba72-457f3e7f56ff",
            "display": "<section><p><strong>Title</strong> Indiana Jones and the Last Crusade</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Bistromath, Kemmerport</p>\n<p><strong>Date(s)</strong> 1955-12-10.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/62703319-6dfd-45df-ae40-9d5c52123576",
            "display": "<section><p><strong>Title</strong> <i>Beauty and the Beast</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> RW6, Naberg</p>\n<p><strong>Date(s)</strong> 1926-01-15.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/cbebcd2d-76a1-4ed9-bced-051a4f1f1bf6",
            "display": "<section><p><strong>Title</strong> <i>Monty Python and the Holy Grail</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Vogon Constructor Fleet, Josebury</p>\n<p><strong>Date(s)</strong> 1963-05-18.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/857f092b-f0a7-4f46-8d65-ab22f6d2d90f",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>Mark Batty Publisher</i></p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Publication</strong> Drinking phlogiston chia disrupt iphone.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a5b94999-64f2-4d31-9d5b-7aba8232984a",
            "display": "<section><p><strong>Title</strong> <i>Taming a Sea Horse</i></p>\n<p><strong>Proposal/Response</strong> ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1924-12-16.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/500626ad-da61-43b8-9710-812aaabd922e",
      "date": "1975-09-23T00:00:00.000-04:00",
      "label": "23 September 1975 - Larson, Garry",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Larson, Garry"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c53e5f08-6391-4fa1-b279-935dba4fcd86",
            "display": "<section><p><strong>Composer</strong> Prak</p>\n<p><strong>Title</strong> <i>She's Always In My Hair</i></p>\n<p><strong>Description</strong> Normcore <i>helvetica synth chartreuse tofu</i> offal.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/600b3cfb-fe71-40eb-9575-09fa8ea21ca1",
            "display": "<section><p><strong>Kerry Armstrong, 1910-1986</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/107d7665-cf9d-49d5-96bf-e92ae9728ab9",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Chronicle Books</i></p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Publication</strong> Butcher phlogiston organic forage waistcoat bicycle rights goth literally.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9d7e6ec2-5115-460a-a09f-6623c68b1f14",
            "display": "<section><p><strong>Author</strong> Ramiro Borer</p>\n<p><strong>Title</strong> <i>Vile Bodies</i></p>\n<p><strong>Publication</strong> J. M. Dent.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/586695e9-9d1c-4f43-b1d8-c1f8aec83a54",
            "display": "<section><p><strong>Author</strong> Zella Schuppe</p>\n<p><strong>Title</strong> To a God Unknown</p>\n<p><strong>Publication</strong> André Deutsch.</p></section>"
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
          "key": 4,
          "doc_count": 10
        },
        {
          "key": 3,
          "doc_count": 8
        },
        {
          "key": 0,
          "doc_count": 6
        },
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 2,
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
          "key_as_string": "1951-01-01T00:00:00.000Z",
          "key": -599616000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1952-01-01T00:00:00.000Z",
          "key": -568080000000,
          "doc_count": 3
        },
        {
          "key_as_string": "1953-01-01T00:00:00.000Z",
          "key": -536457600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1954-01-01T00:00:00.000Z",
          "key": -504921600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1955-01-01T00:00:00.000Z",
          "key": -473385600000,
          "doc_count": 2
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 0
        },
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
          "doc_count": 0
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
          "doc_count": 1
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 0
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
          "doc_count": 2
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 4
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 0
        },
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 2
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
          "doc_count": 3
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
          "doc_count": 1
        },
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 1
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
          "doc_count": 0
        },
        {
          "key_as_string": "1988-01-01T00:00:00.000Z",
          "key": 567993600000,
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
          "key": "North Mosciski Institute",
          "doc_count": 18
        },
        {
          "key": "Northern Nebraska Institute",
          "doc_count": 13
        },
        {
          "key": "North Kuphal Institute",
          "doc_count": 12
        },
        {
          "key": "Southern Mann University",
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
          "doc_count": 10
        },
        {
          "key": "italian",
          "doc_count": 8
        },
        {
          "key": "french",
          "doc_count": 6
        },
        {
          "key": "german",
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
}
~~~

