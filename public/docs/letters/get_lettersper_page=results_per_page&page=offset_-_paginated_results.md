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
ETag: W/&quot;fa3367a3b0bf425354baccbcd9603360&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: bfc5ec72-2335-47f5-a50e-219edaed2d5b
X-Runtime: 2.708957
Vary: Origin
Content-Length: 45535</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/15340d7f-e327-45ad-860d-322a651a9642",
      "date": "1965-12-24T00:00:00.000-05:00",
      "label": "24 December 1965 - Bergnaum, Sau",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Bergnaum, Sau"
      ],
      "destinations": [
        "<i>Horsehead Nebula</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b19e9aca-aa37-46d8-941c-221781b0fe0e",
            "display": "<section><p><strong>Radio Broadcast</strong>, Cred <i>selvage actually raw denim forage chillwave yr pickled</i> lofi.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Genghis Khan</p>\n<p><strong>Place, Date</strong> Lake Amieeberg, 04 June 1954</p>\n<p><strong>Director</strong> Vroomfondel</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c76e79d5-ec00-4e1b-85d9-aa0ced9c6993",
            "display": "<section><p><strong>Radio Broadcast</strong>, Next <i>level retro chillwave polaroid jean shorts health raw denim forage</i> vinyl.</p>\n<p><strong>Attended with</strong> Brandt and Lintilla</p>\n<p><strong>Place, Date</strong> Lake Damiantown, 13 April 1946</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b4801db6-f78c-4c15-9e5e-708f760ca941",
            "display": "<section><p><strong>Reading</strong>, Singleorigin coffee plaid viral kale chips tilde direct trade.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Emily Saunders</p>\n<p><strong>Place, Date</strong> East Hedwig, 21 June 1934</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9bbebc65-765f-43cc-a658-a64bd1c07510",
            "display": "<section><p><strong>Composer</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> When 2 R In Love</p>\n<p><strong>Description</strong> Cardigan yolo waistcoat green juice coldpressed cliche mustache.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ae403062-6b5a-48de-b5e9-86638a1360cb",
            "display": "<section><p><strong>Composer</strong> Trin Tragula</p>\n<p><strong>Title</strong> When You Were Mine</p>\n<p><strong>Description</strong> Pinterest yr ennui food truck.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c977e129-8d60-4a65-a5c5-a21fd79ebd6e",
            "display": "<section><p><strong>Golgafrincham</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5f54fc45-928c-410f-80d0-8c37730d3a03",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5212e036-0d85-4ee5-9e31-6e9ae5e04a63",
            "display": "<section><p><strong>Brontitall</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/090b6fc4-b0d7-4cc5-b4e8-0c1c66da3a8b",
            "display": "<section><p><strong>Emanuel Dickinson, 1928-1990</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/06de7939-95f1-42c2-8af5-bc29340962cd",
      "date": "1968-10-18T00:00:00.000-04:00",
      "label": "18 October 1968 - Bogan, Ayanna",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Bogan, Ayanna"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7c1cec54-9a88-45b7-80a7-f0a2c12bffea",
            "display": "<section><p><strong>Composer</strong> Loonquawl</p>\n<p><strong>Title</strong> <i>Ol' Skool Company</i></p>\n<p><strong>Description</strong> Small batch gastropub yuccie pug blue bottle postironic kogi forage raw denim.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/57323b52-6f9d-4631-aa81-c4f656dd134b",
            "display": "<section><p><strong>Composer</strong> Hactar</p>\n<p><strong>Title</strong> <i>Raspberry Beret</i></p>\n<p><strong>Description</strong> Locavore <i>polaroid williamsburg thundercats bicycle rights squid glutenfree</i> cardigan.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/17178c5e-dc2d-4466-8ef1-a861103adeeb",
            "display": "<section><p><strong><i>Asbleg</i></strong></p>\n<p>Master semiotics heirloom lofi.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f2cd1ff7-f10d-4f62-828a-899a02798612",
            "display": "<section><p><strong><i>Milliways</i></strong></p>\n<p>Green <i>juice farmtotable williamsburg kitsch health hoodie</i> yr.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d31f8cfe-3a2c-4587-b448-7ddf53db2dee",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Liberty Fund</p>\n<p><strong>Translator</strong> Tricia McMillan</p>\n<p><strong>Publication</strong> Mumblecore normcore marfa pop-up.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1262e653-e38e-4f23-a6e8-7a30d2b44b82",
            "display": "<section><p><strong>Title</strong> <i>A Summer Bird-Cage</i></p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Date</strong> 1933-11-25.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e47d789e-5e58-4253-ae24-f2f1538cae04",
            "display": "<section><p><strong>Title</strong> <i>Down to a Sunless Sea</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1950-05-04.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/452fc1c3-c4f7-4548-b905-34da46e94694",
            "display": "<section><p><strong>Title</strong> <i>Consider Phlebas</i></p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Date</strong> 1943-03-25.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/264ba553-e506-47b7-840d-119db5b297eb",
      "date": "1968-11-03T00:00:00.000-05:00",
      "label": "03 November 1968 - Auer, Alfred",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Auer, Alfred"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/fc0a10a6-87ea-4663-8a23-779ce044a41d",
            "display": "<section><p><strong>Vogsphere</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/af2e588c-f30e-4ce8-8de3-14022372ea13",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1960-10-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/08ec7ed7-0385-4508-9251-cecc3fcc2e28",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1951-12-23.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/fe7a6181-1df0-4572-983e-c534eb3c9680",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1931-03-23.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1a6874b3-b359-45d1-9625-dee20d8c3bc6",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Marshall Pickering</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Publication</strong> Banjo goth yolo sriracha mumblecore.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f7ccbd8a-212f-4116-9611-8916abe36b92",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Daedalus Publishing</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Publication</strong> Goth mustache vinegar franzen tote bag.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/8a5685dc-cac0-44db-9384-347a581f7ac2",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Del Rey Books</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Publication</strong> Hoodie diy scenester artisan.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/83f6de8f-f236-4a12-9469-dd50e15b7c27",
            "display": "<section><p><strong>Title</strong> <i>The Violent Bear It Away</i></p>\n<p><strong>Proposal/Response</strong> It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Translator</strong> Agda</p>\n<p><strong>Date</strong> 1954-05-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/bd52f0db-d0c0-4e90-b8a3-1e889111d135",
            "display": "<section><p><strong>Title</strong> An Instant In The Wind</p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Gag Halfrunt</p>\n<p><strong>Date</strong> 1923-03-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2f165435-79cf-4eac-a1d0-8715399525be",
      "date": "1970-04-03T00:00:00.000-05:00",
      "label": "03 April 1970 - Smitham, Randell",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Smitham, Randell"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4d51ed6a-ec8c-490c-bcce-30106570fc8b",
            "display": "<section><p><strong>Reading</strong>, Beard chia lofi leggings viral brunch.</p>\n<p><strong>Attended with</strong> Brandt and Yooden Vranx</p>\n<p><strong>Place, Date</strong> West Frediahaven, 19 January 1964</p>\n<p><strong>Director</strong> Marvin</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9bdcf48a-b172-4a4e-a5bf-e51f96d51190",
            "display": "<section><p><strong>Reading</strong>, Schlitz <i>raw denim park</i> iphone.</p>\n<p><strong>Attended with</strong> Donny and Gail Andrews</p>\n<p><strong>Place, Date</strong> Lake Neliashire, 04 August 1958</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e8e7a725-1e09-4f57-ade6-bb68b26f9259",
            "display": "<section><p><strong>Composer</strong> Charles Darwin</p>\n<p><strong>Title</strong> <i>Le Grind</i></p>\n<p><strong>Description</strong> Thundercats yuccie pork belly glutenfree cleanse.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f11f5cf9-f406-424c-bbb9-f01fc8513d01",
            "display": "<section><p><strong>Composer</strong> Emily Saunders</p>\n<p><strong>Title</strong> <i>Sexy MF</i></p>\n<p><strong>Description</strong> Heirloom deep v beard umami 1 carry flexitarian singleorigin coffee.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/be2d8775-49da-4862-afe3-2139940a977d",
            "display": "<section><p><strong>Composer</strong> Zarquon</p>\n<p><strong>Title</strong> Under The Cherry Moon</p>\n<p><strong>Description</strong> Vinegar ennui butcher aesthetic postironic tilde.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/462beb2d-5aa0-482b-a979-b3d8f18b96e5",
            "display": "<section><p><strong>Eldon Hessel, 1926-1972</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/dc8994aa-afb6-43cc-95fd-abc94fb0d40e",
            "display": "<section><p><strong>Don Thiel, 1906-1982</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/bc9f3aeb-bf4e-42ab-9fd7-1bb4f1e7254e",
            "display": "<section><p><strong>Author</strong> Lunkwill and Fook, <strong>Original Title</strong> Look Homeward, Angel</p>\n<p><strong>Translated into</strong> Gaelic by Phouchg</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/73e16181-4b25-487d-b1de-c96325181800",
      "date": "1971-08-26T00:00:00.000-04:00",
      "label": "26 August 1971 - Boehm, Reid",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Boehm, Reid"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3ccd8abb-62d5-4601-9537-8ba30e08ea50",
            "display": "<section><p><strong>Composer</strong> Bowerick Wowbagger</p>\n<p><strong>Title</strong> Take Me With U</p>\n<p><strong>Description</strong> Fanny pack shoreditch beard ethical before they sold out sriracha.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1888b793-2e31-44fb-baee-d6fcb79e86bf",
            "display": "<section><p><strong>Islington</strong></p>\n<p>1 <i>photo booth selfies pickled</i> yr.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/10b944bd-b5e5-4532-be22-a241f7381e07",
            "display": "<section><p><strong>Ysllodins</strong></p>\n<p>Shabby chic hoodie synth keffiyeh tofu leggings meggings vegan swag.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b8bd6b35-1110-493e-af2f-8cbcc00067c0",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> Postern of Fate</p>\n<p><strong>Translated into</strong> Greek by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/03b2c77a-3a0e-4a57-acb3-1c1ee745e65b",
            "display": "<section><p><strong>Author</strong> Prak, <strong>Original Title</strong> <i>The Golden Apples of the Sun</i></p>\n<p><strong>Translated into</strong> German by Max Quordlepleen</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ff86f8e9-0e19-4d6f-8ab0-5d7065b26b74",
            "display": "<section><p><strong>Author</strong> Dan Streetmentioner, <strong>Original Title</strong> The Painted Veil</p>\n<p><strong>Translated into</strong> Arabic by Random Dent</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d0946df0-2c48-477e-8d2e-5807d9ceb684",
            "display": "<section><p><strong>Artist</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> <i>Raspberry Beret</i></p>\n<p><strong>Description</strong> Keytar portland singleorigin coffee cronut forage mixtape art party artisan austin.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/885b58eb-f78d-409b-9e4d-096853eb94c4",
            "display": "<section><p><strong>Artist</strong> Emily Saunders</p>\n<p><strong>Title</strong> <i>U Got The Look</i></p>\n<p><strong>Description</strong> Poutine <i>hammock lofi twee sartorial bespoke</i> blog.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4f769328-02f8-45c6-a820-84e17e2fddf9",
      "date": "1974-05-19T00:00:00.000-04:00",
      "label": "19 May 1974 - Tromp, Lanita",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Tromp, Lanita"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d1be7ca3-5f4a-4362-a629-9fa4241f233e",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1969-11-28.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/fdf9e8c6-e854-45f9-9539-a8aee3c09a58",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1942-06-18.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/89a5e934-05d2-429c-9bbc-a13a2beafe30",
            "display": "<section><p><strong>Author</strong> Miss Bryce Ernser</p>\n<p><strong>Title</strong> Jesting Pilate</p>\n<p><strong>Publication</strong> Sams Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/74395bca-b59b-47ae-acb1-4d9d7c534b4d",
            "display": "<section><p><strong>Author</strong> Kum Beer JD</p>\n<p><strong>Title</strong> <i>A Many-Splendoured Thing</i></p>\n<p><strong>Publication</strong> Basic Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8e735df6-bc22-4b31-8bbb-3aa847cad141",
            "display": "<section><p><strong>Author</strong> Kathrin Skiles</p>\n<p><strong>Title</strong> <i>The Daffodil Sky</i></p>\n<p><strong>Publication</strong> University of Michigan Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/35932a8d-5481-40af-9aa7-80f9defe248b",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> <i>I Will Fear No Evil</i></p>\n<p><strong>Translated into</strong> Arabic by Mr. Prosser</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/63318155-a6d7-46a0-9a05-610ddaff8497",
            "display": "<section><p><strong>Title</strong> A Monstrous Regiment of Women</p>\n<p><strong>Proposal/Response</strong> But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Translator</strong> Tricia McMillan</p>\n<p><strong>Date</strong> 1936-01-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/cb3c9443-2976-4464-a3a3-89cce9d51dd6",
            "display": "<section><p><strong>Title</strong> I Know Why the Caged Bird Sings</p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Date</strong> 1965-09-10.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/40dd405b-d765-4e2f-a95b-b0c359cdb1cb",
      "date": "1975-04-01T00:00:00.000-04:00",
      "label": "01 April 1975 - Williamson, Adalberto",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Williamson, Adalberto"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/25e45403-0487-48f9-8c6b-fbce3237f64d",
            "display": "<section><p><strong>Etha Welch, 1907-1998</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/cf5a179a-1fbf-4100-b294-52137d974ec5",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1944-08-02.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/5144f9a2-c6ff-4fb5-be61-e986aabce73f",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1941-05-09.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/159458b5-a75f-49bd-abcd-f193385a5608",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Atheneum Publishers</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Franzen umami fixie occupy vinegar before they sold out intelligentsia pitchfork.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0e34cbc4-5c04-4fcf-a4a0-fafabf834104",
            "display": "<section><p><strong>Artist</strong> Deep Thought</p>\n<p><strong>Title</strong> Joy In Repetition</p>\n<p><strong>Description</strong> Pork belly diy vegan organic.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/eec5ac50-6585-4455-955b-f1c697ee23d7",
            "display": "<section><p><strong>Artist</strong> Reg Nullify</p>\n<p><strong>Title</strong> Scandalous!</p>\n<p><strong>Description</strong> Pitchfork <i>fanny pack flexitarian you probably havent heard of them green juice muggle magic ennui park</i> gentrify.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d1436ced-3f05-4d3c-a104-1345af01764d",
      "date": "1976-09-19T00:00:00.000-04:00",
      "label": "19 September 1976 - Carter, Madelaine",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Carter, Madelaine"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bbce4396-8ac4-4d89-bb72-f3c3d4f576a2",
            "display": "<section><p><strong>Reading</strong>, Swag <i>before they sold out popup small batch kitsch banh mi mlkshk fanny</i> pack.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and JinJenz</p>\n<p><strong>Place, Date</strong> Wendellmouth, 18 May 1968</p>\n<p><strong>Director</strong> Loonquawl and Phouchg</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/3cd96c56-86e5-4cb3-ac80-d25b014c8386",
            "display": "<section><p><strong>Theatre</strong>, Vinyl deep v microdosing tousled.</p>\n<p><strong>Attended with</strong> Karl Hungus and Ford Prefect</p>\n<p><strong>Place, Date</strong> Weissnatshire, 31 July 1957</p>\n<p><strong>Director</strong> Prostetnic Vogon Kwaltz</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/25ca6a7d-815b-4551-bc6d-909ce643c60f",
            "display": "<section><p><strong>Reading</strong>, Street <i>authentic yuccie green juice stumptown</i> butcher.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Barry Manilow</p>\n<p><strong>Place, Date</strong> Lake Ramon, 16 June 1958</p>\n<p><strong>Director</strong> Marvin</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/a77867ba-04ad-4c5d-853d-499f522bd2ea",
            "display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/5ea1337a-1d50-4879-b087-4d7a656da3a0",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>Seagull Books</i></p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Publication</strong> Butcher mlkshk park synth normcore pabst drinking quinoa.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/582aa16a-267c-4135-a7a5-696d810fe46c",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Blackstaff Press</i></p>\n<p><strong>Translator</strong> Lintilla</p>\n<p><strong>Publication</strong> Meh slow-carb ennui etsy mumblecore drinking next level aesthetic.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/945a3c46-b165-4cf9-8746-0a487a5dd328",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Borgo Press</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Publication</strong> Yolo pork belly organic tote bag.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/26bae976-c532-42db-9cfe-1e5e3b0826ad",
            "display": "<section><p><strong>Author</strong> Prostetnic Vogon Kwaltz, <strong>Original Title</strong> <i>Precious Bane</i></p>\n<p><strong>Translated into</strong> Polish by Mr. Prosser</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/8a431de7-3a57-44c8-9141-2ff8b452fa59",
            "display": "<section><p><strong>Author</strong> Reg Nullify, <strong>Original Title</strong> Stranger in a Strange Land</p>\n<p><strong>Translated into</strong> Japanese by Barry Manilow</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/82652f47-e9ef-4cd9-b4f4-5d6a64976848",
            "display": "<section><p><strong>Author</strong> Lunkwill and Fook, <strong>Original Title</strong> <i>The Golden Apples of the Sun</i></p>\n<p><strong>Translated into</strong> Greek by Agrajag</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8cc185fd-75ce-466b-9b40-c92dcbe82dd6",
      "date": "1977-07-20T00:00:00.000-04:00",
      "label": "20 July 1977 - Daniel, Lamar",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Daniel, Lamar"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4cbb476d-a962-4bdb-9112-a8fae8d71d3e",
            "display": "<section><p><strong>Reading</strong>, Fingerstache <i>banjo 90s godard</i> etsy.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Rob McKenna</p>\n<p><strong>Place, Date</strong> North Santoland, 10 May 1961</p>\n<p><strong>Director</strong> Colin the Security Robot</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e9ae1439-8032-4ba6-936f-0bc7f66b0a23",
            "display": "<section><p><strong>Composer</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> <i>Ol' Skool Company</i></p>\n<p><strong>Description</strong> Celiac cray biodiesel raw denim.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7addfcec-fd41-4014-8752-e0a84ab8965a",
            "display": "<section><p><strong>Composer</strong> Prak</p>\n<p><strong>Title</strong> <i>200 Balloons</i></p>\n<p><strong>Description</strong> Park <i>scenester farmtotable cardigan kogi flexitarian loko banh</i> mi.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3356752b-93eb-4f07-8f9c-ea75376b1182",
            "display": "<section><p><strong>Damogran</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/39e00eba-025a-48ae-b808-92135960162b",
            "display": "<section><p><strong>Frogstar World A</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2e9fbe47-18e7-4d46-a6ca-cf6e190174ce",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Harvest House</i></p>\n<p><strong>Translator</strong> Grunthos the Flatulent</p>\n<p><strong>Publication</strong> Pickled you probably haven't heard of them poutine messenger bag intelligentsia tote bag dreamcatcher sartorial normcore.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4ab099a6-2040-4ee3-af5f-c111204bf686",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>Tarpaulin Sky Press</i></p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> Blog kogi hashtag meggings kitsch shabby chic gentrify godard.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4f2202d0-baf6-48aa-8bec-de407ab4d58f",
      "date": "1977-09-13T00:00:00.000-04:00",
      "label": "13 September 1977 - Veum, Bennett",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Veum, Bennett"
      ],
      "destinations": [
        "<i>Stavromula Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a68d192e-42a5-43ff-b7c5-a8693fa22eaf",
            "display": "<section><p><strong>Composer</strong> Lintilla</p>\n<p><strong>Title</strong> Black Sweat</p>\n<p><strong>Description</strong> Scenester kombucha photo booth retro organic gastropub.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c581d5f9-e0e7-4991-bbfe-71009d4dc958",
            "display": "<section><p><strong>Frogstar World A</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/32041e87-c586-4cc0-a04d-5a05edb0b574",
            "display": "<section><p><strong>Megabrantis cluster</strong></p>\n<p>Tryhard <i>postironic chicharrones xoxo pork belly waistcoat</i> retro.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/8b8d1468-6f76-4eff-8f64-98db658d6cc7",
            "display": "<section><p><strong>Highgate Cemetery</strong></p>\n<p>Pitchfork thundercats migas biodiesel truffaut.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e73c5db9-fde7-4a26-915b-dc9457ea22a7",
            "display": "<section><p><strong><i>Western Spiral Arm</i></strong></p>\n<p>Raw denim bespoke yr quinoa.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6fdcedd0-94ec-49ad-bb10-a4eaa4ed2e46",
            "display": "<section><p><strong>Author</strong> Arthur Philip Deodat, <strong>Original Title</strong> Precious Bane</p>\n<p><strong>Translated into</strong> Gaelic by Arthur Dent</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b3172eab-5fe4-4350-846a-067229a8e81e",
            "display": "<section><p><strong>Author</strong> The Allitnils, <strong>Original Title</strong> <i>When the Green Woods Laugh</i></p>\n<p><strong>Translated into</strong> Spanisn by Gail Andrews</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/69514801-c432-4bf8-8312-1c60335b8a34",
            "display": "<section><p><strong>Author</strong> Emily Saunders, <strong>Original Title</strong> <i>That Good Night</i></p>\n<p><strong>Translated into</strong> Finnish by Phouchg</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
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
          "doc_count": 9
        },
        {
          "key": 2,
          "doc_count": 8
        },
        {
          "key": 4,
          "doc_count": 6
        },
        {
          "key": 1,
          "doc_count": 5
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
          "doc_count": 1
        },
        {
          "key_as_string": "1953-01-01T00:00:00.000Z",
          "key": -536457600000,
          "doc_count": 1
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
          "doc_count": 2
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 2
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
          "doc_count": 1
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
          "doc_count": 1
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
          "doc_count": 3
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1984-01-01T00:00:00.000Z",
          "key": 441763200000,
          "doc_count": 2
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
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Eastern Glover Academy",
          "doc_count": 19
        },
        {
          "key": "Western Maryland Academy",
          "doc_count": 17
        },
        {
          "key": "Northern Cronin",
          "doc_count": 11
        },
        {
          "key": "South South Dakota Institute",
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
          "key": "english",
          "doc_count": 10
        },
        {
          "key": "french",
          "doc_count": 9
        },
        {
          "key": "german",
          "doc_count": 9
        },
        {
          "key": "italian",
          "doc_count": 2
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

