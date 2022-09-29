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
ETag: W/&quot;606700eb30b0f8d1a6a22725a22b3333&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e3634d4d-93b6-4105-b173-04bbd5dfc2c7
X-Runtime: 2.948298
Vary: Origin
Content-Length: 45215</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/25077407-1cc0-41a7-952b-49ab86c4a8c2",
      "date": "1959-11-30T00:00:00.000-05:00",
      "label": "30 November 1959 - Crist, Julian",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Crist, Julian"
      ],
      "destinations": [
        "<i>Belgium</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a98cac8d-1097-4aa1-a38e-fc8314f868c5",
            "display": "<section><p><strong>Jake Ward, 1924-1998</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3f978428-3946-4020-a1cc-6404d1f02cb7",
            "display": "<section><p><strong><i>Easter Island</i></strong></p>\n<p>Salvia pbrb raw denim drinking typewriter vinegar kombucha master.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/82d7f2ba-d9cb-47dd-998b-a3af7b235548",
            "display": "<section><p><strong>Title</strong> <i>Once Upon a Time in the West</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, New Joleneton</p>\n<p><strong>Date(s)</strong> 1934-12-30.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4aa51a8d-c448-4eb4-a07f-04444375bad9",
            "display": "<section><p><strong>Title</strong> Memento</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Billion Year Bunker, Deannaborough</p>\n<p><strong>Date(s)</strong> 1926-07-21.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/26aad186-b494-46b5-b03f-95bb98d485f9",
            "display": "<section><p><strong>Artist</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Nothing Compares 2 U</i></p>\n<p><strong>Description</strong> Taxidermy flannel mustache readymade blog postironic swag tryhard celiac.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/622f9343-1647-4ee6-9554-37a8ae2d271a",
            "display": "<section><p><strong>Artist</strong> Prak</p>\n<p><strong>Title</strong> Uptown</p>\n<p><strong>Description</strong> Slowcarb <i>lumbersexual thundercats williamsburg schlitz quinoa pabst</i> skateboard.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fd389a98-58c8-41f2-9fab-ea61c263294a",
            "display": "<section><p><strong>Artist</strong> Pasta Fasta</p>\n<p><strong>Title</strong> Sometimes It Snows In April</p>\n<p><strong>Description</strong> Art <i>party quinoa fingerstache</i> popup.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9bec1237-70b2-406c-8162-785d08910d5c",
      "date": "1960-08-26T00:00:00.000-04:00",
      "label": "26 August 1960 - Schamberger, Dwain",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Schamberger, Dwain"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0c1a6929-7ed8-4dd6-b74c-989f24e834d8",
            "display": "<section><p><strong>Theatre</strong>, Loko meggings humblebrag pourover.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Prostetnic Vogon Jeltz</p>\n<p><strong>Place, Date</strong> Hillsfort, 23 March 1948</p>\n<p><strong>Director</strong> Humma Kavula</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3944355a-af81-4e90-9a79-d073f5f969c6",
            "display": "<section><p><strong>Radio Broadcast</strong>, Pinterest kale chips intelligentsia mlkshk food truck postironic.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Arthur Philip Deodat</p>\n<p><strong>Place, Date</strong> East Enochchester, 21 July 1932</p>\n<p><strong>Director</strong> Gail Andrews</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/905aefda-e6bd-4b1a-bb7c-1d56289d86a3",
            "display": "<section><p><strong>Reading</strong>, Knausgaard jean shorts selvage craft beer leggings chartreuse chillwave lomo normcore.</p>\n<p><strong>Attended with</strong> Brandt and Eddie the Computer</p>\n<p><strong>Place, Date</strong> Danieltown, 20 March 1946</p>\n<p><strong>Director</strong> Effrafax of Wug</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d3cd2e2e-356a-4876-aada-da758d995442",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1923-04-17.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/299c3092-e400-4f5a-9243-b81e0bc54c72",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1959-03-07.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6321f6c9-8d48-4c8e-a410-dff94d36799c",
            "display": "<section><p><strong>Author</strong> Eccentrica Gallumbits, <strong>Original Title</strong> <i>The House of Mirth</i></p>\n<p><strong>Translated into</strong> Gaelic by Grunthos the Flatulent</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/99d6aef8-964c-4ee9-a78e-26924aa44d01",
            "display": "<section><p><strong>Artist</strong> Max Quordlepleen</p>\n<p><strong>Title</strong> 3 Chains o' Gold</p>\n<p><strong>Description</strong> Squid flexitarian bushwick literally art party slowcarb tattooed williamsburg.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/afa9378f-7860-4922-a719-a26c1e58ced9",
      "date": "1960-12-26T00:00:00.000-05:00",
      "label": "26 December 1960 - Lockman, Bobbi",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Lockman, Bobbi"
      ],
      "destinations": [
        "Barnard's Star"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3d040f2c-0e04-452d-a57a-c4d60d057b4a",
            "display": "<section><p><strong>Composer</strong> Agrajag</p>\n<p><strong>Title</strong> Tamborine</p>\n<p><strong>Description</strong> Hoodie franzen kale chips cronut.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/6eea6c94-a0a9-4219-ac91-7f24ff8bf5fe",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> <i>Gold</i></p>\n<p><strong>Description</strong> Aesthetic wes anderson disrupt dreamcatcher pbrb.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/b02c5267-4dfa-498e-a0fe-68d34806fcd9",
            "display": "<section><p><strong>Blagulon Kappa</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/2e3f1677-be0d-4f6b-b677-b87f9ddac13c",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b65d6f4b-c59e-4452-9718-6672f2f36a77",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> In a Dry Season</p>\n<p><strong>Translated into</strong> Arabic by Questular Rontok</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/940be239-e58b-4df5-8952-585f2069791a",
            "display": "<section><p><strong>Title</strong> Some Buried Caesar</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Date</strong> 1945-03-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/b324a6b6-88ce-43d9-801b-d232e9377f90",
            "display": "<section><p><strong>Title</strong> Of Mice and Men</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Date</strong> 1954-01-08.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/91989a0d-ee81-43ef-b7c1-cbb9ad3f3838",
      "date": "1962-06-11T00:00:00.000-04:00",
      "label": "11 June 1962 - Hansen, Angila",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Hansen, Angila"
      ],
      "destinations": [
        "Xaxis"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ff6d9dbe-dfe6-4719-affe-0ef5d2a29e1a",
            "display": "<section><p><strong>Composer</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> I Would Die 4 U</p>\n<p><strong>Description</strong> Bicycle rights pitchfork biodiesel wayfarers retro yolo crucifix hashtag offal.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7683d4f0-785b-45ad-8781-0751af2e1a34",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> <i>Thunder</i></p>\n<p><strong>Description</strong> Mumblecore 8bit popup yolo green juice meh.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ceaa980b-26ef-4f9a-874f-4fb2aac8bb97",
            "display": "<section><p><strong>Composer</strong> Gail Andrews</p>\n<p><strong>Title</strong> <i>319</i></p>\n<p><strong>Description</strong> Hoodie <i>five dollar toast celiac</i> skateboard.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/80ed6249-7c69-409e-a86c-4081a2d5c0fb",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1959-10-28.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a4337b7b-0dec-43ae-88c2-6f9cd7c9aff3",
            "display": "<section><p><strong>Author</strong> Lintilla, <strong>Original Title</strong> <i>Absalom, Absalom!</i></p>\n<p><strong>Translated into</strong> Icelandic by Trin Tragula</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/40a4dfd3-53e6-4596-879a-584adad74175",
            "display": "<section><p><strong>Author</strong> Majikthise, <strong>Original Title</strong> <i>Wildfire at Midnight</i></p>\n<p><strong>Translated into</strong> Japanese by Mr. Prosser</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3507b392-ae12-4325-bc8b-a29c71887b6a",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> Fair Stood the Wind for France</p>\n<p><strong>Translated into</strong> Spanish by Pasta Fasta</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/50de38e1-4419-43cc-a556-8f06e82b6262",
            "display": "<section><p><strong>Title</strong> Mr Standfast</p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Date</strong> 1925-02-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ab703824-508c-471d-bc22-9f3690f77828",
      "date": "1963-01-14T00:00:00.000-05:00",
      "label": "14 January 1963 - Lemke, Ernie",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Lemke, Ernie"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/51d6f8b2-631e-443d-93eb-a632254fcbc0",
            "display": "<section><p><strong>Composer</strong> Reg Nullify</p>\n<p><strong>Title</strong> <i>D.M.S.R</i></p>\n<p><strong>Description</strong> Kogi narwhal sriracha cred flexitarian butcher locavore pitchfork disrupt.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/b36fb65b-121f-4065-ac8c-9ea1f362f689",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a4189469-2be7-44a0-9e60-0db994b024f6",
            "display": "<section><p><strong><i>Norway</i></strong></p>\n<p>Put <i>a bird on it bespoke next level drinking semiotics direct trade keffiyeh</i> loko.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1740a3f3-af56-4924-b9d1-b5be933a055a",
            "display": "<section><p><strong>Author</strong> Pablo Crona I</p>\n<p><strong>Title</strong> Ah, Wilderness!</p>\n<p><strong>Publication</strong> Airiti Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d0feb651-81e7-4b26-905b-bf255fd9e304",
            "display": "<section><p><strong>Author</strong> Pearly Hilpert</p>\n<p><strong>Title</strong> An Evil Cradling</p>\n<p><strong>Publication</strong> Carnegie Mellon University Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/65c8dcdc-226b-4f1d-8266-1896cd92b5aa",
            "display": "<section><p><strong>Author</strong> Benton Mayert</p>\n<p><strong>Title</strong> Tender Is the Night</p>\n<p><strong>Publication</strong> Kodansha.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8ccec2b9-829d-4b1a-a0be-6936dfbdf9d7",
      "date": "1966-01-29T00:00:00.000-05:00",
      "label": "29 January 1966 - Littel, Freeman",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Littel, Freeman"
      ],
      "destinations": [
        "<i>Belgium</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6cf70305-e234-41c7-90e9-c1fabe2e77b1",
            "display": "<section><p><strong>Theatre</strong>, Plaid fingerstache hoodie jean shorts pork belly iphone locavore five dollar toast.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Majikthise</p>\n<p><strong>Place, Date</strong> Port Ronald, 16 September 1961</p>\n<p><strong>Director</strong> Hotblack Desiato</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/55a08afb-13a7-4391-985d-944b6f5ba963",
            "display": "<section><p><strong>Reading</strong>, Park <i>listicle locavore hashtag</i> gastropub.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Vroomfondel</p>\n<p><strong>Place, Date</strong> New Juliusside, 05 October 1962</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6f10b907-cd5d-4a12-b7ff-5f7d7c258114",
            "display": "<section><p><strong>Reading</strong>, Skateboard <i>art party thundercats churchkey tacos salvia next level tattooed deep</i> v.</p>\n<p><strong>Attended with</strong> Donny and Hillman Hunter</p>\n<p><strong>Place, Date</strong> Agustinview, 14 August 1968</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a626b5d6-7d4d-4e95-8475-c2060f075ba5",
            "display": "<section><p><strong>Composer</strong> JinJenz</p>\n<p><strong>Title</strong> <i>3 Chains o' Gold</i></p>\n<p><strong>Description</strong> Postironic next level letterpress lomo squid heirloom.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/92851689-840d-43b8-a4d5-91a93721a6c7",
            "display": "<section><p><strong><i>Boston</i></strong></p>\n<p>Xoxo pickled aesthetic churchkey.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f7e9243a-5760-4e86-be0a-1e46f2f5f9ce",
            "display": "<section><p><strong>Seventh Galaxy of Light and Ingenuity</strong></p>\n<p>Narwhal muggle magic kogi pickled cred.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/55e1ff13-836c-405a-91fb-1c5e32146229",
            "display": "<section><p><strong>Artist</strong> Barry Manilow</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Coldpressed <i>banh mi squid knausgaard</i> twee.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/91cffe7c-17a6-4af4-a4d3-516dda7ca5ea",
            "display": "<section><p><strong>Artist</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> <i>Play In The Sunshine</i></p>\n<p><strong>Description</strong> Vinegar <i>lofi ugh cliche popup</i> dreamcatcher.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b72d25f9-860e-43f2-a18e-5a6a4d002fc6",
            "display": "<section><p><strong>Artist</strong> Arthur Dent</p>\n<p><strong>Title</strong> Gold</p>\n<p><strong>Description</strong> Goth beard semiotics leggings banjo skateboard phlogiston park pourover.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2f8ba4c8-7b32-4766-ba5e-61aa387948b7",
      "date": "1966-07-26T00:00:00.000-04:00",
      "label": "26 July 1966 - Heaney, Rey",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Heaney, Rey"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3a9b3fa7-be3c-45cf-9fc8-525b7a5974bd",
            "display": "<section><p><strong>Reading</strong>, Salvia sustainable goth hashtag artisan sriracha.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Majikthise</p>\n<p><strong>Place, Date</strong> Caseyshire, 02 July 1972</p>\n<p><strong>Director</strong> Grunthos the Flatulent</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/db1c9151-ba9c-4f2c-842f-0bbd1f72adb8",
            "display": "<section><p><strong><i>Fallia</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/26cda0f8-b4bb-4581-b176-34a5b06817ec",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1927-08-01.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4be72553-328e-4bad-add3-f6baac10f0da",
            "display": "<section><p><strong>Author</strong> Teodoro Cormier</p>\n<p><strong>Title</strong> <i>The Glory and the Dream</i></p>\n<p><strong>Publication</strong> University of California Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/14ef2d30-4601-4221-a2be-c7c2b14f6c8f",
      "date": "1970-03-20T00:00:00.000-05:00",
      "label": "20 March 1970 - Grimes, Grover",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Grimes, Grover"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/a2f3cd0e-d57a-4190-a5b4-23e5f76568f6",
            "display": "<section><p><strong>Reading</strong>, Fixie listicle meditation quinoa bitters slowcarb.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Vroomfondel</p>\n<p><strong>Place, Date</strong> Demetriceside, 24 June 1942</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/fd9cad4c-9f95-4504-9ed1-9dbb38c369fb",
            "display": "<section><p><strong>Theatre</strong>, Vice leggings cardigan ennui bicycle rights jean shorts blue bottle.</p>\n<p><strong>Attended with</strong> Karl Hungus and Colin the Security Robot</p>\n<p><strong>Place, Date</strong> Port Alonzoburgh, 29 June 1952</p>\n<p><strong>Director</strong> Prostetnic Vogon Jeltz</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/97c336d5-b113-47a1-b711-d98cdb27bb4f",
            "display": "<section><p><strong>Radio Broadcast</strong>, Messenger <i>bag sartorial tattooed bicycle</i> rights.</p>\n<p><strong>Attended with</strong> Donny and Trillian</p>\n<p><strong>Place, Date</strong> Johnshaven, 29 September 1943</p>\n<p><strong>Director</strong> Barry Manilow</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/89e83245-33e7-4744-aa42-0b261cc75950",
            "display": "<section><p><strong>Composer</strong> Zarquon</p>\n<p><strong>Title</strong> <i>Starfish And Coffee</i></p>\n<p><strong>Description</strong> Phlogiston <i>keffiyeh paleo cliche schlitz pinterest godard five dollar</i> toast.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5d0f04d0-5b71-4971-96b7-fc07ce67d701",
            "display": "<section><p><strong>Composer</strong> Hactar</p>\n<p><strong>Title</strong> <i>Housequake</i></p>\n<p><strong>Description</strong> Humblebrag disrupt street forage pug cronut polaroid.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/50b2bf05-74f8-4838-a4cc-c26e47fa75b6",
            "display": "<section><p><strong>Composer</strong> Grunthos the Flatulent</p>\n<p><strong>Title</strong> <i>Take Me With U</i></p>\n<p><strong>Description</strong> Meditation <i>umami small batch distillery blue</i> bottle.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/13459c1c-7eae-4f3f-b30c-c986a06ff02b",
            "display": "<section><p><strong><i>Bartledan</i></strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e5b46890-3c3a-4514-816d-f82ec72da314",
            "display": "<section><p><strong>Title</strong> <i>Edna O'Brien</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Lintilla</p>\n<p><strong>Date</strong> 1962-04-10.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ea7eab53-d53e-4f59-a32b-b41b2af63ce9",
            "display": "<section><p><strong>Title</strong> Antic Hay</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Date</strong> 1952-01-10.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/0c3c7db4-068e-4f26-a5a1-b6aec467407a",
            "display": "<section><p><strong>Title</strong> Cabbages and Kings</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Date</strong> 1970-11-07.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/11370dee-52c6-4699-9247-a2228961c7f8",
      "date": "1970-05-19T00:00:00.000-04:00",
      "label": "19 May 1970 - O'Hara, Selene",
      "language": "english",
      "volume": 3,
      "recipients": [
        "O'Hara, Selene"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/dda5197b-fe09-4685-9a2d-a1d597389c80",
            "display": "<section><p><strong>Devon Beahan, 1905-1988</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e7fa40ed-a34e-4ec6-91f2-208a55d06845",
            "display": "<section><p><strong>Jeffrey Considine, 1923-1971</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/de843bdd-ebe3-4648-b487-ff30178c7c93",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Flame Tree Publishing</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Publication</strong> Kale chips slow-carb blue bottle vhs williamsburg.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/2906e19a-e04d-48de-a73a-65973fb61666",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Harper &amp; Brothers</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Publication</strong> Roof bitters park skateboard.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/be22247d-8efc-4aa3-81b8-9c03e2a910d4",
            "display": "<section><p><strong>Author</strong> Prak, <strong>Original Title</strong> <i>The Man Within</i></p>\n<p><strong>Translated into</strong> Danish by Max Quordlepleen</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/670ebb20-1852-4134-b71c-69cf199ca426",
            "display": "<section><p><strong>Author</strong> Emily Saunders, <strong>Original Title</strong> Françoise Sagan</p>\n<p><strong>Translated into</strong> Marathi by Magrathean sperm whale</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3c99dc64-05a5-407a-a723-80ae81ae2391",
            "display": "<section><p><strong>Artist</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> <i>Automatic</i></p>\n<p><strong>Description</strong> Neutra <i>bespoke twee mumblecore master wayfarers</i> microdosing.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a984b3aa-bfe6-4e6f-b2e3-c0995c9245a3",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> She's Always In My Hair</p>\n<p><strong>Description</strong> Churchkey <i>pickled cred jean shorts squid whatever lomo</i> readymade.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/199fde7b-e0f2-49e4-8023-79ed9fe12fe2",
      "date": "1970-12-26T00:00:00.000-05:00",
      "label": "26 December 1970 - Purdy, Norris",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Purdy, Norris"
      ],
      "destinations": [
        "Arthur Dent's house"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/68d9f565-9887-4491-96f8-045bc12af429",
            "display": "<section><p><strong>Theatre</strong>, Knausgaard <i>chillwave farmtotable sriracha meggings jean shorts</i> fixie.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Mr. Prosser</p>\n<p><strong>Place, Date</strong> East Jerold, 12 April 1948</p>\n<p><strong>Director</strong> Rob McKenna</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f293f2d1-c545-4907-8fb6-0685969c7dd5",
            "display": "<section><p><strong>Reading</strong>, Photo booth polaroid kombucha forage sartorial mustache asymmetrical cornhole 3 wolf moon.</p>\n<p><strong>Attended with</strong> Donny and Prak</p>\n<p><strong>Place, Date</strong> Lake Garyville, 03 January 1929</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1b4ab440-c019-4622-8d82-1db50dbbcd28",
            "display": "<section><p><strong>Leroy Ankunding, 1926-1983</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/66a9790a-0dd8-48f6-9690-fec296a0b3da",
            "display": "<section><p><strong>Tameika Mertz, 1900-1997</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/addc9eec-ac15-4200-95d8-b477a0a33648",
            "display": "<section><p><strong>Javier Stroman, 1902-1972</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/362d4e37-28b5-4233-929e-25ac3fa49d02",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1935-04-29.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/057f907d-6486-4478-aaae-ad8ef443ec23",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1946-12-10.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/8e68cfbc-1833-4c0f-9b4f-45d8c39abc9d",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1949-02-27.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/58d20180-7186-48d6-852b-eab2b5721542",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>Oberon Books</i></p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Publication</strong> Cray gastropub forage schlitz.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/13c7504d-cf56-4ba5-a6e5-cb3e7f4de6c8",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Harry N. Abrams, Inc.</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Publication</strong> Knausgaard food truck pabst readymade bespoke gentrify pbr&amp;b raw denim cray.</p></section>"
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
          "key": 3,
          "doc_count": 11
        },
        {
          "key": 4,
          "doc_count": 7
        },
        {
          "key": 0,
          "doc_count": 5
        },
        {
          "key": 1,
          "doc_count": 5
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
          "doc_count": 2
        },
        {
          "key_as_string": "1954-01-01T00:00:00.000Z",
          "key": -504921600000,
          "doc_count": 1
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
          "doc_count": 0
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
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
          "doc_count": 1
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
          "doc_count": 2
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
          "doc_count": 3
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
          "doc_count": 0
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
          "doc_count": 1
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
          "doc_count": 0
        },
        {
          "key_as_string": "1983-01-01T00:00:00.000Z",
          "key": 410227200000,
          "doc_count": 1
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
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "South O'Conner",
          "doc_count": 19
        },
        {
          "key": "Western Florida University",
          "doc_count": 12
        },
        {
          "key": "Stiedemann Institute",
          "doc_count": 11
        },
        {
          "key": "Northern Stracke College",
          "doc_count": 8
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
          "doc_count": 12
        },
        {
          "key": "english",
          "doc_count": 10
        },
        {
          "key": "italian",
          "doc_count": 5
        },
        {
          "key": "french",
          "doc_count": 3
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
}</pre>
