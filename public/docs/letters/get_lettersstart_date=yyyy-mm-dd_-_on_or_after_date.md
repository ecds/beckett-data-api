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

<pre>GET /letters?start_date=1969-05-04</pre>

#### Query Parameters

<pre>start_date: 1969-05-04</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1969-05-04&gt;; rel=&#39;self&#39;
X-Total-Count: 18
Content-Type: application/json; charset=utf-8
ETag: W/&quot;22f1d5057984a76c1910e38cf4f6007f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ad5cb95b-281f-4016-b6de-68b0cd72dcef
X-Runtime: 2.779156
Vary: Origin
Content-Length: 88501</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/8f51493e-f0cc-46a9-b288-4c8bbce3143b",
      "date": "1969-05-04T00:00:00.000-04:00",
      "label": "04 May 1969 - Gorczany, Tom",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Gorczany, Tom"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3991d672-e0fc-4656-a09e-713f61bcfb7b",
            "display": "<section><p><strong>Sesefras Magna</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/bf4f6491-e340-4780-a63e-9c7d4d9e7135",
            "display": "<section><p><strong><i>Broop Kidron Thirteen</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/016347ea-24ff-4991-9c7b-839493992fc9",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1966-10-03.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0f872145-b95a-4322-966f-a33ca9463111",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1938-04-29.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9914bbdb-5343-43e8-8922-4f45bed1e9ad",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1965-05-24.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/27691897-7271-42f6-b666-ddabc971319d",
            "display": "<section><p><strong>Author</strong> Elvis, <strong>Original Title</strong> The Green Bay Tree</p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Deep Thought</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ab835fff-d624-4593-afce-9b6a2fabcc85",
            "display": "<section><p><strong>Author</strong> Eddie the Computer, <strong>Original Title</strong> That Hideous Strength</p>\n<p><strong>Translated into</strong> Hebrew by Mr. Prosser</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/07ebc781-5a04-42f6-9301-7bfef66eb647",
            "display": "<section><p><strong>Artist</strong> Trillian</p>\n<p><strong>Title</strong> <i>Girls &amp; Boys</i></p>\n<p><strong>Description</strong> Banh mi sartorial crucifix beard williamsburg cornhole brooklyn.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/01217b56-f57a-488d-95e3-ba4398c0a25d",
            "display": "<section><p><strong>Artist</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> Under The Cherry Moon</p>\n<p><strong>Description</strong> Deep <i>v yolo cornhole</i> lomo.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/70eed16e-f801-44ef-87d8-b62b2309728b",
      "date": "1969-12-21T00:00:00.000-05:00",
      "label": "21 December 1969 - Leffler, Ronny",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Leffler, Ronny"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/33056479-8d5f-4231-87c7-90d478d3ea85",
            "display": "<section><p><strong>Composer</strong> Majikthise</p>\n<p><strong>Title</strong> <i>When 2 R In Love</i></p>\n<p><strong>Description</strong> Loko <i>forage squid listicle</i> master.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6698e4fb-4d25-444c-9320-448724e21dab",
            "display": "<section><p><strong>Burphon XII</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/373efbe7-1226-4bad-92e9-599dbdd30edf",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4c24e130-12d7-428b-9553-338818f9cfc6",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>University of California Press</i></p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Publication</strong> Tofu sustainable tote bag 8-bit put a bird on it.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9b9dd3de-11d6-4de6-87df-eb3bd896259d",
            "display": "<section><p><strong>Author</strong> Page Stiedemann</p>\n<p><strong>Title</strong> <i>A Monstrous Regiment of Women</i></p>\n<p><strong>Publication</strong> Salt Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/77df6abf-dd0d-4605-9971-b8e5e96af0ef",
            "display": "<section><p><strong>Author</strong> Reynaldo Wisozk</p>\n<p><strong>Title</strong> Françoise Sagan</p>\n<p><strong>Publication</strong> Tate Publishing &amp; Enterprises.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3fcf238a-3664-4cb0-a746-46bcb27864e3",
      "date": "1972-10-31T00:00:00.000-05:00",
      "label": "31 October 1972 - Lubowitz, Shondra",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Lubowitz, Shondra"
      ],
      "destinations": [
        "<i>Ibiza</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c430af6a-f1f0-4c45-a9be-7b69764d66c2",
            "display": "<section><p><strong>Vito Bruen, 1900-1984</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f5e9b5e6-ec4e-4692-8b2b-c056a9508c6e",
            "display": "<section><p><strong>Title</strong> Gone Girl</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Bistromath, Port Leandra</p>\n<p><strong>Date(s)</strong> 1971-12-29.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ec8673ff-9eef-47e8-9737-11f2dc13836a",
            "display": "<section><p><strong>Title</strong> <i>Inception</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Bistromath, South Jackelinefurt</p>\n<p><strong>Date(s)</strong> 1961-03-16.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a34f22db-5d97-4804-aa1d-f18a097d5cef",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1946-02-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c697582e-1805-4c67-9911-20fb971c1396",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1936-06-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4cf7e2c9-9f7e-4e51-bd62-3ffd6f3891f0",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1949-03-08.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d96f93b0-f117-43f3-848a-52464a19f4a1",
            "display": "<section><p><strong>Author</strong> Zaphod Beeblebrox, <strong>Original Title</strong> <i>The Proper Study</i></p>\n<p><strong>Translated into</strong> Finnish by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b55928b4-7de0-4248-9d36-d5f77d3f2364",
            "display": "<section><p><strong>Author</strong> Hillman Hunter, <strong>Original Title</strong> <i>East of Eden</i></p>\n<p><strong>Translated into</strong> Italian by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c3b21b43-d216-488f-88e8-a8117b37d47f",
      "date": "1973-12-18T00:00:00.000-05:00",
      "label": "18 December 1973 - Stroman, Elias",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Stroman, Elias"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e717e411-e26a-4a81-9d28-4e7f9f991fa0",
            "display": "<section><p><strong>Bart Willms, 1912-1988</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/7391e296-5155-42ee-ae04-ebbc40b4cdfd",
            "display": "<section><p><strong>Roy Kilback, 1911-1971</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/fa548f96-e402-4a4d-8d65-fe9192ab3cc3",
            "display": "<section><p><strong>Otto Walter, 1923-1988</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/91616a0d-d2ff-44c0-b898-fbb3a69506c1",
            "display": "<section><p><strong>Title</strong> The Pianist</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Vogon Constructor Fleet, Stanleyview</p>\n<p><strong>Date(s)</strong> 1948-12-30.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7083c23d-2eb3-4439-acf9-3d8130f4f63f",
            "display": "<section><p><strong>Title</strong> <i>The Bourne Ultimatum</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> RW6, Seanland</p>\n<p><strong>Date(s)</strong> 1925-04-19.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b90e1f83-ba35-4b66-bd93-ae7a57c6737f",
            "display": "<section><p><strong>Title</strong> <i>The Dark Knight Rises</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Bistromath, Mooreburgh</p>\n<p><strong>Date(s)</strong> 1951-08-25.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a8688930-caa1-4b1e-a09a-5aaf2c2b90d1",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> HarperCollins</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Publication</strong> Fanny pack tattooed aesthetic gentrify.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5ec92922-4d3a-4ed8-a48a-ce2d9bc23957",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> <i>Allen Ltd</i></p>\n<p><strong>Translator</strong> Galaxia Woonbeam</p>\n<p><strong>Publication</strong> Forage slow-carb muggle magic retro.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/37f278fc-3fc1-4c59-82d3-9b641f59fc7d",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Jaico Publishing House</i></p>\n<p><strong>Translator</strong> Tricia McMillan</p>\n<p><strong>Publication</strong> Hella art party 90's mlkshk fashion axe food truck pabst asymmetrical ramps.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c7871a26-b71c-4bc4-a5e0-873a497d1011",
            "display": "<section><p><strong>Author</strong> Jesus Hudson DDS</p>\n<p><strong>Title</strong> Bury My Heart at Wounded Knee</p>\n<p><strong>Publication</strong> Cisco Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fe374c6e-b479-4a25-a489-eb8cf65ad9ae",
            "display": "<section><p><strong>Author</strong> Amb. Jenice Bauch</p>\n<p><strong>Title</strong> <i>For a Breath I Tarry</i></p>\n<p><strong>Publication</strong> Hamish Hamilton.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e57452e7-82a1-43e3-98ff-ddff45f8c0e8",
            "display": "<section><p><strong>Author</strong> Zana Lubowitz</p>\n<p><strong>Title</strong> <i>The Glory and the Dream</i></p>\n<p><strong>Publication</strong> Happy House.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/279d1b14-30bb-4a94-97f7-e568f2d545b7",
      "date": "1974-04-24T00:00:00.000-04:00",
      "label": "24 April 1974 - Steuber, Tova",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Steuber, Tova"
      ],
      "destinations": [
        "<i>Arthur Dent's house</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e4fb0a3a-cbb9-4d5c-8854-6a7b2f3cc0ce",
            "display": "<section><p><strong>Composer</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> I Could Never Take The Place Of Your Man</p>\n<p><strong>Description</strong> Muggle <i>magic small batch tumblr</i> shoreditch.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8ddd3305-9e7b-4dbb-be87-b4fccb6efe07",
            "display": "<section><p><strong>Allegra Beahan, 1908-1972</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/cc8b30b1-d715-4042-a25c-ff60c21abf11",
            "display": "<section><p><strong>Author</strong> Consuelo Boyle</p>\n<p><strong>Title</strong> That Good Night</p>\n<p><strong>Publication</strong> Sams Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ffab8ffb-8d93-4eac-92b8-265c384fb7d6",
            "display": "<section><p><strong>Author</strong> Tori Hayes</p>\n<p><strong>Title</strong> <i>Butter In a Lordly Dish</i></p>\n<p><strong>Publication</strong> Holt McDougal.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1af3d951-1071-4b23-a2ae-2813e766f962",
            "display": "<section><p><strong>Title</strong> <i>Shall not Perish</i></p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1926-01-20.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b8e5f22f-3773-44cb-bb63-7df76f0f0833",
      "date": "1974-11-06T00:00:00.000-05:00",
      "label": "06 November 1974 - Hand, Edison",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Hand, Edison"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e51252c6-d41a-4c88-8018-75c4d838f6ba",
            "display": "<section><p><strong>Theatre</strong>, Vinegar selfies carry wes anderson beard heirloom 1 chicharrones.</p>\n<p><strong>Attended with</strong> The Dude and Mr. Prosser</p>\n<p><strong>Place, Date</strong> Corneliusville, 18 March 1972</p>\n<p><strong>Director</strong> Pizpot Gargravarr</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ebcc5e30-a9ed-471a-9e70-c7d64157a847",
            "display": "<section><p><strong>Radio Broadcast</strong>, Bitters <i>sartorial you probably havent heard of them bicycle rights forage meh truffaut</i> letterpress.</p>\n<p><strong>Attended with</strong> Donny and Zarniwoop</p>\n<p><strong>Place, Date</strong> Kuhnstad, 26 April 1938</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/75c9922a-31b7-4576-856f-ed8fc6a3d7ef",
            "display": "<section><p><strong>Rehearsal</strong>, Lofi literally forage vhs cleanse intelligentsia actually small batch synth.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Eccentrica Gallumbits</p>\n<p><strong>Place, Date</strong> Jacobsfort, 16 July 1969</p>\n<p><strong>Director</strong> Roosta</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/d31fed0b-6f42-466d-9ace-bf434d857164",
            "display": "<section><p><strong>Sqornshellous Zeta</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/41960868-b0f9-4cd6-ac8c-d3e244f30479",
            "display": "<section><p><strong><i>Kria</i></strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cdaa2454-9a18-47e5-9616-1b9e9d2d0df7",
            "display": "<section><p><strong>Broop Kidron 13</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/261f50f4-5df0-46fb-8662-9e1f908682ee",
            "display": "<section><p><strong>Casey Harvey, 1914-1987</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8ad5f9da-8911-4be1-b70f-1ba623e38f49",
            "display": "<section><p><strong>Title</strong> <i>The Moon by Night</i></p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Date</strong> 1950-04-02.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a769ea52-512e-495b-997a-8ee533979a70",
            "display": "<section><p><strong>Title</strong> Dying of the Light</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Date</strong> 1933-12-15.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1e4a80c0-a6be-4af7-b20e-e5f28d675ee8",
            "display": "<section><p><strong>Title</strong> <i>Quo Vadis</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Date</strong> 1935-07-10.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c8c3ed85-bedf-4098-bf46-3399d793d71b",
      "date": "1975-05-23T00:00:00.000-04:00",
      "label": "23 May 1975 - Mann, Bee",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Mann, Bee"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/31916d0b-9595-4c73-ab3a-35e2fd31c95c",
            "display": "<section><p><strong>Theatre</strong>, Occupy whatever diy tryhard portland art party blue bottle vegan.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Random Dent</p>\n<p><strong>Place, Date</strong> North Gordonberg, 18 February 1971</p>\n<p><strong>Director</strong> Paula Nancy Millstone Jennings</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f9e3cce7-dfbf-4426-a679-4aec7fea8b10",
            "display": "<section><p><strong>Reading</strong>, Knausgaard shabby chic beard green juice typewriter xoxo literally.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Humma Kavula</p>\n<p><strong>Place, Date</strong> South Tracy, 29 November 1962</p>\n<p><strong>Director</strong> Gag Halfrunt</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7fcdc69c-8fe4-4fef-8d0d-ceebc0095a10",
            "display": "<section><p><strong>Title</strong> <i>Eternal Sunshine of the Spotless Mind</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Marvinhaven</p>\n<p><strong>Date(s)</strong> 1966-02-06.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/d26d58da-b655-4b2c-af8c-3a4fbebfb99b",
            "display": "<section><p><strong>Title</strong> Groundhog Day</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Starship Titanic, East Westonview</p>\n<p><strong>Date(s)</strong> 1931-11-24.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b30d61e8-3600-4aa7-b70a-4f93fb3010cb",
            "display": "<section><p><strong>Title</strong> <i>Sunset Blvd.</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Billion Year Bunker, Lake Bennieside</p>\n<p><strong>Date(s)</strong> 1947-09-17.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b4ab3597-e3ab-41a1-9279-87af1c2b00ac",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1941-12-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ff469dfa-e1dc-4c3f-9c49-44b345301c56",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1939-07-31.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b8bc7364-5aaa-48e5-88e4-86c083c9a936",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1932-08-16.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4b9a2b32-00f3-4a39-ad28-29a5553e4a1f",
            "display": "<section><p><strong>Author</strong> Vernetta Pfannerstill</p>\n<p><strong>Title</strong> Time To Murder And Create</p>\n<p><strong>Publication</strong> Fearless Books.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e84b5e14-520f-4901-a57d-2e6e0821596a",
      "date": "1977-06-19T00:00:00.000-04:00",
      "label": "19 June 1977 - Ortiz, Anton",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Ortiz, Anton"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/7cfaf687-651b-451f-aa3c-9675cc411763",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/03432077-71f7-45db-ad64-2b3e40d6d642",
            "display": "<section><p><strong>Title</strong> <i>The Sting</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Billion Year Bunker, Angilatown</p>\n<p><strong>Date(s)</strong> 1964-02-28.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/9452e39d-dd00-4395-83b1-6dbe3f0a9421",
            "display": "<section><p><strong>Title</strong> Eternal Sunshine of the Spotless Mind</p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Krikkit One, Goodwinton</p>\n<p><strong>Date(s)</strong> 1953-10-07.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/03b6d37c-e74b-48dc-8e05-eb3b1d62dc3c",
            "display": "<section><p><strong>Title</strong> <i>All About Eve</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Krikkit One, East Minh</p>\n<p><strong>Date(s)</strong> 1944-08-12.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/3f06fbfc-00d8-486e-a678-f5a4186f9c6d",
            "display": "<section><p><strong>Columbia</strong></p>\n<p><strong>1925-07-18.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6629673f-db2e-49a0-ae1f-06c968ee09c8",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1928-05-16.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/61178df8-6035-442f-b19d-dedb14dec1f9",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1953-03-25.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/6396cb5a-f279-492f-bbff-a9a704caaee4",
            "display": "<section><p><strong>Author</strong> Emmanuel Howell</p>\n<p><strong>Title</strong> <i>Noli Me Tangere</i></p>\n<p><strong>Publication</strong> Imperial War Museum.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8c56f182-7cb8-44cc-a844-fb2354b5dd52",
            "display": "<section><p><strong>Author</strong> Amb. Jame Huels</p>\n<p><strong>Title</strong> <i>Edna O'Brien</i></p>\n<p><strong>Publication</strong> Ian Allan Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b44658a8-1ca0-4fb7-a4ff-9f8b2ffa941a",
            "display": "<section><p><strong>Author</strong> Tiffany Jenkins</p>\n<p><strong>Title</strong> <i>Have His Carcase</i></p>\n<p><strong>Publication</strong> University of Nebraska Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/89b782f0-534c-4847-a0d3-3748d39297a9",
      "date": "1978-09-07T00:00:00.000-04:00",
      "label": "07 September 1978 - Marvin, Alphonse",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Marvin, Alphonse"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2da15626-5237-42bf-9b38-c73579367ff1",
            "display": "<section><p><strong>Rehearsal</strong>, Ugh <i>blog five dollar toast jean shorts marfa waistcoat</i> artisan.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Zarniwoop</p>\n<p><strong>Place, Date</strong> Port Lindaton, 30 May 1938</p>\n<p><strong>Director</strong> Trillian</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3142d78a-2482-43e0-9c8c-4f17991c4ea7",
            "display": "<section><p><strong>Radio Broadcast</strong>, Kinfolk jean shorts photo booth keffiyeh wes anderson drinking yr 8bit.</p>\n<p><strong>Attended with</strong> The Dude and Prostetnic Vogon Kwaltz</p>\n<p><strong>Place, Date</strong> Hudsonton, 22 August 1941</p>\n<p><strong>Director</strong> Trin Tragula</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2dd02441-6902-4654-951b-14f34570b998",
            "display": "<section><p><strong>Theatre</strong>, Dreamcatcher <i>bespoke butcher viral banh mi bushwick lomo</i> marfa.</p>\n<p><strong>Attended with</strong> Brandt and Barry Manilow</p>\n<p><strong>Place, Date</strong> Lake Lynnhaven, 31 December 1943</p>\n<p><strong>Director</strong> Genghis Khan</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c1f9b617-22c3-4533-95fb-f8736e95c4d1",
            "display": "<section><p><strong>Nubia Prosacco, 1926-1985</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c0f202cb-77a7-41b6-ab2e-98ec8fa3f265",
            "display": "<section><p><strong>Alva Prosacco, 1904-1985</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cbc18dd6-ca34-4cdf-bded-9e206c4201e5",
            "display": "<section><p><strong>Lorraine Bednar, 1912-1992</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/55e73806-8a09-4206-aa58-f5b2611ab76a",
            "display": "<section><p><strong>Title</strong> <i>The Big Lebowski</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Billion Year Bunker, Morissettechester</p>\n<p><strong>Date(s)</strong> 1926-10-01.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f7ca09a2-5e89-4098-8b07-9335b8ef774f",
            "display": "<section><p><strong>Title</strong> <i>The Gold Rush</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> RW6, East Jc</p>\n<p><strong>Date(s)</strong> 1961-11-06.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7bce8b6a-31c0-4d60-bfe8-507ad4bad42d",
            "display": "<section><p><strong>Title</strong> Blade Runner</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Billion Year Bunker, North Martinview</p>\n<p><strong>Date(s)</strong> 1946-10-04.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d0fd7525-c807-495f-b703-a37cc218e8bb",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>G-Unit Books</i></p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Tofu 90's irony slow-carb banh mi pbr&amp;b wolf.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/217c20fa-7564-456e-a597-4d702d45fc47",
      "date": "1979-01-05T00:00:00.000-05:00",
      "label": "05 January 1979 - Bradtke, Jasper",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Bradtke, Jasper"
      ],
      "destinations": [
        "<i>Preliumtarn</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/f5b2706a-fece-4da8-8d28-d73053875b0f",
            "display": "<section><p><strong>Composer</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> International Lover</p>\n<p><strong>Description</strong> Franzen <i>quinoa squid taxidermy craft beer</i> 1.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/04ec707f-81df-4484-ac87-4a895b83dc1b",
            "display": "<section><p><strong>Composer</strong> Vroomfondel</p>\n<p><strong>Title</strong> <i>I Love U, but I Don't Trust U Anymore</i></p>\n<p><strong>Description</strong> Pork belly brunch tacos jean shorts occupy pitchfork churchkey sustainable gentrify.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/db80c4fc-07ba-4f64-861d-6e4925559a9d",
            "display": "<section><p><strong>Composer</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> Paisley Park</p>\n<p><strong>Description</strong> Umami <i>deep v heirloom migas vegan farmtotable vhs</i> organic.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/bf22ac8e-81ac-4c86-b379-d655c4e11dc5",
            "display": "<section><p><strong>Title</strong> <i>La La Land</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Starship Titanic, West Enochbury</p>\n<p><strong>Date(s)</strong> 1931-01-12.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/95f95af5-3f6c-4051-a01d-86a58ef360c4",
            "display": "<section><p><strong>Title</strong> <i>Star Wars: Episode I – The Phantom Menace</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> RW6, Wymantown</p>\n<p><strong>Date(s)</strong> 1924-02-07.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3cc0f540-9a1c-465c-805c-6cf547bbcd8d",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Charles Scribner's Sons</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Publication</strong> Xoxo whatever knausgaard hammock food truck disrupt.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/07584cde-3dd7-4d76-b9eb-b799cb14bf8a",
            "display": "<section><p><strong>Title</strong> The Far-Distant Oxus</p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Date</strong> 1958-04-30.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/810a2b1b-27fc-4b3c-a603-42b611c9aced",
            "display": "<section><p><strong>Title</strong> <i>A Catskill Eagle</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Date</strong> 1935-09-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/96ed876d-4763-4a80-aad8-903388dc1b97",
      "date": "1979-01-19T00:00:00.000-05:00",
      "label": "19 January 1979 - Tillman, Donovan",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Tillman, Donovan"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/8f9a4c9f-6a5f-415b-916e-6acbcb808d86",
            "display": "<section><p><strong>Reading</strong>, Sartorial <i>yr meggings yolo meh authentic</i> popup.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Lintilla</p>\n<p><strong>Place, Date</strong> Hellershire, 27 July 1971</p>\n<p><strong>Director</strong> Loonquawl</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f90c863c-9664-405c-bbd5-61c9dcb45b0c",
            "display": "<section><p><strong>Reading</strong>, Wes anderson carry typewriter sriracha.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Eddie the Computer</p>\n<p><strong>Place, Date</strong> New Thanhhaven, 02 January 1926</p>\n<p><strong>Director</strong> Garkbit</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/604357d7-8aff-463f-bb9d-d7f8788e3237",
            "display": "<section><p><strong>Composer</strong> Pasta Fasta</p>\n<p><strong>Title</strong> <i>I Wish U Heaven</i></p>\n<p><strong>Description</strong> Distillery selvage asymmetrical messenger bag.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/68c6b91d-d695-4442-a61e-2925e875d63e",
            "display": "<section><p><strong>Composer</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> Dead On It</p>\n<p><strong>Description</strong> Tote <i>bag disrupt mumblecore</i> wayfarers.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7068bf97-1f14-4c31-aa38-e830750c9cad",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> Thunder</p>\n<p><strong>Description</strong> Vhs <i>vinyl squid disrupt pinterest shabby chic next level</i> meditation.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/19fc93e4-aea5-468c-89e6-02a99dba0999",
            "display": "<section><p><strong>Felicita Runolfsson, 1916-1971</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e6a739ea-dbe7-4183-a934-9f2dbbe887e4",
            "display": "<section><p><strong>Harland Labadie, 1905-1984</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/aa1aa22a-2159-4c99-9e55-b0b07e56185c",
            "display": "<section><p><strong><i>Café Lou</i></strong></p>\n<p>Churchkey seitan tacos kinfolk marfa swag.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/642158f4-8650-49c9-af49-44936c972267",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Bicycle rights marfa normcore everyday neutra asymmetrical goth artisan popup.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a3b03de4-2e78-46ca-a496-cef97703350a",
      "date": "1980-04-16T00:00:00.000-05:00",
      "label": "16 April 1980 - Hermiston, Curt",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Hermiston, Curt"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8f5b1dd0-f980-4e10-8ac8-2d533a598128",
            "display": "<section><p><strong>Jim Hodkiewicz, 1910-1989</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/35adf850-ec14-472a-976f-13b24cb1da4e",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Signet Books</i></p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Publication</strong> Polaroid keffiyeh banjo ugh hammock vinegar.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/45e94ec4-e890-4a7e-9d28-1c75347ff5e2",
            "display": "<section><p><strong>Author</strong> Lillian Hermiston DO</p>\n<p><strong>Title</strong> <i>The Skull Beneath the Skin</i></p>\n<p><strong>Publication</strong> Newnes.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9f77deec-2689-4c39-addd-04b68984da80",
            "display": "<section><p><strong>Author</strong> Bambi Labadie LLD</p>\n<p><strong>Title</strong> <i>To Sail Beyond the Sunset</i></p>\n<p><strong>Publication</strong> Berkley Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e89e83d9-c967-46b5-8480-2e74173fba3a",
            "display": "<section><p><strong>Author</strong> Pres. Lewis Kris</p>\n<p><strong>Title</strong> The Painted Veil</p>\n<p><strong>Publication</strong> Harry N. Abrams, Inc.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d3dfb9bd-a142-412f-a4bc-20ef25f7397e",
            "display": "<section><p><strong>Title</strong> <i>A Glass of Blessings</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Date</strong> 1963-12-07.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/27536a13-76b2-4442-ace3-f116c32e7a46",
      "date": "1981-11-23T00:00:00.000-05:00",
      "label": "23 November 1981 - Kemmer, Jean",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Kemmer, Jean"
      ],
      "destinations": [
        "<i>Oglaroon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4ef15ee4-8cbd-43c8-93e6-3451179b42bc",
            "display": "<section><p><strong>Radio Broadcast</strong>, Ennui <i>synth heirloom poutine vegan thundercats</i> drinking.</p>\n<p><strong>Attended with</strong> The Dude and Marvin</p>\n<p><strong>Place, Date</strong> Fisherport, 16 December 1964</p>\n<p><strong>Director</strong> Prak</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3aa7c697-1ec5-45ac-b075-cb066c7bbe14",
            "display": "<section><p><strong>Reading</strong>, Locavore art party literally wayfarers organic glutenfree mlkshk.</p>\n<p><strong>Attended with</strong> Karl Hungus and Reg Nullify</p>\n<p><strong>Place, Date</strong> Annellemouth, 10 October 1925</p>\n<p><strong>Director</strong> Agda</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c855143c-5041-4355-82f6-dc1af5b62073",
            "display": "<section><p><strong>Horse and Groom</strong></p>\n<p>Cliche microdosing distillery kickstarter health banh mi meditation brunch ennui.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a584d0db-14c8-4d2d-bfbd-3e52224f0b4f",
            "display": "<section><p><strong>Boston</strong></p>\n<p>Venmo cray chia microdosing xoxo sartorial bespoke retro.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7d87815e-e72d-46cc-b411-d7c28fe9622a",
            "display": "<section><p><strong><i>Boston</i></strong></p>\n<p>Organic semiotics pitchfork glutenfree leggings cardigan quinoa.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/89f5eb7d-b5e8-4700-abbd-1ed23cfb09e3",
            "display": "<section><p><strong>Title</strong> <i>Goodfellas</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / 42</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Krikkit One, Anthonyland</p>\n<p><strong>Date(s)</strong> 1941-01-06.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/bf84fa89-d4d1-4685-990c-3a432268e320",
            "display": "<section><p><strong>Title</strong> <i>Star Wars: Episode VIII – The Last Jedi</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Vogon Constructor Fleet, Paucekchester</p>\n<p><strong>Date(s)</strong> 1947-01-25.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/ce10ef3c-166d-47a8-9d79-438e0556f99d",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Shambhala Publications</i></p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Publication</strong> Kale chips umami tattooed flannel chia authentic.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9bba2c80-bea0-448d-acb9-e38f1b678485",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>United States Government Publishing Office</i></p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Publication</strong> Craft beer pour-over banh mi microdosing health 90's fingerstache lomo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b076ddc6-7d18-4eb2-a6be-7fc2b35bac25",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>Naiad Press</i></p>\n<p><strong>Translator</strong> Lunkwill and Fook</p>\n<p><strong>Publication</strong> Quinoa church-key tilde blue bottle bicycle rights chia pickled migas street.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/454c699f-0caa-43a5-989c-50c2286883ca",
      "date": "1982-03-10T00:00:00.000-05:00",
      "label": "10 March 1982 - Greenfelder, Tula",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Greenfelder, Tula"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f328acc9-0e5e-4a17-a0a8-3a1a610477dd",
            "display": "<section><p><strong>Theatre</strong>, Pabst <i>skateboard yr iphone cardigan</i> irony.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Trin Tragula</p>\n<p><strong>Place, Date</strong> Grahamfurt, 04 February 1931</p>\n<p><strong>Director</strong> Roosta</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/1ee4ccd3-4d66-4771-8f5f-76ffe510bf9b",
            "display": "<section><p><strong>Radio Broadcast</strong>, Kale chips pickled yuccie scenester actually.</p>\n<p><strong>Attended with</strong> Donny and Magrathean sperm whale</p>\n<p><strong>Place, Date</strong> Port Russ, 16 December 1927</p>\n<p><strong>Director</strong> Slartibartfast</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/789d5ab3-2bdd-4e68-8eb5-982d600ba1ad",
            "display": "<section><p><strong>Radio Broadcast</strong>, Loko taxidermy paleo churchkey pug tattooed.</p>\n<p><strong>Attended with</strong> Brandt and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> Kohlerview, 27 April 1937</p>\n<p><strong>Director</strong> Grunthos the Flatulent</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0cbca415-a1b4-4e8e-8881-a03a88988326",
            "display": "<section><p><strong>Shannon Stanton, 1918-1971</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0ef3bb1e-09ec-4bd0-b865-c78658567041",
            "display": "<section><p><strong>Milliways</strong></p>\n<p>Hella cray food truck chillwave helvetica.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e305fecf-5c23-4681-a878-b18cdfa87387",
            "display": "<section><p><strong><i>Space</i></strong></p>\n<p>Everyday <i>cray flannel dreamcatcher</i> salvia.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/654d7b0b-7c00-4496-b13a-70955ad28786",
            "display": "<section><p><strong>Title</strong> <i>Life Is Beautiful</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Wymanmouth</p>\n<p><strong>Date(s)</strong> 1941-06-09.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/969af891-29b7-4040-a094-98140323fcde",
            "display": "<section><p><strong>Title</strong> The Grapes of Wrath</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> RW6, Quigleyfurt</p>\n<p><strong>Date(s)</strong> 1936-06-06.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9eb35e90-15c5-404d-8b05-0eb3374930aa",
      "date": "1982-12-25T00:00:00.000-05:00",
      "label": "25 December 1982 - Wisoky, Alphonso",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Wisoky, Alphonso"
      ],
      "destinations": [
        "Frogstar system"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/535ba418-86e6-4ff6-80d4-5b84387e61a9",
            "display": "<section><p><strong>Rehearsal</strong>, Direct <i>trade yr yolo forage hoodie park celiac diy</i> bushwick.</p>\n<p><strong>Attended with</strong> Brandt and Dan Streetmentioner</p>\n<p><strong>Place, Date</strong> East Vince, 19 March 1932</p>\n<p><strong>Director</strong> Eddie the Computer</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/fcb91afc-071c-4337-9925-410800e15aac",
            "display": "<section><p><strong>Radio Broadcast</strong>, Gentrify green juice freegan ramps keytar.</p>\n<p><strong>Attended with</strong> Brandt and Gail Andrews</p>\n<p><strong>Place, Date</strong> Naderborough, 11 September 1971</p>\n<p><strong>Director</strong> Prak</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/85f8f01a-533c-4b0b-b6cb-9a9497ec7996",
            "display": "<section><p><strong>Rehearsal</strong>, Slowcarb <i>singleorigin coffee seitan microdosing normcore pbrb tousled vhs</i> drinking.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Prostetnic Vogon Kwaltz</p>\n<p><strong>Place, Date</strong> Port Lorenton, 27 November 1949</p>\n<p><strong>Director</strong> Questular Rontok</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/44e3c691-e395-46ac-8cab-33a9506b77f7",
            "display": "<section><p><strong>Shawnna Rogahn, 1925-1978</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/070e6aa0-c7bb-4185-a7b2-9431058a40d6",
            "display": "<section><p><strong>Dona Adams, 1917-1970</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d2973952-cbd3-45a8-ba2d-82ac93ac47b5",
            "display": "<section><p><strong>Title</strong> Star Wars: Episode IV – A New Hope</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Krikkit One, West Jannmouth</p>\n<p><strong>Date(s)</strong> 1949-10-30.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/53d5eab4-5926-48e6-9a9f-107c9d0c4018",
            "display": "<section><p><strong>Title</strong> <i>Sholay</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Bistromath, North Monica</p>\n<p><strong>Date(s)</strong> 1934-08-13.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a33ea36a-05bf-4c26-b786-ec935c54c393",
            "display": "<section><p><strong>Author</strong> Zarniwoop, <strong>Original Title</strong> Let Us Now Praise Famous Men</p>\n<p><strong>Translated into</strong> Gaelic by Slartibartfast</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/496428f2-1fdc-4601-8242-87b8e059f332",
            "display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> Dying of the Light</p>\n<p><strong>Translated into</strong> Danish by Prostetnic Vogon Jeltz</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/14582315-556a-46e4-a01b-8afaf7de7f12",
      "date": "1983-07-05T00:00:00.000-04:00",
      "label": "05 July 1983 - Heathcote, Chris",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Heathcote, Chris"
      ],
      "destinations": [
        "Boston"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/99efbb2c-32b3-4389-964c-65badd86c73c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Five <i>dollar toast bushwick singleorigin coffee</i> stumptown.</p>\n<p><strong>Attended with</strong> Karl Hungus and Max Quordlepleen</p>\n<p><strong>Place, Date</strong> New Cathie, 07 February 1967</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/067cb3d7-52ac-4d78-b12d-70039792264f",
            "display": "<section><p><strong><i>Arkintoofle Minor</i></strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a9411a1a-be30-43ab-bd76-fd8a9c691b51",
            "display": "<section><p><strong>Lahoma Spinka, 1918-1984</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8aefc852-cf3f-4020-939f-c19f3e0d3672",
            "display": "<section><p><strong>Rickie Bartoletti, 1914-1996</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8aad7998-ec3f-44b0-990e-84b2425ec9d6",
            "display": "<section><p><strong>Author</strong> Modesta Renner</p>\n<p><strong>Title</strong> <i>Mother Night</i></p>\n<p><strong>Publication</strong> Jaico Publishing House.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/501aa4ca-e1bd-4f0f-b5f8-ba867e95609e",
            "display": "<section><p><strong>Author</strong> Levi Hane</p>\n<p><strong>Title</strong> <i>O Jerusalem!</i></p>\n<p><strong>Publication</strong> DAW Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/97508be5-5ea4-4757-a93b-e8650dab3904",
            "display": "<section><p><strong>Author</strong> Gena Bins</p>\n<p><strong>Title</strong> I Know Why the Caged Bird Sings</p>\n<p><strong>Publication</strong> Taunton Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/af0b2f74-da67-4f7e-b1e2-e6cf33880ead",
      "date": "1987-11-17T00:00:00.000-05:00",
      "label": "17 November 1987 - Upton, Lynelle",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Upton, Lynelle"
      ],
      "destinations": [
        "<i>Rupert</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c4226def-3b82-4500-b9ba-8b6d982b56c1",
            "display": "<section><p><strong>Reading</strong>, Cred roof cornhole butcher ethical.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Yooden Vranx</p>\n<p><strong>Place, Date</strong> Dickistad, 24 March 1947</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/786dba20-27aa-443d-bb2c-b30ce24e6fa4",
            "display": "<section><p><strong>Rehearsal</strong>, Hashtag <i>cleanse chartreuse street marfa ennui polaroid microdosing</i> vinegar.</p>\n<p><strong>Attended with</strong> The Dude and Roosta</p>\n<p><strong>Place, Date</strong> Mertzshire, 11 June 1948</p>\n<p><strong>Director</strong> Eccentrica Gallumbits</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/12b26770-bc1f-456f-8c74-0f31db04b6b8",
            "display": "<section><p><strong>Radio Broadcast</strong>, Bespoke health pinterest 8bit heirloom lofi.</p>\n<p><strong>Attended with</strong> Jesus Quintana and The Allitnils</p>\n<p><strong>Place, Date</strong> Drewchester, 21 November 1939</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5a3c78ab-efc5-4f2b-8004-79a65b05caca",
            "display": "<section><p><strong>Frogstar World C</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/81002000-c04f-48a5-9271-b280f7f5445d",
            "display": "<section><p><strong>Sqornshellous Zeta</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cdfe43cd-a3cb-46fb-9f43-3cf59e4a5947",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/dc47a0c4-00ae-442d-b3a9-73c8e16495ae",
            "display": "<section><p><strong><i>Frogstar system</i></strong></p>\n<p>Heirloom put a bird on it pbrb distillery 1 direct trade.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/8970231d-dd04-4151-828c-6e101b90c9a6",
            "display": "<section><p><strong>Ysllodins</strong></p>\n<p>Ennui tousled viral organic.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/746561e0-da9f-4530-9268-15009403cd78",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> <i>Taming a Sea Horse</i></p>\n<p><strong>Translated into</strong> Italian by Eccentrica Gallumbits</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e94f352f-df8a-4956-9c6b-4a81413f287d",
            "display": "<section><p><strong>Author</strong> Oolon Colluphid, <strong>Original Title</strong> The Curious Incident of the Dog in the Night-Time</p>\n<p><strong>Translated into</strong> English by Prostetnic Vogon Jeltz</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e0582f06-5bba-4b73-803c-58e7cbd90184",
      "date": "1988-01-09T00:00:00.000-05:00",
      "label": "09 January 1988 - Green, Kenneth",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Green, Kenneth"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d2a0a8fd-a282-43ae-94b4-a48347faf9f2",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato</p>\n<p><strong>Title</strong> When We're Dancing Close And Slow</p>\n<p><strong>Description</strong> Lumbersexual <i>ugh etsy kale chips keffiyeh</i> farmtotable.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b5ea18ee-0251-47cd-a1d8-9e9092c490cf",
            "display": "<section><p><strong>Composer</strong> Humma Kavula</p>\n<p><strong>Title</strong> <i>Lady Cab Driver</i></p>\n<p><strong>Description</strong> Bitters street meh small batch cardigan.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/785bc871-192e-44c3-ae04-8a0ed5f5dab7",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> Pink Cashmere</p>\n<p><strong>Description</strong> Heirloom <i>whatever irony tacos hammock direct trade</i> pinterest.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/94dccdf9-db87-46ff-b9f5-1ee180a0a49a",
            "display": "<section><p><strong>Title</strong> <i>Star Wars: Episode I – The Phantom Menace</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Tanngrisnir, Randyland</p>\n<p><strong>Date(s)</strong> 1942-12-02.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/998d0e1a-5ff9-4c96-8413-3865e89a3c57",
            "display": "<section><p><strong>Title</strong> <i>Star Wars</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / 42</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Brittport</p>\n<p><strong>Date(s)</strong> 1924-09-03.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d0fa1cde-a0ba-48af-97d4-e4c9df97fce4",
            "display": "<section><p><strong>Author</strong> Barry Manilow, <strong>Original Title</strong> Number the Stars</p>\n<p><strong>Translated into</strong> Arabic by Wonko the Sane</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ffa23bdd-ba9d-4b07-a07e-872b7de084d6",
            "display": "<section><p><strong>Author</strong> Zarniwoop, <strong>Original Title</strong> <i>Wildfire at Midnight</i></p>\n<p><strong>Translated into</strong> Portuguese by Grunthos the Flatulent</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2aa630a1-3b18-4380-98dd-5732066de781",
            "display": "<section><p><strong>Title</strong> <i>Far From the Madding Crowd</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Date</strong> 1923-03-10.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/12f1bb49-1ff6-4a05-b93c-0bcbdf81e437",
            "display": "<section><p><strong>Title</strong> <i>When the Green Woods Laugh</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Date</strong> 1944-09-08.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 18,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 3,
          "doc_count": 6
        },
        {
          "key": 2,
          "doc_count": 4
        },
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 1,
          "doc_count": 3
        },
        {
          "key": 4,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "doc_count": 18,
      "buckets": [
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
          "doc_count": 1
        },
        {
          "key_as_string": "1973-01-01T00:00:00.000Z",
          "key": 94694400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1980-01-01T00:00:00.000Z",
          "key": 315532800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 2
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
          "doc_count": 0
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
        },
        {
          "key_as_string": "1988-01-01T00:00:00.000Z",
          "key": 567993600000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 18,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Shields Academy",
          "doc_count": 10
        },
        {
          "key": "South Carter",
          "doc_count": 8
        },
        {
          "key": "South Huel Institute",
          "doc_count": 8
        },
        {
          "key": "Southern Simonis",
          "doc_count": 7
        }
      ]
    },
    "language": {
      "doc_count": 18,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 6
        },
        {
          "key": "german",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "english",
          "doc_count": 2
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 18,
    "links": {
      "self": "http://example.org/letters?page=1&start_date=1969-05-04"
    }
  }
}
~~~

