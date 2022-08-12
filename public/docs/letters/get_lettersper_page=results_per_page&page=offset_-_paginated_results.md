# Letters API

## GET /letters?per_page=:results_per_page&amp;page=:offset - Paginated results

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels | false | null
| senders | Comma seperated list of sender labels | false | null
| repositories | Comma seperated list of repository labels | false | null
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | null

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
ETag: W/&quot;51e4fd5e2737e9e43e22c92dfe71fbc3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 903d73dc-7794-40f5-b1ba-6a7d6f890511
X-Runtime: 2.291984
Vary: Origin
Content-Length: 19471</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/4b83f2e6-f03e-4b94-b494-d018e391dd5f",
      "date": "1959-11-23T00:00:00.000-05:00",
      "label": "23 November 1959 - Grant, Euna",
      "recipients": [
        "Grant, Euna"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/9c573f43-08c1-4df3-8051-324304081f17",
            "display": "<strong>_reading</strong> <i>A Wednesday</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/abf1ec8a-a86c-47d0-ad01-66f74872dae6",
            "display": "<strong>_reading</strong> Mad Max: Fury Road"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4eb9a0f1-0d23-4ac3-a407-a229a859bff1",
            "display": "<strong>_reading</strong> Sholay"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f06aefb0-c671-4034-b32c-f56c9ae794eb",
            "display": "<b>Aufderhar, Gerry 1909-1984</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ab1291df-d656-4e59-9c24-94596e438ea9",
            "display": "<b>Batz, Philomena 1922-1995</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2bd00ea3-ae95-41b4-accc-3473b9e7c64d",
            "display": "<b>Sipes, Apryl 1917-1990</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/512f2627-ac3b-4336-a3d5-428384128d4a",
            "display": "<b><i>Ysllodins</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/689eae05-6c37-4635-9d58-0c7cef366251",
            "display": "<b>Cathedral of Chalesm</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/fd2085a2-d611-4a9c-9c2b-6d8018bc765a",
            "display": "<b>Apollo</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9c6d61ff-0524-44e9-ab8b-57720c61dfef",
      "date": "1960-02-21T00:00:00.000-05:00",
      "label": "21 February 1960 - Anderson, Otto",
      "recipients": [
        "Anderson, Otto"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0fe149bb-7eba-4467-8b7b-0b56c8a97fba",
            "display": "<b>Burphon XII</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e9cc331b-c900-43f2-bbc5-6a69597c7bcb",
            "display": "<b><i>Krikkit</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5d2f45aa-73b4-4837-b88f-9b31bc61dd4e",
            "display": "<b>Hawalius</b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/7de25f51-b7ca-478e-9040-c38fd752d3dd",
            "display": "<b>Lemke, Rosena 1906-1986</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/98dd9e54-3694-40a7-98b1-298c04cb3c92",
            "display": "Tressa Rippin, <i>Stranger in a Strange Land</i>, Pecan Grove Press"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4c05e39c-d39a-4420-9678-4e7a53647734",
            "display": "<b>The Road Less Traveled</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6b8d1195-2a5d-4d42-a604-886b62c254d9",
      "date": "1960-07-08T00:00:00.000-04:00",
      "label": "08 July 1960 - Harvey, Princess",
      "recipients": [
        "Harvey, Princess"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a1775855-1ab8-45db-afdf-d76cb9344974",
            "display": "Garkbit, Joy In Repetition [Gia Gunn]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/56100d7e-400f-422f-a40d-e3e12fe6f544",
            "display": "<b>Argabuthon</b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8f5669a2-8c84-42de-b874-527661b09953",
            "display": "Prostetnic Vogon Jeltz, <i>Anotherloverholenyohead</i>, Photo booth keytar goth pop-up echo franzen knausgaard drinking."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9d25e7be-8764-4233-a14a-4616d3a70a42",
            "display": "Trillian, <i>1-800-Newfunk Ad</i>, Bushwick <i>next level post-ironic migas cornhole</i> xoxo."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fb82d6ab-ce9e-402b-a7ce-a51e4509f861",
            "display": "Eccentrica Gallumbits, Cream, Dreamcatcher <i>disrupt cronut swag</i> park."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7d61900e-568f-4d51-b338-373383df61b0",
            "display": "<b>As I Lay Dying</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/49acbc07-e1ab-4b8a-bd1b-16e5a111a5e6",
            "display": "<b>The Man Within</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9df68d4c-e5a3-4775-ab79-a5e0b9cfdc88",
      "date": "1960-10-09T00:00:00.000-04:00",
      "label": "09 October 1960 - Blick, Albina",
      "recipients": [
        "Blick, Albina"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/134df762-58a5-46b6-b3bc-f28da3ab5c19",
            "display": "<b>Hettinger, Catalina 1925-1977</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4f7563d0-f287-4b5b-b658-826f6a2c5d15",
            "display": "<b>Parker, Saran 1908-1975</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/383a89ad-20cc-4d0f-9260-4ebd6ff71634",
            "display": "<b>Lamuella</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1ad88d56-d6ec-4353-b3ee-d5bcc4ec3c6d",
            "display": "<b>Horsehead Nebula</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/bfbc9a81-9d13-4457-ac03-6791ca74ad23",
            "display": "<b><i>Seventh Galaxy of Light and Ingenuity</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/ec7395a8-b2fe-4495-a3e9-bba81649bd84",
            "display": "Star Wars: Episode II – Attack of the Clones, dir. Jackie Treehorn, Billion Year Bunker, Loweside, 1956-08-12"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0b6e1f5f-53fa-407e-9b04-b5e553ebb148",
            "display": "Haywood Prosacco, Noli Me Tangere, Reed Publishing"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/58b40fd3-4253-4199-b79a-53b18f6c4ea7",
      "date": "1961-01-18T00:00:00.000-05:00",
      "label": "18 January 1961 - Spencer, Ladonna",
      "recipients": [
        "Spencer, Ladonna"
      ],
      "destinations": [
        "Rickmansworth"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/67b6578e-9e6e-4067-b36a-fa12d9d7b767",
            "display": "Paula Nancy Millstone Jennings, Girls & Boys [Bianca Del Rio]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/94c868f6-8b8b-44cc-99f0-13324792d5eb",
            "display": "Galaxia Woonbeam, Partyman [Alexis Michelle]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/93c0993d-2af9-4b28-94ce-2ad7df75e7b2",
            "display": "<b><i>29 Arlington Avenue</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/8b2a6089-5669-491b-96ae-190e5b34400d",
            "display": "<b>Bistro Illegal</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/27d399dc-7815-46f1-bd56-ec29f57049f9",
            "display": "<b>Ibiza</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/650fb077-9115-4d1a-a7ec-c170b061d311",
            "display": "<b><i>Discovery</i></b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a2ecfe3a-1403-4606-89f2-397c30ee6fc4",
            "display": "Marvin, Eye No, Bespoke swag irony 3 wolf moon phlogiston blue bottle kale chips retro meggings."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/18d9802a-49d2-4d3d-8465-420d14240dce",
      "date": "1961-01-26T00:00:00.000-05:00",
      "label": "26 January 1961 - Streich, Noble",
      "recipients": [
        "Streich, Noble"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e7014aa2-8db1-4a14-a890-cc951340c974",
            "display": "<strong>rehearsal</strong> It Happened One Night"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7c09cf4d-2653-4e6f-be86-638ad1aecda0",
            "display": "Tricia McMillan, I Would Die 4 U [Detox]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f84b6ee1-395d-4904-b9e4-a4c7915e1688",
            "display": "JinJenz, <i>Screwdriver</i> [Blair St. Clair]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/3b3bf9b8-81f4-4836-84fd-a117a78d8b78",
            "display": "Deep Thought, <i>The Most Beautiful Girl In The World</i> [A'keria Chanel Davenport]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/2b40975b-f72c-4e29-9a50-b3f0cf179e89",
            "display": "<b>The Domain of The King</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e920216c-df80-4574-9bb5-070419cfeb3d",
            "display": "<b><i>Discovery</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c4233e86-c497-4381-87d1-1389817c4b06",
            "display": "<b><i>Endeavour</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/1f5bdec3-6af3-4889-aec1-0624bf8b1a19",
            "display": "<b><i>Atlantis</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/82c6d13e-beb2-4396-b464-2588ac9acf39",
      "date": "1961-06-19T00:00:00.000-04:00",
      "label": "19 June 1961 - Price, Milly",
      "recipients": [
        "Price, Milly"
      ],
      "destinations": [
        "<i>Belgium</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d0746aef-4538-4604-ab3b-6a452be5e555",
            "display": "<b><i>Enterprise</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/09fc0d26-fe25-4a6c-ad74-6067713ba44a",
            "display": "Salt Publishing, Gag Halfrunt Flannel 3 wolf moon helvetica church-key retro small batch heirloom."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/13fd9836-3a27-497a-bd73-083be9d628ca",
            "display": "<i>Anova Books</i>, Emily Saunders Deep v mixtape kitsch mumblecore brunch lumbersexual actually mustache."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/0c4fa7e1-ed10-4f92-8fc9-0b8cd4a0f2a7",
            "display": "<i>Martinus Nijhoff Publishers</i>, Rob McKenna Kinfolk small batch post-ironic bespoke pinterest distillery salvia cronut."
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/24b2caa2-86b0-4fea-9ed3-fc0e9dc379ec",
            "display": "Loonquawl and Phouchg, Paisley Park, Roof paleo park sartorial fanny pack everyday jean shorts artisan viral."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fbf05b49-d94b-4110-9a69-9e3a2ce78f2b",
            "display": "Effrafax of Wug, Tamborine, 8-bit <i>pour-over pop-up kale chips literally locavore</i> actually."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b456e9c8-b6fb-4ea5-ad01-e3aa8d35cb0c",
            "display": "Ford Prefect, <i>Peach</i>, Typewriter neutra distillery umami art party church-key diy brunch."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/597ed01a-afee-4275-8279-7fc68e8c34b5",
            "display": "<b>O Jerusalem!</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9ee7ebab-6be5-4232-a4cd-4783d824099b",
            "display": "<b><i>The Way of All Flesh</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/af21d3a3-ce13-40d4-915d-5e42b7b182df",
      "date": "1961-09-03T00:00:00.000-04:00",
      "label": "03 September 1961 - Zemlak, Shirlene",
      "recipients": [
        "Zemlak, Shirlene"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/67800b51-d1ce-41a6-b46a-adf9d69198e8",
            "display": "Random Dent, <i>Under The Cherry Moon</i> [Ivy Winters]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/0d4dd961-a7df-478c-a1be-e887ad3e4bce",
            "display": "Yooden Vranx, <i>Cindy C.</i> [Joslyn Fox]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e8144739-fae7-4c92-8117-dbbd82999655",
            "display": "Max Quordlepleen, Funk n' Roll [Sasha Velour]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/27468b0a-fd9b-4d9b-8811-1e6db5a77173",
            "display": "<b>Stavro Mueller Beta</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/83d9846d-00ed-43da-9073-ee205be5fae7",
            "display": "<b>Han Dold City</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c045da8b-49f1-4c82-93b8-2fdaf4a58b89",
            "display": "<b>London</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/282cbfaf-a14e-4786-9c17-efe54579464a",
            "display": "Tijuana Weber DVM, Paths of Glory, G-Unit Books"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/24efd330-1bb9-48c6-abaa-e1545512a235",
            "display": "Sen. Bobby Metz, <i>A Swiftly Tilting Planet</i>, Signet Books"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ed751735-227a-4901-b397-bb847ac00f36",
            "display": "Virginia Cronin PhD, The Violent Bear It Away, Sams Publishing"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/9987f59c-1c26-4422-b147-954eef010c37",
            "display": "Magrathean sperm whale, <i>Of Mice and Men</i>, Translated into greek by The Allitnils"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bcd0edc7-ce0e-4cc8-8ad7-71d42850f53a",
            "display": "JinJenz, <i>A Scanner Darkly</i>, Translated into finnish by Random Dent"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d77e712a-4c19-456a-baec-98b2fab77d21",
            "display": "Prostetnic Vogon Jeltz, If Not Now, When?, Translated into ukranian by Garkbit"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c0364256-4edd-44eb-8be5-1bce7d0f90b9",
      "date": "1963-02-25T00:00:00.000-05:00",
      "label": "25 February 1963 - Quitzon, Mac",
      "recipients": [
        "Quitzon, Mac"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/4525a988-52fd-4152-98b7-0b2f6f07284d",
            "display": "<strong>_reading</strong> Star Wars: Episode VIII – The Last Jedi"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/93bd74c2-1ffa-4dbf-896a-f84211acaeb5",
            "display": "<strong>rehearsal</strong> City Lights"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e69ddb10-4be6-499f-b965-f6124820b4a5",
            "display": "<i>Paper Moon</i>, dir. Jackie Treehorn, Billion Year Bunker, New Patrina, 1950-12-21"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c4eba1ce-9c92-46f3-b449-56a5d176ae24",
            "display": "<i>Heat</i>, dir. Brandt, RW6, Emilioside, 1938-10-01"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e2822a0c-cc03-4b8c-9754-e3cd54194e51",
            "display": "<b>Discovery</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/47bcf6a2-5fe3-4dd1-9633-c29045dc07c4",
            "display": "<b><i>Atlantis</i></b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/da14c911-9d10-4c58-850d-80a316dabb14",
            "display": "Zaphod Beeblebrox, <i>Under The Cherry Moon</i>, Roof <i>you probably haven't heard of them chicharrones +1 authentic williamsburg tote bag vinegar</i> intelligentsia."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/256d2a9a-50bb-4506-8f1c-edf10004aef5",
            "display": "The Allitnils, A Love Bizarre, Freegan skateboard meggings scenester literally."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f42fd4f2-f011-4413-8717-1b2b890897e1",
            "display": "Rob McKenna, Paisley Park, Aesthetic ugh hella migas green juice blog."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/641035e6-bf96-478f-b16d-ab4d72b6079b",
      "date": "1963-03-08T00:00:00.000-05:00",
      "label": "08 March 1963 - Daugherty, Catrice",
      "recipients": [
        "Daugherty, Catrice"
      ],
      "destinations": [
        "Café Lou"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2e39f390-28ee-4b63-a4a2-9b683fa0f9bf",
            "display": "<strong>_reading</strong> <i>Taxi Driver</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f92ffb6c-3d6c-4692-b480-158e241d78f7",
            "display": "<strong>rehearsal</strong> <i>Finding Nemo</i>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/78a9f0a9-bb19-46d5-bb57-2a91c5e15246",
            "display": "Random Dent, Kiss [Nina West]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fb9d3b4f-27d3-4134-a070-9ae8979361ec",
            "display": "Zaphod Beeblebrox, <i>Another Lonely Christmas</i> [Ariel Versace]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f0f6e72a-d6ca-4cf8-b21d-e7669497d482",
            "display": "Zaphod Beeblebrox, Lady Cab Driver [Derrick Barry]"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/32955740-5e10-4223-af17-8b8a16b2409d",
            "display": "<i>André Deutsch</i>, Tricia McMillan Wolf retro gastropub fingerstache."
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/eb7f6b10-5ff7-4a99-93b9-5a730d4aaeef",
            "display": "Agrajag, 1000 X's & O's, Humblebrag venmo cold-pressed listicle gentrify cray ramps kombucha."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9db7d50d-e253-4ccb-95aa-2bd0c7787170",
            "display": "Phouchg, <i>Sexy MF</i>, Cray trust fund semiotics ennui chartreuse tacos vice microdosing."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6533f821-51fc-4add-a330-61beafe93db0",
            "display": "Tricia McMillan, <i>Nothing Compares 2 U</i>, Everyday austin bespoke pickled."
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 30,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 5
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 4
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
          "key": "East Fadel",
          "doc_count": 16
        },
        {
          "key": "North Vandervort College",
          "doc_count": 14
        },
        {
          "key": "Northern Mayer",
          "doc_count": 14
        },
        {
          "key": "West New York Academy",
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
          "doc_count": 11
        },
        {
          "key": "french",
          "doc_count": 10
        },
        {
          "key": "italian",
          "doc_count": 7
        },
        {
          "key": "english",
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
}</pre>
