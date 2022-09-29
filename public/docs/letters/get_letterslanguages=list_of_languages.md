# Letters API

## GET /letters?languages=:list_of_languages

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

<pre>GET /letters?languages=German%2C+italian</pre>

#### Query Parameters

<pre>languages: German, italian</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?languages=German%2C+italian&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 16
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ea4cb1634ef2402f1e047b96ff2baefd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5d852d41-dbfa-41ad-901e-59dec4034f01
X-Runtime: 3.066714
Vary: Origin
Content-Length: 67538</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/17304808-1aed-4283-8fa2-b01a66823262",
      "date": "1954-12-01T00:00:00.000-05:00",
      "label": "01 December 1954 - Crona, Kala",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Crona, Kala"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/67057cff-8486-40b5-a482-994db79fd5c4",
            "display": "<section><p><strong>Rehearsal</strong>, Chia keytar seitan tattooed brooklyn coldpressed carry skateboard.</p>\n<p><strong>Attended with</strong> Karl Hungus and Hactar</p>\n<p><strong>Place, Date</strong> Sybleside, 08 February 1944</p>\n<p><strong>Director</strong> Agrajag</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/24f52227-3796-4737-8552-d5db8f6d7c9a",
            "display": "<section><p><strong>Cecil O'Kon, 1913-1989</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c2f91131-f57a-4c7c-b512-172a55bf2e76",
            "display": "<section><p><strong>Becky Ledner, 1911-1998</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/5be3aebe-b558-4d2c-8011-6cadb71517c0",
            "display": "<section><p><strong><i>Ysllodins</i></strong></p>\n<p>Retro bitters tousled swag.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/22031f22-fe51-49e7-b4d6-4e00bf937cbe",
            "display": "<section><p><strong>Seventh Galaxy of Light and Ingenuity</strong></p>\n<p>Cred before they sold out typewriter tryhard master aesthetic thundercats.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3e487d23-b2ea-4880-ba66-8c7e6f0848db",
            "display": "<section><p><strong>Title</strong> <i>The Torment of Others</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Date</strong> 1943-03-02.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/26f99fdb-9393-4b99-b7bd-5f1f18bb7392",
      "date": "1955-12-29T00:00:00.000-05:00",
      "label": "29 December 1955 - Heller, Jonna",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Heller, Jonna"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/078c0cd0-01d5-4681-9c00-f528c5c69584",
            "display": "<section><p><strong>Reading</strong>, Flannel kombucha diy pitchfork raw denim roof shoreditch cardigan austin.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Dan Streetmentioner</p>\n<p><strong>Place, Date</strong> New Michelleberg, 04 December 1939</p>\n<p><strong>Director</strong> Gag Halfrunt</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a66af134-fd45-4739-b5cc-20e32727a8be",
            "display": "<section><p><strong>Title</strong> <i>Modern Times</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> RW6, West Cecilhaven</p>\n<p><strong>Date(s)</strong> 1925-06-28.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b72c73d8-f3cb-427c-8619-4e5c5b802546",
            "display": "<section><p><strong>Title</strong> Cidade de Deus</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Vogon Constructor Fleet, North Augustville</p>\n<p><strong>Date(s)</strong> 1954-03-07.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7ddce608-ed87-4ec2-8d83-c8e8cdf4ef32",
            "display": "<section><p><strong>Title</strong> The Wizard of Oz</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Bistromath, North Jamel</p>\n<p><strong>Date(s)</strong> 1957-11-24.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2ec5636b-31e9-4caa-9eb4-a8804ffb4f25",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1930-12-22.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e71b5af0-4289-4a92-a922-6e861e84d41c",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Lethe Press</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Publication</strong> Chicharrones meggings meh craft beer vegan.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0e34d958-ec8a-4aa1-9fa5-eb935416cb56",
      "date": "1956-09-19T00:00:00.000-04:00",
      "label": "19 September 1956 - Schinner, Rashad",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Schinner, Rashad"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/25bd4769-5bf7-450a-9995-dfc46439fe66",
            "display": "<section><p><strong>Composer</strong> Rob McKenna</p>\n<p><strong>Title</strong> <i>She's Always In My Hair</i></p>\n<p><strong>Description</strong> Singleorigin <i>coffee mlkshk normcore loko kombucha</i> chillwave.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/643a8e9a-c358-494c-8c9c-57cab22dc3d7",
            "display": "<section><p><strong>Composer</strong> Zarquon</p>\n<p><strong>Title</strong> <i>Sometimes It Snows In April</i></p>\n<p><strong>Description</strong> Locavore cardigan hammock irony tilde food truck kombucha fixie.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f4425997-2b9b-42e5-977f-1c167d7c2bce",
            "display": "<section><p><strong>Title</strong> <i>Terminator 2: Judgment Day</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Tanngrisnir, Courtneymouth</p>\n<p><strong>Date(s)</strong> 1928-12-12.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/affa4278-3b9d-4521-8d6c-26ffdb321566",
            "display": "<section><p><strong>Title</strong> <i>Inglourious Basterds</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Starship Titanic, Port Ronnieburgh</p>\n<p><strong>Date(s)</strong> 1951-11-25.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/777c6233-5f4a-48ec-9a31-81498edfaf41",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Chronicle Books</p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Blue bottle actually green juice everyday viral authentic.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c56a484e-a423-44fb-bb7c-c640ffa76dc0",
            "display": "<section><p><strong>Author</strong> Ernie Leannon</p>\n<p><strong>Title</strong> <i>Alone on a Wide, Wide Sea</i></p>\n<p><strong>Publication</strong> Hackett Publishing Company.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8b47e885-e5fb-4ae1-92a0-fa2d7a541390",
            "display": "<section><p><strong>Author</strong> Eleonor Hirthe V</p>\n<p><strong>Title</strong> <i>Of Human Bondage</i></p>\n<p><strong>Publication</strong> Packt Publishing.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2e2a099e-cac3-4180-8130-dfa00c54d893",
      "date": "1957-03-30T00:00:00.000-05:00",
      "label": "30 March 1957 - Bradtke, Maureen",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Bradtke, Maureen"
      ],
      "destinations": [
        "Denmark"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/698e8dd0-46b7-4d63-9f56-2419cc9db2f9",
            "display": "<section><p><strong>Reading</strong>, Tattooed <i>blue bottle kinfolk cleanse 3 wolf moon truffaut seitan</i> shoreditch.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Deep Thought</p>\n<p><strong>Place, Date</strong> Mullerstad, 11 July 1933</p>\n<p><strong>Director</strong> Mella</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/09ae9a31-34d5-4e0a-8684-064bcdecc7a5",
            "display": "<section><p><strong>Reading</strong>, Yuccie vice wes anderson pinterest.</p>\n<p><strong>Attended with</strong> The Dude and Eccentrica Gallumbits</p>\n<p><strong>Place, Date</strong> Lake Kandra, 01 July 1923</p>\n<p><strong>Director</strong> Elvis</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/32ed7dc4-ba7f-4fc7-bcb6-44533be3aec2",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato</p>\n<p><strong>Title</strong> I Love U, but I Don't Trust U Anymore</p>\n<p><strong>Description</strong> Sriracha disrupt lumbersexual fixie direct trade diy loko franzen.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/1c35359b-8e31-4127-8ddf-d21df9e6d598",
            "display": "<section><p><strong>Composer</strong> Mr. Prosser</p>\n<p><strong>Title</strong> <i>Baby I'm A Star</i></p>\n<p><strong>Description</strong> Echo portland pabst fanny pack.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/eae62de9-0eab-4dae-861c-8ddbdd08d270",
            "display": "<section><p><strong>Composer</strong> Prak</p>\n<p><strong>Title</strong> <i>Baltimore</i></p>\n<p><strong>Description</strong> Tote bag chicharrones selvage bespoke.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/49d8070f-b286-427d-8276-170d4d87351e",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/881c1ea3-a2e7-4977-812c-b0ed92f71814",
            "display": "<section><p><strong>Poghril</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/eacf469a-3015-4384-8b3d-eb1659b4802a",
            "display": "<section><p><strong>Title</strong> Many Waters</p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Date</strong> 1954-08-21.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7d708dea-937e-45c4-a47f-c2eef4f42993",
            "display": "<section><p><strong>Title</strong> <i>The Monkey's Raincoat</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Date</strong> 1947-08-03.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/4b7e220a-b1ba-4790-abb2-3583f71525d5",
            "display": "<section><p><strong>Title</strong> <i>Blue Remembered Earth</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Date</strong> 1927-07-23.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/814ac3b0-4288-4269-9412-dcd03f3c9f48",
      "date": "1958-11-24T00:00:00.000-05:00",
      "label": "24 November 1958 - Marvin, Gussie",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Marvin, Gussie"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/54f07fbc-0ebe-42f9-902c-bdefb66a29ca",
            "display": "<section><p><strong>Theatre</strong>, Raw denim flannel meh shabby chic put a bird on it hella plaid viral umami.</p>\n<p><strong>Attended with</strong> Karl Hungus and Frankie and Benjy</p>\n<p><strong>Place, Date</strong> East Leighside, 26 July 1944</p>\n<p><strong>Director</strong> Prostetnic Vogon Kwaltz</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c4889b4b-bf98-483d-88d6-e754b10ede0f",
            "display": "<section><p><strong>Reading</strong>, Salvia tacos vegan disrupt williamsburg tofu.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Dan Streetmentioner</p>\n<p><strong>Place, Date</strong> Armstrongside, 13 July 1944</p>\n<p><strong>Director</strong> Paula Nancy Millstone Jennings</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/420f40db-4a5f-4fe1-bf08-b3eef4c97389",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Bella Books</i></p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Publication</strong> Tattooed mixtape selvage freegan shabby chic.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d2173364-05d9-4c93-aef8-356379acc1b9",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Harcourt Assessment</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> 8-bit godard small batch xoxo.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/27e58164-af9b-4729-bc0b-30566c49dad2",
            "display": "<section><p><strong>Author</strong> Lavonna Hahn</p>\n<p><strong>Title</strong> A Glass of Blessings</p>\n<p><strong>Publication</strong> Bantam Books.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/72182f24-e4c2-4451-827d-4ce2ccca53f8",
            "display": "<section><p><strong>Artist</strong> Zarquon</p>\n<p><strong>Title</strong> Pretzel Body Logic</p>\n<p><strong>Description</strong> Typewriter phlogiston pug meggings.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d416e7f9-5269-4f4e-b4db-7a691a5b7f0b",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> Pink Cashmere</p>\n<p><strong>Description</strong> Kinfolk vinyl crucifix retro.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2723428b-ca58-4812-a6af-6eef1dd89a51",
      "date": "1963-05-25T00:00:00.000-04:00",
      "label": "25 May 1963 - Stehr, Allene",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Stehr, Allene"
      ],
      "destinations": [
        "<i>Pleiades system</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/7079ad7a-7f69-45ee-9440-f093703bf5f1",
            "display": "<section><p><strong>Raymon Kiehn, 1928-1994</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c9789c43-1bd2-4e17-9ea3-bef7d03d4219",
            "display": "<section><p><strong>Alexia Kutch, 1908-1970</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6d3d9589-b4c4-4a9f-b702-d4322b0dd4cd",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Salvia flannel deep v sriracha green juice popup celiac.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/39ea1933-12bf-4ea2-a351-ffe1368924af",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1948-07-09.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c9737707-5414-413f-a0a9-22a71e04025b",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1969-12-25.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/35a0a6f6-5621-4499-ac46-29cb7df1ae75",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1967-03-17.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/bafb7894-1b8c-44e5-8570-22ef47d2065e",
            "display": "<section><p><strong>Author</strong> Cortez Moen</p>\n<p><strong>Title</strong> The Heart Is Deceitful Above All Things</p>\n<p><strong>Publication</strong> E. P. Dutton.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e7de0856-8342-450d-8e97-498878845cda",
      "date": "1966-07-01T00:00:00.000-04:00",
      "label": "01 July 1966 - Harber, Dinorah",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Harber, Dinorah"
      ],
      "destinations": [
        "Stavromula Beta"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/364fc927-8412-4846-976f-a0495b4652ee",
            "display": "<section><p><strong>Composer</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> <i>Delirious</i></p>\n<p><strong>Description</strong> Kitsch vhs trust fund kogi flannel mumblecore.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/4fe10bbe-d0ca-4d0c-9fae-3ed0c7d54d9a",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> <i>Bambi</i></p>\n<p><strong>Description</strong> Vinyl retro 90s sriracha wes anderson tryhard helvetica pork belly.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6028ebd5-80bc-48c6-a4c6-2a923e9f4553",
            "display": "<section><p><strong><i>Frogstar World C</i></strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/8be76879-6595-4ba2-beb4-26adbde2dd98",
            "display": "<section><p><strong>NowWhat</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/58a3ec10-b5e0-4683-8a8e-79f6ea013d9f",
            "display": "<section><p><strong><i>Broop Kidron 13</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/06e96ffa-3788-4452-af99-49c9d89111bb",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Virago Press</p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Publication</strong> Tumblr waistcoat irony vice photo booth five dollar toast wayfarers.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1e14e182-aeda-4fa2-80e4-0029db05bd03",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Casemate Publishers</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Publication</strong> Trust fund green juice fanny pack typewriter.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cd694c94-e9a5-4660-bb3f-71789df2fe4c",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Mandrake Press</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Publication</strong> Cronut mixtape wolf cray.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/af3130a9-69de-46a2-ac16-345a0b94c619",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> Can't Stop This Feeling I Got</p>\n<p><strong>Description</strong> Keffiyeh asymmetrical small batch organic waistcoat.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/10138dc6-619f-4108-9a1c-33168efded6b",
            "display": "<section><p><strong>Artist</strong> Trillian</p>\n<p><strong>Title</strong> Computer Blue</p>\n<p><strong>Description</strong> Kitsch <i>mlkshk kale chips street</i> churchkey.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ead3ddc6-9e6c-4b61-a180-d7cccfef6814",
      "date": "1969-08-02T00:00:00.000-04:00",
      "label": "02 August 1969 - Buckridge, Romana",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Buckridge, Romana"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6280afd1-125f-4d5b-8a2b-1bd2f9109dad",
            "display": "<section><p><strong>Easter Island</strong></p>\n<p>Tryhard <i>food truck health heirloom sartorial deep</i> v.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b577391d-0953-4864-bebb-8d7f01a6db24",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1944-01-03.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/fd2a2360-b5e3-4f47-827d-e2d6d7e1c8e4",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1929-12-10.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/e538c81a-907f-469a-b0ba-e065869ef6ee",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1960-10-18.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/f338ccb4-4f6c-4a99-a21b-ad0af7b2f22a",
            "display": "<section><p><strong>Author</strong> Roosta, <strong>Original Title</strong> <i>The Wealth of Nations</i></p>\n<p><strong>Translated into</strong> Spanish by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c92e2cd2-8c69-499f-80e0-31e4ca020549",
            "display": "<section><p><strong>Author</strong> Gag Halfrunt, <strong>Original Title</strong> <i>Bury My Heart at Wounded Knee</i></p>\n<p><strong>Translated into</strong> English by Barry Manilow</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/774516f8-4d58-4d36-9038-c15778455ee7",
            "display": "<section><p><strong>Title</strong> It's a Battlefield</p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Hactar</p>\n<p><strong>Date</strong> 1952-10-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/2ed5e939-f2c6-4674-8c5d-510981e499f4",
            "display": "<section><p><strong>Title</strong> Tiger! Tiger!</p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Date</strong> 1960-06-19.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/154b4fc6-819a-4908-9c95-eb2578c2824a",
      "date": "1971-09-30T00:00:00.000-04:00",
      "label": "30 September 1971 - Parker, Glendora",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Parker, Glendora"
      ],
      "destinations": [
        "North West Ripple"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7bb82f11-83c1-4c4c-9d85-cbb0e0082f58",
            "display": "<section><p><strong>Composer</strong> Mella</p>\n<p><strong>Title</strong> <i>New Position</i></p>\n<p><strong>Description</strong> Five dollar toast carry bespoke whatever gentrify.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fda23221-3d9c-4268-978f-902208e46cf3",
            "display": "<section><p><strong>Composer</strong> Reg Nullify</p>\n<p><strong>Title</strong> It's Gonna Be A Beautiful Night</p>\n<p><strong>Description</strong> Vinegar irony craft beer portland five dollar toast franzen everyday seitan.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/45d58348-3070-42cf-9c93-dae544567e58",
            "display": "<section><p><strong>Donnie Gibson, 1901-1992</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5f1da703-c3f2-496b-8e56-4cc4436a4061",
            "display": "<section><p><strong>Cayla Roob, 1924-1995</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b493d712-c108-4522-b4e1-9488790888b7",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Kogan Page</p>\n<p><strong>Translator</strong> Hactar</p>\n<p><strong>Publication</strong> Distillery plaid cornhole selfies fingerstache.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/df8397a7-ff4c-4bc2-bdd8-4cc9e5385561",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Pantheon Books at Random House</p>\n<p><strong>Translator</strong> Ford Prefect</p>\n<p><strong>Publication</strong> Vegan migas try-hard kinfolk.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2bd3b616-271a-457e-8556-5e1dd171973c",
            "display": "<section><p><strong>Author</strong> Niki Hoeger</p>\n<p><strong>Title</strong> A Darkling Plain</p>\n<p><strong>Publication</strong> Carlton Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ba8add4c-fe1b-4f38-b7a1-502a6cafce93",
            "display": "<section><p><strong>Author</strong> Chanelle Franecki</p>\n<p><strong>Title</strong> To Say Nothing of the Dog</p>\n<p><strong>Publication</strong> Mascot Books.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/571754eb-cab7-440f-b3c9-a6724b1d4441",
      "date": "1972-03-09T00:00:00.000-05:00",
      "label": "09 March 1972 - Nikolaus, Jason",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Nikolaus, Jason"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/bec00023-7ced-47bc-bac0-92a3bfd24a57",
            "display": "<section><p><strong>Composer</strong> Vroomfondel</p>\n<p><strong>Title</strong> Money Don't Matter 2 Night</p>\n<p><strong>Description</strong> Twee quinoa helvetica taxidermy williamsburg listicle.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9c4f9161-a187-43bc-9f07-bf5b7f360ea3",
            "display": "<section><p><strong>Composer</strong> Humma Kavula</p>\n<p><strong>Title</strong> I Love U, but I Don't Trust U Anymore</p>\n<p><strong>Description</strong> Venmo 8bit pbrb pug.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/361e1f8a-b2e9-4266-930c-97f325a3ad32",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> I Could Never Take The Place Of Your Man</p>\n<p><strong>Description</strong> Meggings <i>flannel trust fund tofu scenester wes anderson polaroid glutenfree</i> hoodie.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/777dbc16-c98c-42bd-b50e-24244e5ec7d3",
            "display": "<section><p><strong><i>Lamuella</i></strong></p>\n<p>Health microdosing roof fashion axe organic yuccie keffiyeh.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0df83f9f-d6e1-4106-ba45-475b16421fd5",
            "display": "<section><p><strong>Title</strong> <i>12 Angry Men</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / 42</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Heart of Gold, Port Idaport</p>\n<p><strong>Date(s)</strong> 1934-11-24.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c8087568-aee8-4bed-9eb4-8647323cbb0a",
            "display": "<section><p><strong>Title</strong> The Princess Bride</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> RW6, East Patricaton</p>\n<p><strong>Date(s)</strong> 1923-02-01.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/130a5da1-1bfa-457b-8e35-e67175e7d48a",
            "display": "<section><p><strong>Title</strong> <i>Cinema Paradiso</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Heart of Gold, Lueilwitztown</p>\n<p><strong>Date(s)</strong> 1937-04-11.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5394c6a1-03ec-4bc5-8bc6-78f05e2d3379",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1944-05-22.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0be6a8b8-1a3e-4d8d-b18b-97e9d2229f2f",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1934-08-17.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4b4888a5-8ef3-4736-b289-2da186d9d3a2",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1955-07-10.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3cc80728-40a4-4f61-a600-c46ca0adb446",
      "date": "1973-09-26T00:00:00.000-04:00",
      "label": "26 September 1973 - Lubowitz, Orlando",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Lubowitz, Orlando"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8377c1c6-9b1b-48d6-a7d9-170cb527941a",
            "display": "<section><p><strong>Magrathea</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/14679080-e3ff-42f9-8d9e-22871c7499ee",
            "display": "<section><p><strong>Leana Roberts, 1918-1992</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6e6ec602-5d8e-4b9a-a018-a173c0cf03eb",
            "display": "<section><p><strong>Earnest Gorczany, 1904-1981</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a7442335-c1f6-4aa9-8d1c-990b6b4eb90b",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1970-06-02.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d5ae1bfb-97ad-4d9a-90ca-6ba807f35d47",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1953-10-26.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/bddc38ae-67fc-4306-8dd7-b9b44843f5f1",
            "display": "<section><p><strong>Title</strong> <i>A Passage to India</i></p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Date</strong> 1928-06-09.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/63f4ebd4-4b2c-401a-9085-a39b79214956",
      "date": "1974-12-16T00:00:00.000-05:00",
      "label": "16 December 1974 - Gleason, Livia",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Gleason, Livia"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/76db8ed9-0834-47c3-9da5-3a60291fd48f",
            "display": "<section><p><strong>Composer</strong> Bowerick Wowbagger</p>\n<p><strong>Title</strong> <i>Jam Of The Year</i></p>\n<p><strong>Description</strong> Loko <i>small batch farmtotable franzen leggings everyday</i> dreamcatcher.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/885b186d-7d79-4e0c-904b-2832d21025cf",
            "display": "<section><p><strong>Composer</strong> Phouchg</p>\n<p><strong>Title</strong> Do It All Night</p>\n<p><strong>Description</strong> Next <i>level semiotics humblebrag neutra austin brunch echo diy</i> venmo.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/8d0bf014-1295-4c7c-ab6e-b1b297597aef",
            "display": "<section><p><strong>Composer</strong> Mella</p>\n<p><strong>Title</strong> Little Red Corvette</p>\n<p><strong>Description</strong> Taxidermy <i>vhs literally drinking pug schlitz you probably havent heard of</i> them.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/77f77227-e047-4ba5-8786-9390275496e5",
            "display": "<section><p><strong>Author</strong> Deadra Toy</p>\n<p><strong>Title</strong> To Say Nothing of the Dog</p>\n<p><strong>Publication</strong> Fairview Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/54899892-af15-4e19-a70c-b92c7274bcc7",
            "display": "<section><p><strong>Author</strong> Hillman Hunter, <strong>Original Title</strong> To Say Nothing of the Dog</p>\n<p><strong>Translated into</strong> Japanese by Elvis</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4f2de683-b086-4f94-a5fb-ba388fb0cd77",
            "display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> <i>To Say Nothing of the Dog</i></p>\n<p><strong>Translated into</strong> Icelandic by Elvis</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/21358b1f-ec80-432e-9325-af839efaa5d8",
            "display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> The Wings of the Dove</p>\n<p><strong>Translated into</strong> Irish Gaelic by Elvis</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5361c3c7-723e-41a8-87da-4830097db361",
            "display": "<section><p><strong>Title</strong> <i>Edna O'Brien</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Date</strong> 1969-06-01.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/2e104319-8efd-4685-ab5b-d4e175e6bee5",
            "display": "<section><p><strong>Title</strong> Jesting Pilate</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Grunthos the Flatulent</p>\n<p><strong>Date</strong> 1924-08-30.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/29e3dc36-f55c-48a7-b7d7-8f6f5e139e11",
            "display": "<section><p><strong>Title</strong> In a Glass Darkly</p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Date</strong> 1971-03-22.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dce6b47d-d55b-4fcc-978a-e6e93d60b47a",
      "date": "1975-09-20T00:00:00.000-04:00",
      "label": "20 September 1975 - Langosh, Jan",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Langosh, Jan"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/9e9521e1-7608-42c0-9e42-6b755aabe7f1",
            "display": "<section><p><strong>Radio Broadcast</strong>, Letterpress <i>3 wolf moon gentrify</i> chicharrones.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Agda</p>\n<p><strong>Place, Date</strong> Hagenestown, 30 June 1924</p>\n<p><strong>Director</strong> Agrajag</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/0a0b8eef-3062-4c54-8688-90f3f8afe53d",
            "display": "<section><p><strong>Rehearsal</strong>, Small <i>batch meggings cardigan pourover brunch semiotics salvia</i> taxidermy.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> East Elia, 06 June 1966</p>\n<p><strong>Director</strong> Mr. Prosser</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/be50b8bf-5c35-4a9e-958e-740401cec68d",
            "display": "<section><p><strong>Rehearsal</strong>, Drinking gentrify plaid brunch franzen salvia.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Emily Saunders</p>\n<p><strong>Place, Date</strong> Mikefurt, 21 January 1939</p>\n<p><strong>Director</strong> Pasta Fasta</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/98a371ae-b283-4e16-8c3b-e07388b15f75",
            "display": "<section><p><strong>Poghril</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b1937984-32f5-40c3-bfc6-55e991a77b13",
            "display": "<section><p><strong>Sam O'Keefe, 1921-1980</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6a5b9859-2fc3-4eec-b4f8-f2488fb0c951",
            "display": "<section><p><strong>Author</strong> Hactar, <strong>Original Title</strong> Jesting Pilate</p>\n<p><strong>Translated into</strong> Ukrainian by Charles Darwin</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/1a6cd95b-6611-4bc5-ab90-ccd15b8d1465",
            "display": "<section><p><strong>Author</strong> Marvin, <strong>Original Title</strong> <i>The Way Through the Woods</i></p>\n<p><strong>Translated into</strong> Rumanian by Arthur Dent</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/de95d76e-cec4-4c8e-b9f2-f73e05e77148",
            "display": "<section><p><strong>Author</strong> Emily Saunders, <strong>Original Title</strong> The Man Within</p>\n<p><strong>Translated into</strong> Portuguese by Lunkwill and Fook</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1802cba4-5f86-4b35-9cc4-5c8bc2a05049",
      "date": "1978-10-16T00:00:00.000-04:00",
      "label": "16 October 1978 - Friesen, Lester",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Friesen, Lester"
      ],
      "destinations": [
        "<i>Easter Island</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/26af9f70-3026-48ca-905d-1c2460c569d4",
            "display": "<section><p><strong>Rehearsal</strong>, Lomo <i>green juice shoreditch kickstarter godard yolo singleorigin coffee chia</i> offal.</p>\n<p><strong>Attended with</strong> Donny and Vroomfondel</p>\n<p><strong>Place, Date</strong> Donnellyside, 15 February 1967</p>\n<p><strong>Director</strong> Hotblack Desiato's bodyguard</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/19cd1de2-e32a-47a6-94ab-9a9d13736a41",
            "display": "<section><p><strong>Theatre</strong>, Brunch ennui salvia knausgaard lofi neutra disrupt intelligentsia yuccie.</p>\n<p><strong>Attended with</strong> Brandt and Prostetnic Vogon Jeltz</p>\n<p><strong>Place, Date</strong> North Margoborough, 27 October 1968</p>\n<p><strong>Director</strong> Grunthos the Flatulent</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e5c7d300-0eaf-4df3-87a7-14e3acdfcac1",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Meh <i>direct trade yolo tumblr keffiyeh wolf salvia</i> popup.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ba03d3f6-6309-440f-b866-3244082695a6",
            "display": "<section><p><strong>Norway</strong></p>\n<p>Hammock <i>ennui popup churchkey echo</i> humblebrag.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7118aed5-14fe-49df-8540-63a50b10beaf",
            "display": "<section><p><strong>Belgium</strong></p>\n<p>Stumptown quinoa iphone cronut.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/af5e8bf7-fc5f-46d1-a720-520f05eda2ed",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Target Books</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Publication</strong> Paleo fixie authentic godard.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e4ca00b2-48ed-45d9-943e-d7dab5469a5e",
            "display": "<section><p><strong>Title</strong> The Monkey's Raincoat</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Date</strong> 1935-08-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7460ee47-d21b-42fe-9243-24b748fb90b3",
      "date": "1980-11-25T00:00:00.000-05:00",
      "label": "25 November 1980 - Cruickshank, Elliott",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Cruickshank, Elliott"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/afc9ba0c-4937-47c3-b8fe-eefa4fc2ee29",
            "display": "<section><p><strong>Composer</strong> Agrajag</p>\n<p><strong>Title</strong> <i>Pretzel Body Logic</i></p>\n<p><strong>Description</strong> Singleorigin <i>coffee kickstarter synth fanny pack kogi green</i> juice.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b81bfb21-b202-434a-80e2-e1e494f0fdf3",
            "display": "<section><p><strong>Composer</strong> Zarquon</p>\n<p><strong>Title</strong> 1-800-Newfunk Ad</p>\n<p><strong>Description</strong> Kombucha kitsch lofi cliche selvage williamsburg everyday echo.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/edf18883-46b2-42dc-94ea-80f896e893ac",
            "display": "<section><p><strong>Alfonso Casper, 1908-1996</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/7737184f-144d-4076-b5e3-95feb974d737",
            "display": "<section><p><strong>Vicky Witting, 1923-1970</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7643dd3c-d0e9-4fa1-b0c2-739e30d45d90",
            "display": "<section><p><strong>Author</strong> Young Beer</p>\n<p><strong>Title</strong> <i>Dying of the Light</i></p>\n<p><strong>Publication</strong> Schocken Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/12e9456a-2df0-42a6-9f36-76e6cb8ae5b0",
            "display": "<section><p><strong>Author</strong> Pres. Norberto Mraz</p>\n<p><strong>Title</strong> <i>Carrion Comfort</i></p>\n<p><strong>Publication</strong> Mark Batty Publisher.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9adc324d-e4f1-4c93-ae4e-5f5b8d7af95b",
            "display": "<section><p><strong>Artist</strong> Gail Andrews</p>\n<p><strong>Title</strong> <i>Partyman</i></p>\n<p><strong>Description</strong> Retro <i>artisan iphone gentrify chartreuse pabst</i> semiotics.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f5f2d657-c8b1-45af-bdf4-e82d006711db",
      "date": "1986-09-28T00:00:00.000-04:00",
      "label": "28 September 1986 - Zboncak, Bulah",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Zboncak, Bulah"
      ],
      "destinations": [
        "Kakrafoon Kappa"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/a7004e80-6811-47ac-b942-b8b8335eb4bf",
            "display": "<section><p><strong>Radio Broadcast</strong>, Chia goth asymmetrical taxidermy.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> West Debbraland, 25 January 1959</p>\n<p><strong>Director</strong> Eccentrica Gallumbits</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/afe44699-2dac-4bc5-a3af-589d6ea86e69",
            "display": "<section><p><strong>Horse and Groom</strong></p>\n<p>Occupy <i>deep v ugh fixie</i> typewriter.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d64d7a0b-5bfa-4a42-9e25-a0c8678d5a9a",
            "display": "<section><p><strong>Title</strong> <i>Paris, Texas</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Tanngrisnir, West Walton</p>\n<p><strong>Date(s)</strong> 1933-01-28.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b6f42607-a700-4486-85cd-20469b6b2207",
            "display": "<section><p><strong>Title</strong> The Wealth of Nations</p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Date</strong> 1953-09-17.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 16,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 6
        },
        {
          "key": 4,
          "doc_count": 5
        },
        {
          "key": 2,
          "doc_count": 3
        },
        {
          "key": 0,
          "doc_count": 1
        },
        {
          "key": 3,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 16,
      "buckets": [
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
          "doc_count": 1
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 1
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
          "doc_count": 1
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
          "doc_count": 1
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
          "doc_count": 0
        },
        {
          "key_as_string": "1986-01-01T00:00:00.000Z",
          "key": 504921600000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 16,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Southern Cormier",
          "doc_count": 9
        },
        {
          "key": "Eastern Arizona Academy",
          "doc_count": 6
        },
        {
          "key": "Goldner Academy",
          "doc_count": 6
        },
        {
          "key": "Northern Marks",
          "doc_count": 6
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
          "doc_count": 10
        },
        {
          "key": "french",
          "doc_count": 8
        },
        {
          "key": "english",
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
    "page_count": 1,
    "total_count": 16,
    "links": {
      "self": "http://example.org/letters?languages=German%2C+italian&page=1"
    }
  }
}</pre>
