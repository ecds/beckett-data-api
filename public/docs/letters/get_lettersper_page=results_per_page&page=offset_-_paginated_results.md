# Letters API

## GET /letters?per_page=:results_per_page&amp;page=:offset - Paginated results

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
ETag: W/&quot;a8bab6eca3b92e7687f37ddd5319d8b3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 75cd714d-af24-44e1-9aad-a8734e480b3b
X-Runtime: 2.997478
Vary: Origin
Content-Length: 42560</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/9aac6e12-6939-4084-afd6-dbb74f5fa325",
      "date": "1960-01-29T00:00:00.000-05:00",
      "label": "29 January 1960 - Windler, Carrol",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Windler, Carrol"
      ],
      "destinations": [
        "Belgium"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/96385aab-d952-4e44-9cce-028a023a8ac1",
            "display": "<section><p><strong><i>Hawalius</i></strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/4fb0548c-431b-4903-a521-1ccc5ff5d68b",
            "display": "<section><p><strong>Earth</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8e66b7e3-813e-4c95-b1e8-983d6cf92b9b",
            "display": "<section><p><strong>Poghril</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/79fbaaf2-5d3f-4f0b-b64f-a184286e017c",
            "display": "<section><p><strong>Title</strong> <i>North by Northwest</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Vogon Constructor Fleet, West Lawerence</p>\n<p><strong>Date(s)</strong> 1938-01-12.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d210e122-1a33-4998-bffc-c0ca349174d2",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1936-11-30.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1aa9de91-c97f-48a0-ba47-0dd3d31043cd",
            "display": "<section><p><strong>Title</strong> <i>Françoise Sagan</i></p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Date</strong> 1955-07-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5dc11ee9-3f0b-4b57-9ff7-54ffea83ad64",
            "display": "<section><p><strong>Title</strong> <i>The Proper Study</i></p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Date</strong> 1955-01-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/52656208-d844-4108-a003-dca140dd7929",
      "date": "1960-02-25T00:00:00.000-05:00",
      "label": "25 February 1960 - Bosco, Marisol",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Bosco, Marisol"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7e26360b-9711-4bce-8328-362c845688d7",
            "display": "<section><p><strong>Radio Broadcast</strong>, Seitan yolo ramps austin photo booth food truck plaid vegan hashtag.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Mella</p>\n<p><strong>Place, Date</strong> East Major, 19 November 1928</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/7732b2a0-95bf-4706-8af7-ea6a2fea2115",
            "display": "<section><p><strong>Reading</strong>, Before they sold out tote bag muggle magic meggings churchkey craft beer franzen readymade.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Lintilla</p>\n<p><strong>Place, Date</strong> South Glennville, 09 February 1963</p>\n<p><strong>Director</strong> Tricia McMillan</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/358f431d-af1d-413a-94f3-e989838548f6",
            "display": "<section><p><strong>Megabrantis cluster</strong></p>\n<p>Bitters plaid tousled synth kitsch.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5457236c-effe-4685-aa56-41aed382ccd5",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1958-10-19.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9487060e-476d-4673-9850-55c6a012571a",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1951-07-30.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/bbfed4a7-11ac-4e7c-9cc8-8c8f4668991a",
            "display": "<section><p><strong>Title</strong> <i>Look Homeward, Angel</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Date</strong> 1929-11-04.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/bc2e7611-443c-40ca-a5ad-f472b7a9fe5d",
            "display": "<section><p><strong>Title</strong> Behold the Man</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1959-10-23.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d3ae98ee-9e42-4b7f-be8e-29655ead4569",
      "date": "1963-02-28T00:00:00.000-05:00",
      "label": "28 February 1963 - Gusikowski, Jeneva",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Gusikowski, Jeneva"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/14a58910-940e-4874-8a5d-b08fdfd19294",
            "display": "<section><p><strong><i>Xaxis</i></strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/feea0545-8e0b-4384-a23e-26d8e9357f45",
            "display": "<section><p><strong>Justin Crona, 1926-1983</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/242c0847-774e-474b-9669-ddeea73721fe",
            "display": "<section><p><strong>Jude Conn, 1908-1975</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/68f879e4-70f0-4ef1-b105-4ecfb7c5c6ca",
            "display": "<section><p><strong>Author</strong> Oolon Colluphid, <strong>Original Title</strong> The Mirror Crack'd from Side to Side</p>\n<p><strong>Translated into</strong> Ukrainian by Arthur Dent</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f87bb797-1342-4d9f-a4d6-905f7e09475d",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Heirloom <i>hashtag mixtape beard pug taxidermy</i> viral.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7cd8095e-238f-4fa1-9e47-1828fba24a51",
            "display": "<section><p><strong>Artist</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> <i>Uptown</i></p>\n<p><strong>Description</strong> Cornhole <i>locavore skateboard slowcarb aesthetic freegan you probably havent heard of them</i> mumblecore.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b66fb7e7-2eb8-448d-9aca-db396be0e976",
      "date": "1963-03-11T00:00:00.000-05:00",
      "label": "11 March 1963 - Ullrich, Reggie",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Ullrich, Reggie"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e06e3053-e1c2-4276-8ed8-dd83bbdc9a3c",
            "display": "<section><p><strong><i>France</i></strong></p>\n<p>Franzen mlkshk next level mustache jean shorts.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ba394c77-79a8-48b7-9c5f-17339b00579f",
            "display": "<section><p><strong><i>Lord's Cricket Ground</i></strong></p>\n<p>Stumptown ugh flannel deep v williamsburg flexitarian lofi selvage.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/bb809178-9dea-496a-b18b-3bcfc4f714be",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1940-02-02.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/aa68837a-6c47-4768-9991-74663e373586",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1959-05-14.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/903e3aa1-3f00-4bc8-bff3-b4a368fbbc86",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Reed Publishing</p>\n<p><strong>Translator</strong> Mr. Prosser</p>\n<p><strong>Publication</strong> Letterpress pour-over mixtape meh dreamcatcher cronut raw denim.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/91cc3bc9-740f-4e3e-927b-3213a7107244",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Eerdmans Publishing</p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Publication</strong> Truffaut celiac synth freegan fashion axe direct trade.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/378f8c74-629e-4cd5-91d3-a36323151f94",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Schocken Books</i></p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Publication</strong> Tousled pabst marfa vinyl gluten-free.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3474ea47-7ebc-45a4-80fc-7a1411237d2a",
            "display": "<section><p><strong>Author</strong> Arthur Philip Deodat, <strong>Original Title</strong> <i>As I Lay Dying</i></p>\n<p><strong>Translated into</strong> Spanisn by Arthur Philip Deodat</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/aa833999-7129-41ce-88ec-c65d2d4ffafb",
            "display": "<section><p><strong>Author</strong> Pasta Fasta, <strong>Original Title</strong> Fear and Trembling</p>\n<p><strong>Translated into</strong> Norwegian by Trin Tragula</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3d006732-0270-4713-a912-36c721f5c437",
      "date": "1966-01-09T00:00:00.000-05:00",
      "label": "09 January 1966 - Hamill, Glennis",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Hamill, Glennis"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5913427f-fe3f-412d-bf06-34824276ae3c",
            "display": "<section><p><strong>Theatre</strong>, Chillwave <i>yolo lofi salvia</i> pabst.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Majikthise</p>\n<p><strong>Place, Date</strong> Port Emmanuel, 28 July 1957</p>\n<p><strong>Director</strong> Prak</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3c1a0fcb-6955-488a-b259-c058d8f31488",
            "display": "<section><p><strong>Reading</strong>, Hammock 8bit green juice skateboard muggle magic selfies before they sold out farmtotable.</p>\n<p><strong>Attended with</strong> Donny and Yooden Vranx</p>\n<p><strong>Place, Date</strong> North Nataliaside, 15 December 1935</p>\n<p><strong>Director</strong> Agrajag</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8ae45b66-d9de-422d-9c07-76e4497679cf",
            "display": "<section><p><strong>Author</strong> Rema Strosin</p>\n<p><strong>Title</strong> Jesting Pilate</p>\n<p><strong>Publication</strong> Harvill Press at Random House.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c3e69c54-6cab-4ac6-a6c9-9c4cc9bf54bd",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> Guitar</p>\n<p><strong>Description</strong> Polaroid <i>pabst narwhal williamsburg yolo slowcarb waistcoat</i> bushwick.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/acddf0d5-9f39-4873-aad6-7613ba49457d",
            "display": "<section><p><strong>Title</strong> <i>Everything is Illuminated</i></p>\n<p><strong>Proposal/Response</strong> In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1928-06-07.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3e4850db-f340-46a1-990d-43c9d97f8261",
      "date": "1966-05-03T00:00:00.000-04:00",
      "label": "03 May 1966 - Kling, Donny",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Kling, Donny"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/6a408e90-b2c3-480c-b835-7935422d8bde",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1941-02-10.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7559d2b9-88a8-4ca0-9611-c40038bf604d",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1960-06-05.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7ed7c62a-a01b-4d04-91b9-de8b45995ac5",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1946-02-15.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/13890ab8-d585-4828-8d32-f3576f72ab17",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Martinus Nijhoff Publishers</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Publication</strong> Plaid diy fingerstache brooklyn.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/eaaaafc5-8620-41e6-aef0-2d626e4d3d33",
            "display": "<section><p><strong>Author</strong> Cassie Jacobson</p>\n<p><strong>Title</strong> <i>It's a Battlefield</i></p>\n<p><strong>Publication</strong> Medknow Publications.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/07fd8090-76ca-4b61-8ed8-cb98bffc37c6",
            "display": "<section><p><strong>Author</strong> Shonda Boyle</p>\n<p><strong>Title</strong> It's a Battlefield</p>\n<p><strong>Publication</strong> Horizon Scientific Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a1066ddd-dfca-4d6a-8b78-00192a8af73b",
            "display": "<section><p><strong>Author</strong> Eliana Crist</p>\n<p><strong>Title</strong> <i>Things Fall Apart</i></p>\n<p><strong>Publication</strong> Eerdmans Publishing.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2d6728a2-c317-43c5-9b0a-43ba9a922f4d",
            "display": "<section><p><strong>Title</strong> <i>O Jerusalem!</i></p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Date</strong> 1970-09-05.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a1d0e781-e980-46f3-a930-8dd2d35df49e",
            "display": "<section><p><strong>Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Date</strong> 1945-12-26.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c8e0a651-f60a-4c6b-a4b7-0d363d9ffae5",
      "date": "1967-02-03T00:00:00.000-05:00",
      "label": "03 February 1967 - Schroeder, Anton",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Schroeder, Anton"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/73aeff94-60bc-4a3a-ba48-fea85bad8f74",
            "display": "<section><p><strong>Composer</strong> Arthur Philip Deodat</p>\n<p><strong>Title</strong> Scandalous!</p>\n<p><strong>Description</strong> Keffiyeh churchkey freegan cliche.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/258ec12e-4d73-48e4-a099-0c7e7e3d2c8f",
            "display": "<section><p><strong>Composer</strong> Fenchurch</p>\n<p><strong>Title</strong> Still Waiting</p>\n<p><strong>Description</strong> Art party chartreuse small batch raw denim carry craft beer deep v.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a8b636d4-7b68-4f42-a520-2a19fe752b79",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Da Capo Press</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Publication</strong> Jean shorts shoreditch readymade next level bicycle rights yolo hammock.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/94bbc4d6-7ffb-4aaa-abd1-f5d497094822",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Victor Gollancz Ltd</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Publication</strong> Green juice loko pabst kombucha street pork belly yr.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7c7dd37a-636f-47ca-823b-f015ee1dd143",
            "display": "<section><p><strong>Author</strong> Jeanette Padberg</p>\n<p><strong>Title</strong> <i>Françoise Sagan</i></p>\n<p><strong>Publication</strong> Verso Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/15224146-2243-43cb-8ff6-52325722606a",
            "display": "<section><p><strong>Author</strong> Elois O'Reilly</p>\n<p><strong>Title</strong> Specimen Days</p>\n<p><strong>Publication</strong> Mark Batty Publisher.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a43a91db-f2c2-4465-9c98-036cedcaff1d",
            "display": "<section><p><strong>Author</strong> Lintilla, <strong>Original Title</strong> Vanity Fair</p>\n<p><strong>Translated into</strong> English by Gail Andrews</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/2a140bfb-4845-496d-a562-d557f1417572",
            "display": "<section><p><strong>Author</strong> Hactar, <strong>Original Title</strong> <i>The Mirror Crack'd from Side to Side</i></p>\n<p><strong>Translated into</strong> Greek by Majikthise</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7a7f0664-b071-4212-be5c-8b753663c8c4",
            "display": "<section><p><strong>Author</strong> Dan Streetmentioner, <strong>Original Title</strong> Quo Vadis</p>\n<p><strong>Translated into</strong> German by Dan Streetmentioner</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7740ac3c-1ac3-44b1-a3b7-2575864d8765",
      "date": "1969-05-07T00:00:00.000-04:00",
      "label": "07 May 1969 - Gusikowski, Blondell",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Gusikowski, Blondell"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/42bbcb58-4001-4427-b842-e8dbf64e860f",
            "display": "<section><p><strong>Theatre</strong>, Cronut <i>neutra scenester hella</i> fingerstache.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Trin Tragula</p>\n<p><strong>Place, Date</strong> Octaviochester, 25 March 1935</p>\n<p><strong>Director</strong> Zarquon</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/7f1e9cb4-ff6e-4d21-a501-51e3e0f6467b",
            "display": "<section><p><strong><i>Broop Kidron Thirteen</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4303be59-a52d-4419-a4b3-406bb76d181c",
            "display": "<section><p><strong>Dona Kiehn, 1928-1998</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/19a5e016-1350-4154-a1fe-bea485b61e80",
            "display": "<section><p><strong>Wan Bruen, 1929-1982</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/518b4fc4-5fea-4b27-b7d0-c3247cebdc21",
            "display": "<section><p><strong>Kakrafoon Kappa</strong></p>\n<p>Churchkey craft beer pourover taxidermy park.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/87a64fee-8739-4678-a862-f9432f8226c2",
            "display": "<section><p><strong><i>Easter Island</i></strong></p>\n<p>Migas microdosing pabst pickled.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/12fed19b-9d96-4b91-a16b-b53db05f4dcc",
      "date": "1969-09-09T00:00:00.000-04:00",
      "label": "09 September 1969 - Maggio, Jason",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Maggio, Jason"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0bfd2abf-e44a-4afc-bfb2-5aff36b64298",
            "display": "<section><p><strong>Rehearsal</strong>, Street franzen typewriter ramps coldpressed cronut disrupt helvetica.</p>\n<p><strong>Attended with</strong> The Dude and Fenchurch</p>\n<p><strong>Place, Date</strong> East Virgil, 06 September 1931</p>\n<p><strong>Director</strong> Rob McKenna</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0486dc68-bc71-4c03-ada0-23498850bbce",
            "display": "<section><p><strong><i>Dangrabad Beta</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d4bf80b2-bd55-456a-bdc7-55f750da08cc",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e2b3d9b8-f722-48d7-a21b-aedcbdb824e4",
            "display": "<section><p><strong>Title</strong> <i>All About Eve</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Krikkit One, North January</p>\n<p><strong>Date(s)</strong> 1934-04-15.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/eaad1bd2-6e69-4986-b0e4-810d65c57887",
            "display": "<section><p><strong>Title</strong> <i>The Godfather: Part II</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Starship Titanic, West Damienview</p>\n<p><strong>Date(s)</strong> 1926-11-20.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/067b9869-7a82-4a43-bc34-25cea19bf7a3",
            "display": "<section><p><strong>Author</strong> Alla Durgan</p>\n<p><strong>Title</strong> Look Homeward, Angel</p>\n<p><strong>Publication</strong> G-Unit Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4acd5405-b86a-4769-9449-58ba898f7b61",
            "display": "<section><p><strong>Author</strong> Bernardine Considine</p>\n<p><strong>Title</strong> An Evil Cradling</p>\n<p><strong>Publication</strong> Ballantine Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e59eed04-ea6b-4d76-8771-ed52c8fde10f",
            "display": "<section><p><strong>Author</strong> Buster Jenkins</p>\n<p><strong>Title</strong> A Time of Gifts</p>\n<p><strong>Publication</strong> Applewood Books.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/98573cfa-57d9-42d6-89f6-0c71b0bfd9f8",
      "date": "1973-04-29T00:00:00.000-05:00",
      "label": "29 April 1973 - Pouros, Coral",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Pouros, Coral"
      ],
      "destinations": [
        "Stavromula Beta"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7066288d-782d-422d-bc03-412150cc1f05",
            "display": "<section><p><strong>Composer</strong> JinJenz</p>\n<p><strong>Title</strong> <i>I Could Never Take The Place Of Your Man</i></p>\n<p><strong>Description</strong> Roof polaroid knausgaard banjo.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4f12e7e5-25c2-4d0c-a7dc-d7e2b7d8bc21",
            "display": "<section><p><strong>Karlene Lakin, 1923-1990</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5a333a73-74d2-4ea8-a8e3-7f5322524ad1",
            "display": "<section><p><strong>Pasquale Bogan, 1918-1971</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/be7ae905-16ff-4a06-92bb-0e0b7383b4c0",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1945-06-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ca89ccee-1934-41b5-b3ee-a5a683377f30",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1940-06-19.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/31d8770e-8554-4c27-9fcc-7a1eb2e89686",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1929-02-21.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2cf65767-a34d-416d-889f-ab02e516697a",
            "display": "<section><p><strong>Artist</strong> Marvin</p>\n<p><strong>Title</strong> <i>Partyman</i></p>\n<p><strong>Description</strong> Locavore <i>fanny pack kogi</i> gentrify.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
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
          "doc_count": 11
        },
        {
          "key": 0,
          "doc_count": 7
        },
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 2,
          "doc_count": 4
        },
        {
          "key": 3,
          "doc_count": 4
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
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1955-01-01T00:00:00.000Z",
          "key": -473385600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 3
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
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
          "doc_count": 2
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
          "doc_count": 2
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
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1975-01-01T00:00:00.000Z",
          "key": 157766400000,
          "doc_count": 3
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
          "doc_count": 1
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 2
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
          "doc_count": 2
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
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Eastern Murphy Academy",
          "doc_count": 14
        },
        {
          "key": "South Johnston",
          "doc_count": 14
        },
        {
          "key": "North Sanford Academy",
          "doc_count": 13
        },
        {
          "key": "South Maine Academy",
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
          "key": "italian",
          "doc_count": 12
        },
        {
          "key": "english",
          "doc_count": 7
        },
        {
          "key": "german",
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
}
~~~

