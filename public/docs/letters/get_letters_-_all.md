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
ETag: W/&quot;e8ac25ab6d123a5c53b69a7853870682&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f8f1022c-4b0b-437e-b579-85fb3fc34ea2
X-Runtime: 2.858671
Vary: Origin
Content-Length: 112134</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/fc59d255-70a0-4dc4-9ba1-84664782df5f",
      "date": "1950-04-26T00:00:00.000-05:00",
      "label": "26 April 1950 - Price, Bobby",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Price, Bobby"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/736460ea-a9f0-435b-859b-3e443cbdeb63",
            "display": "<section><p><strong>Title</strong> <i>In the Name of the Father</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Tanngrisnir, Schulistton</p>\n<p><strong>Date(s)</strong> 1941-05-20.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/cded9bce-d68c-4fd7-bf42-25478c6140c0",
            "display": "<section><p><strong>Title</strong> <i>Blade Runner</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Bistromath, Jerometown</p>\n<p><strong>Date(s)</strong> 1953-06-07.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b802f916-bf92-472a-beb6-461416fde428",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1948-08-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/18da89c9-c515-4c7e-b873-ec96a87bc4cc",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1939-08-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/725438af-82db-49ff-a54b-bb3a9df4a2c0",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1970-12-27.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/052a9b53-c372-4301-ad44-45e8d7c56484",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>André Deutsch</i></p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Chambray pabst street craft beer shabby chic humblebrag tattooed sustainable.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d60c40c0-0695-42b3-a09e-8388adaa2698",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>Shuter &amp; Shooter Publishers</i></p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Publication</strong> Iphone hella pour-over celiac viral quinoa tattooed.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2c0bb7f2-bcd3-4536-883f-8d83882dcb1d",
            "display": "<section><p><strong>Artist</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> <i>Housequake</i></p>\n<p><strong>Description</strong> Kinfolk <i>before they sold out banjo ramps pinterest</i> biodiesel.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6a013df3-036b-4022-af22-8b65c264cd23",
      "date": "1951-03-10T00:00:00.000-05:00",
      "label": "10 March 1951 - Hudson, Justina",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Hudson, Justina"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3d8da874-ee75-4566-baf2-08069143e96e",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>Nothing Compares 2 U</i></p>\n<p><strong>Description</strong> Hoodie <i>austin viral cardigan migas fashion axe stumptown plaid deep</i> v.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1fbbf04b-d2fb-432a-b358-088c5cf7e414",
            "display": "<section><p><strong>Title</strong> <i>Judgment at Nuremberg</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Heart of Gold, Bahringerville</p>\n<p><strong>Date(s)</strong> 1957-02-22.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/1f31bfac-cc44-4dd9-93c1-642a33bef5db",
            "display": "<section><p><strong>Title</strong> Spirited Away</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Krikkit One, Dorotheaville</p>\n<p><strong>Date(s)</strong> 1940-07-22.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/cf5e908d-35c9-46c2-84aa-4c8d1fe8bed3",
            "display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> <i>Surprised by Joy</i></p>\n<p><strong>Translated into</strong> Japanese by Trillian</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3fccf60a-2841-4d6c-8ad7-9ad2d802050e",
            "display": "<section><p><strong>Author</strong> Loonquawl and Phouchg, <strong>Original Title</strong> Mother Night</p>\n<p><strong>Translated into</strong> Spanish by Bowerick Wowbagger</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/de5baa4b-4870-4529-b503-25b6ebfbb753",
            "display": "<section><p><strong>Author</strong> Garkbit, <strong>Original Title</strong> Fear and Trembling</p>\n<p><strong>Translated into</strong> French by Fenchurch</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/687a6d58-8a8f-4775-b762-07ddda8bd9b3",
            "display": "<section><p><strong>Artist</strong> Zaphod Beeblebrox</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Organic aesthetic vice diy neutra.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e4361deb-3739-4533-9541-b23abc85ffcb",
            "display": "<section><p><strong>Artist</strong> Mr. Prosser</p>\n<p><strong>Title</strong> <i>Le Grind</i></p>\n<p><strong>Description</strong> Locavore <i>organic polaroid bicycle</i> rights.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/85b377ea-1e76-4502-a3bb-d44789d4408a",
      "date": "1951-05-31T00:00:00.000-04:00",
      "label": "31 May 1951 - Torphy, Alva",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Torphy, Alva"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/8277dca8-a767-4d50-ad1b-ee397d371d2b",
            "display": "<section><p><strong>Reading</strong>, Quinoa trust fund vice pinterest godard pitchfork whatever.</p>\n<p><strong>Attended with</strong> The Dude and Loonquawl and Phouchg</p>\n<p><strong>Place, Date</strong> Kunzeborough, 03 April 1926</p>\n<p><strong>Director</strong> Prostetnic Vogon Jeltz</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d444e406-143e-468f-81e7-e4ad1d6f0f79",
            "display": "<section><p><strong><i>Ysllodins</i></strong></p>\n<p>Selvage mixtape hashtag distillery.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d88e4a97-4032-496e-95dd-85095667d44d",
            "display": "<section><p><strong>Ibiza</strong></p>\n<p>Celiac selfies tryhard iphone schlitz.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/330e2fd0-c6f6-4127-87d0-7b6f2a57998b",
            "display": "<section><p><strong>Title</strong> <i>Hotel Rwanda</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> RW6, East Jeremy</p>\n<p><strong>Date(s)</strong> 1972-06-26.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/9f6fa372-74b8-455e-ac3d-afd9a8d75c80",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Carnegie Mellon University Press</i></p>\n<p><strong>Translator</strong> Humma Kavula</p>\n<p><strong>Publication</strong> Xoxo offal fixie sustainable cray keytar fashion axe.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/317d89e2-363b-4b6c-9a95-a4bc2d8f185f",
      "date": "1956-10-14T00:00:00.000-04:00",
      "label": "14 October 1956 - Murphy, Rickey",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Murphy, Rickey"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/02b40a20-a615-45c6-b14f-4edab966c33a",
            "display": "<section><p><strong>Bethselamin</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b21034fc-9653-4d83-b97b-3548e28641c5",
            "display": "<section><p><strong>Bartledan</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5fcafeb6-fc72-476e-8b79-d6cadf83015c",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6d5f3768-a604-4f11-bb28-8906b76611ea",
            "display": "<section><p><strong>Ysllodins</strong></p>\n<p>Offal <i>3 wolf moon gentrify postironic beard</i> meggings.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f3be4541-ea2c-4e27-a8d4-3edbb202553e",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>Wayfarers mumblecore postironic keffiyeh.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/19994fd1-74d4-4bf8-98a0-29d0f863a12e",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>Tote <i>bag muggle magic asymmetrical phlogiston hella quinoa small</i> batch.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/eb75be3d-eae2-4d19-8501-5703d3ca757e",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1935-01-16.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cb02cb16-7cf7-49d9-a909-b4ef1bbb830a",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1942-04-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0c176cd0-7fdf-4cf2-9a20-130b270987a6",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1939-06-13.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c6d5f913-55f6-4bef-aec3-6170f0173c15",
            "display": "<section><p><strong>Author</strong> Filomena Herman DC</p>\n<p><strong>Title</strong> <i>Carrion Comfort</i></p>\n<p><strong>Publication</strong> Carnegie Mellon University Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f51cc334-b1aa-4da4-9b96-a56e951aa0af",
      "date": "1958-07-16T00:00:00.000-04:00",
      "label": "16 July 1958 - Douglas, Carry",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Douglas, Carry"
      ],
      "destinations": [
        "<i>Arthur Dent's house</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ec16a834-2ba2-4fd7-820c-89a6c7308401",
            "display": "<section><p><strong>Han Wavel</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f71bc501-e85a-4a7a-8e26-06c0b7577396",
            "display": "<section><p><strong>Author</strong> Noble Luettgen</p>\n<p><strong>Title</strong> Mr Standfast</p>\n<p><strong>Publication</strong> Harry N. Abrams, Inc.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/164cd2df-2915-45f3-a820-de197067ba04",
            "display": "<section><p><strong>Author</strong> Eccentrica Gallumbits, <strong>Original Title</strong> <i>Sleep the Brave</i></p>\n<p><strong>Translated into</strong> Spanisn by Marvin</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6583b460-f2dc-4b23-b3c9-91d5008579df",
            "display": "<section><p><strong>Artist</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> <i>I Could Never Take The Place Of Your Man</i></p>\n<p><strong>Description</strong> Cronut lofi street microdosing.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d5a8e328-5544-4618-9fb2-988c5e25e585",
            "display": "<section><p><strong>Artist</strong> Charles Darwin</p>\n<p><strong>Title</strong> My Name Is Prince</p>\n<p><strong>Description</strong> Put a bird on it etsy mustache shoreditch thundercats.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/26a631c3-3c60-41b2-8b64-d83158928707",
      "date": "1958-10-27T00:00:00.000-05:00",
      "label": "27 October 1958 - Casper, Edgardo",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Casper, Edgardo"
      ],
      "destinations": [
        "<i>Total Perspective Vortex</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c7e570df-75a5-4a54-9777-8b5e02310796",
            "display": "<section><p><strong>Clint Renner, 1900-1981</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/06f380bc-57fe-4708-a06a-8773b8794e27",
            "display": "<section><p><strong><i>Bournemouth</i></strong></p>\n<p>Shabby <i>chic synth vinyl flannel intelligentsia austin twee</i> blog.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/449acf8a-4735-4a73-8831-7493463be161",
            "display": "<section><p><strong><i>Kakrafoon Kappa</i></strong></p>\n<p>Brunch singleorigin coffee xoxo master muggle magic keytar carry kinfolk tilde.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/891bc5ab-6fa7-43d7-b727-ba3c39464de2",
            "display": "<section><p><strong><i>Zarss</i></strong></p>\n<p>Microdosing <i>asymmetrical typewriter stumptown pitchfork</i> chartreuse.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/ddb6510b-d3b8-460d-9210-fd7067e7cc19",
            "display": "<section><p><strong>Columbia</strong></p>\n<p><strong>1961-05-24.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cd279008-8db9-4552-9014-fb0fadbf9da7",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1962-04-08.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/c5723c78-8dae-4de4-9341-f96ab729bf37",
            "display": "<section><p><strong>Title</strong> Fame Is the Spur</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Date</strong> 1970-07-22.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f13d0547-ea4b-43c7-9eab-db901a656d24",
            "display": "<section><p><strong>Title</strong> A Summer Bird-Cage</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Date</strong> 1942-07-21.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c9aa0db5-1be6-4f59-91d0-0d6d12e8efc8",
            "display": "<section><p><strong>Title</strong> That Good Night</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Date</strong> 1946-01-02.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d8dbf50b-6852-4b57-be02-6b866e140b81",
      "date": "1959-12-10T00:00:00.000-05:00",
      "label": "10 December 1959 - Frami, Amal",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Frami, Amal"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/15294bea-06e4-49e4-97a3-ecf1c8905009",
            "display": "<section><p><strong>Western Spiral Arm</strong></p>\n<p>Pug <i>before they sold out yr deep v brooklyn selfies viral asymmetrical</i> wolf.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fd6a8cd1-c0f3-451d-bc29-6eb4fdacc51d",
            "display": "<section><p><strong><i>Rickmansworth</i></strong></p>\n<p>Tryhard <i>hammock fingerstache cornhole next level truffaut hashtag pabst</i> chicharrones.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/021eeae7-c638-40be-aabb-7f9f3bce231a",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Marfa <i>humblebrag farmtotable kale chips actually leggings postironic</i> polaroid.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/daee31ec-3327-4095-a80b-a7e095f014f0",
            "display": "<section><p><strong>Title</strong> <i>Saving Private Ryan</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Billion Year Bunker, West Daniloside</p>\n<p><strong>Date(s)</strong> 1934-05-13.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/765ef071-a120-4ab8-a995-551ebb059398",
            "display": "<section><p><strong>Title</strong> Heat</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Krikkit One, Erdmanfort</p>\n<p><strong>Date(s)</strong> 1946-06-28.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4e0e50f6-e45f-4e51-aa73-979171646b18",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1961-02-15.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/01e19312-d89c-497e-aa97-3ccb765361c6",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1970-07-21.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/31be80c5-1782-469b-a9c5-ebbd26072871",
            "display": "<section><p><strong>Artist</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> 3 Chains o' Gold</p>\n<p><strong>Description</strong> Marfa tumblr scenester tattooed leggings tousled cliche raw denim.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/04fc022e-9e51-4790-b59b-f9cff6e6add9",
            "display": "<section><p><strong>Artist</strong> Slartibartfast</p>\n<p><strong>Title</strong> <i>Alphabet St.</i></p>\n<p><strong>Description</strong> Organic whatever iphone mumblecore.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1f5cc229-a6ad-424c-b824-e78f69de95bd",
            "display": "<section><p><strong>Artist</strong> Mella</p>\n<p><strong>Title</strong> Crimson and Clover</p>\n<p><strong>Description</strong> Blue bottle selvage squid meggings bespoke food truck skateboard.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6e8f62c5-da5a-411a-9d43-73dff6336b30",
      "date": "1960-09-19T00:00:00.000-04:00",
      "label": "19 September 1960 - Rau, Ann",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Rau, Ann"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/cc8e8e11-2c26-4a14-9899-7ef225665590",
            "display": "<section><p><strong>Reading</strong>, Vice pinterest kogi celiac.</p>\n<p><strong>Attended with</strong> Donny and Questular Rontok</p>\n<p><strong>Place, Date</strong> Heaneyland, 21 December 1951</p>\n<p><strong>Director</strong> Zarquon</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/c081be68-ee13-440b-8feb-6daa69542631",
            "display": "<section><p><strong>Author</strong> Loonquawl and Phouchg, <strong>Original Title</strong> <i>His Dark Materials</i></p>\n<p><strong>Translated into</strong> Ukrainian by Trillian</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4c9e47da-1b1b-44c2-8f95-841e97827b6d",
            "display": "<section><p><strong>Author</strong> Reg Nullify, <strong>Original Title</strong> <i>Everything is Illuminated</i></p>\n<p><strong>Translated into</strong> Flemish by Reg Nullify</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/5d72504f-9de4-496c-ba67-af77bd8267f1",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> <i>Frequent Hearses</i></p>\n<p><strong>Translated into</strong> French by Gail Andrews</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a261cc31-8640-4ba7-b45e-866949d56262",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> Thunder</p>\n<p><strong>Description</strong> Echo taxidermy stumptown fashion axe sartorial lofi franzen seitan.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a54c1c63-806c-4425-ad9f-7f0b98c03d84",
            "display": "<section><p><strong>Artist</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Cream</i></p>\n<p><strong>Description</strong> Chambray <i>dreamcatcher cronut tattooed pabst lofi hoodie</i> forage.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8fde8f2e-6432-491a-9ea0-36c09c729704",
            "display": "<section><p><strong>Title</strong> The Road Less Traveled</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Date</strong> 1928-01-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ce25bb51-ddd0-44e2-b047-1b18e29c7b4e",
      "date": "1960-11-24T00:00:00.000-05:00",
      "label": "24 November 1960 - Collins, Matilda",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Collins, Matilda"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8072abe4-5ebe-4802-b210-7ba66edf07cc",
            "display": "<section><p><strong>Title</strong> Finding Nemo</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Don’t Panic</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> RW6, Lidatown</p>\n<p><strong>Date(s)</strong> 1937-01-01.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/cf6761f5-f6ad-499c-b4f0-023f06f3ae29",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Harper &amp; Row</i></p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Publication</strong> Organic aesthetic echo chillwave freegan yuccie.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c4930414-0093-4ffb-a014-69f85d5eb85c",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Orchard Books</i></p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Publication</strong> Synth pop-up neutra celiac scenester cray cardigan freegan heirloom.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4aea296e-68a6-45ed-9b25-d1a6b492692e",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>City Lights Publishers</i></p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Shabby chic small batch sriracha lomo.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/93737767-bc7d-4797-a536-0d5a58869ec0",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> <i>She's Always In My Hair</i></p>\n<p><strong>Description</strong> Lumbersexual mumblecore umami ethical narwhal 8bit bitters viral.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/90425fb2-32df-4249-b930-19c2fed228ff",
            "display": "<section><p><strong>Artist</strong> Lintilla</p>\n<p><strong>Title</strong> <i>319</i></p>\n<p><strong>Description</strong> Hoodie <i>slowcarb gastropub pabst meditation</i> mlkshk.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1c9783ba-36ce-441b-923e-9bdeb627a40e",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> Pretzel Body Logic</p>\n<p><strong>Description</strong> Coldpressed tofu cardigan pinterest flannel kombucha kogi.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/07eac40d-32d3-4820-a941-e1dc66e0850c",
            "display": "<section><p><strong>Title</strong> <i>I Know Why the Caged Bird Sings</i></p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1949-09-21.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f5dbdff4-00c4-4e67-83dd-e570c510b821",
      "date": "1961-06-07T00:00:00.000-04:00",
      "label": "07 June 1961 - Considine, Lannie",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Considine, Lannie"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/8dd69826-30ee-4e4d-b4d0-74aa50d67e5e",
            "display": "<section><p><strong>Reading</strong>, Butcher <i>ugh cardigan health flexitarian</i> pourover.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Eddie the Computer</p>\n<p><strong>Place, Date</strong> New Kristianmouth, 27 April 1957</p>\n<p><strong>Director</strong> Lunkwill and Fook</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f47ddecf-56b4-44e5-8d82-cce2e9ef4c2f",
            "display": "<section><p><strong>Radio Broadcast</strong>, Shabby <i>chic hammock cardigan vinegar dreamcatcher 90s narwhal photo booth</i> gastropub.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Effrafax of Wug</p>\n<p><strong>Place, Date</strong> Marquardtland, 26 April 1946</p>\n<p><strong>Director</strong> Majikthise</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5957a88f-891b-4c3d-8465-0c68ee7461d5",
            "display": "<section><p><strong>Reading</strong>, Truffaut <i>vhs thundercats cardigan</i> franzen.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Bowerick Wowbagger</p>\n<p><strong>Place, Date</strong> North Tory, 08 October 1962</p>\n<p><strong>Director</strong> Pasta Fasta</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/15755996-4c8e-4dce-9a4b-fcfb09fc7fee",
            "display": "<section><p><strong>Title</strong> Star Wars</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Don’t Panic</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Heart of Gold, Port Luz</p>\n<p><strong>Date(s)</strong> 1963-12-17.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/934d0a1c-3fa6-418e-b6f5-ea2ae0511479",
            "display": "<section><p><strong>Title</strong> Jurassic Park</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Don’t Panic</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, North Nicholas</p>\n<p><strong>Date(s)</strong> 1946-03-27.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f2a0c00d-ac17-4689-820d-a7ff7aae2e7c",
            "display": "<section><p><strong>Author</strong> Brice Balistreri</p>\n<p><strong>Title</strong> Recalled to Life</p>\n<p><strong>Publication</strong> Bellevue Literary Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c0896037-b92f-48a7-b297-2224a7e01126",
            "display": "<section><p><strong>Author</strong> Alfredo Trantow</p>\n<p><strong>Title</strong> <i>Alone on a Wide, Wide Sea</i></p>\n<p><strong>Publication</strong> Orion Books.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0ef6bcf3-8984-40a0-9801-902a8cbad269",
            "display": "<section><p><strong>Title</strong> <i>The Violent Bear It Away</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1958-09-06.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/89ae749d-9be7-4558-bbcb-e4096c9c49a8",
            "display": "<section><p><strong>Title</strong> <i>Gone with the Wind</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Marvin</p>\n<p><strong>Date</strong> 1954-11-05.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/426ca10f-9157-4955-9a23-f04328de8695",
      "date": "1961-08-22T00:00:00.000-04:00",
      "label": "22 August 1961 - Tromp, Lovie",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Tromp, Lovie"
      ],
      "destinations": [
        "<i>Milliways</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2fa88eb4-48af-4a30-b371-a0bab4335df3",
            "display": "<section><p><strong>Rehearsal</strong>, Five dollar toast meditation blue bottle fashion axe you probably havent heard of them bitters.</p>\n<p><strong>Attended with</strong> Brandt and Prostetnic Vogon Kwaltz</p>\n<p><strong>Place, Date</strong> Davidshire, 23 August 1967</p>\n<p><strong>Director</strong> Hillman Hunter</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/1139c796-f843-4890-b60f-279ef2453a3c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Hella kombucha retro letterpress.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Grunthos the Flatulent</p>\n<p><strong>Place, Date</strong> South Eleonora, 24 May 1962</p>\n<p><strong>Director</strong> Oolon Colluphid</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4bb2dc61-444e-4a19-8e17-f8da6a33b309",
            "display": "<section><p><strong>Radio Broadcast</strong>, Blue <i>bottle knausgaard keytar</i> godard.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Rob McKenna</p>\n<p><strong>Place, Date</strong> Gottliebview, 10 March 1930</p>\n<p><strong>Director</strong> Rob McKenna</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/fb1a3e91-86f2-40cc-8077-f03a9a16908f",
            "display": "<section><p><strong>Catarina Spencer, 1900-1997</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7534400b-8b79-4ac0-a47e-c91f9474fe65",
            "display": "<section><p><strong>Title</strong> <i>Interstellar</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Bistromath, Victorinaberg</p>\n<p><strong>Date(s)</strong> 1924-07-07.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ed07a77a-a39a-40a3-8cfe-4822a2d0787c",
            "display": "<section><p><strong>Title</strong> Tender Is the Night</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Date</strong> 1951-08-12.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c15a5995-f4cd-4585-bf4b-5f87398bfbab",
            "display": "<section><p><strong>Title</strong> <i>The House of Mirth</i></p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Date</strong> 1950-03-27.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5234890d-1f67-4404-b6e0-2a3258ca3473",
      "date": "1963-12-15T00:00:00.000-05:00",
      "label": "15 December 1963 - Hodkiewicz, Lauren",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Hodkiewicz, Lauren"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8284b406-f9c8-4861-8fd9-b11886113953",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> I Love U, but I Don't Trust U Anymore</p>\n<p><strong>Description</strong> Umami fixie cardigan banjo shabby chic lofi banh mi.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/4d9ce698-3c0f-4134-bfdf-df39467803e2",
            "display": "<section><p><strong>Composer</strong> Lunkwill and Fook</p>\n<p><strong>Title</strong> <i>Crimson and Clover</i></p>\n<p><strong>Description</strong> Everyday <i>salvia chartreuse vinyl yolo locavore cornhole</i> roof.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/153f19c5-e778-4a7b-b073-1fb99788c5fc",
            "display": "<section><p><strong>Gagrakacka</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/3e624567-ee08-44e7-9f55-475d95b0db52",
            "display": "<section><p><strong><i>Damogran</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/210ef209-b270-49ef-bb86-b4e27fc4fc13",
            "display": "<section><p><strong><i>Nano</i></strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/68be475f-e638-4989-a8eb-e35e1f0cb861",
            "display": "<section><p><strong>Jutta Hickle, 1906-1977</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f3901c4b-500c-4db1-a203-b1944ded4922",
            "display": "<section><p><strong>Stuart O'Connell, 1905-1977</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f4bf4547-10eb-4c6d-81f6-e79f67ab2429",
            "display": "<section><p><strong>Domenic Batz, 1903-1972</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/6064eb65-3214-4570-a9c3-3fa430e88ab5",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1947-06-22.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/158255a9-9e49-496d-9920-d098e74d0acc",
      "date": "1965-11-28T00:00:00.000-05:00",
      "label": "28 November 1965 - Rempel, Cecilia",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Rempel, Cecilia"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f4a34092-637b-4cc1-8050-d4c4b04f9c3a",
            "display": "<section><p><strong>Allosimanius Syneca</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/be8ead10-d16d-4f6d-a8a2-9c2c07bb050d",
            "display": "<section><p><strong><i>Xaxis</i></strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/1b1cad04-dfbc-4e26-a5c0-08cc80103113",
            "display": "<section><p><strong><i>Sqornshellous Zeta</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6f245301-e0c6-46ec-b91d-5769453fae39",
            "display": "<section><p><strong><i>Betelgeuse</i></strong></p>\n<p>Pinterest <i>bitters park fixie pbrb occupy raw</i> denim.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a9c565d3-cf95-40bf-a3cd-964533439118",
            "display": "<section><p><strong><i>Stavro Mueller Beta</i></strong></p>\n<p>Actually drinking craft beer yolo occupy park bushwick williamsburg distillery.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6d3f5d05-5c23-48b0-a88f-6a38cc5fe23e",
            "display": "<section><p><strong><i>Madagascar</i></strong></p>\n<p>Marfa <i>meggings whatever asymmetrical shabby chic craft beer</i> loko.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/654fde4a-b4f5-4451-93e6-91ae1c56e3f9",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> The Proper Study</p>\n<p><strong>Translated into</strong> French And English by Colin the Security Robot</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/198f3fb3-de63-4210-8390-c4f38d40a7b6",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> Cream</p>\n<p><strong>Description</strong> Loko kinfolk twee carry.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e255a12f-c53f-44f4-9c5c-4e33cb26383a",
            "display": "<section><p><strong>Artist</strong> Pasta Fasta</p>\n<p><strong>Title</strong> Strange Relationship</p>\n<p><strong>Description</strong> Xoxo fanny pack tote bag flexitarian muggle magic schlitz.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e621a26a-b4c9-47f6-baa5-5c077737a782",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Dead On It</i></p>\n<p><strong>Description</strong> Knausgaard <i>shoreditch lumbersexual cliche jean shorts vinegar forage bespoke</i> cornhole.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/12039799-d087-469d-819d-bf9f5d637924",
      "date": "1966-08-02T00:00:00.000-04:00",
      "label": "02 August 1966 - Hilpert, Sherwood",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Hilpert, Sherwood"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/64644baa-7403-467a-aba4-a6ed3e93041d",
            "display": "<section><p><strong>Composer</strong> Dan Streetmentioner</p>\n<p><strong>Title</strong> And God Created Woman</p>\n<p><strong>Description</strong> Banh mi vice authentic cred intelligentsia meditation singleorigin coffee.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/05e9f859-175e-44de-96cb-32babc25680b",
            "display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> <i>Ol' Skool Company</i></p>\n<p><strong>Description</strong> Roof xoxo cray singleorigin coffee.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8fc2ed96-5b19-4032-b052-4dcd93e8f13a",
            "display": "<section><p><strong>Traal</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8c68fb6d-e396-4911-b110-af00911fb6bc",
            "display": "<section><p><strong>Amee Durgan, 1920-1974</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1ce5fdbc-23d6-4d75-bc38-af5505c76a65",
            "display": "<section><p><strong>Lenny Johnson, 1905-1988</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9f9deeb8-5703-4973-812f-f840de08c40f",
            "display": "<section><p><strong>Claude Fay, 1920-1986</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/40eeb765-a16f-4ce1-8394-63f72a9b40a6",
            "display": "<section><p><strong>Title</strong> The World, the Flesh and the Devil</p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Galaxia Woonbeam</p>\n<p><strong>Date</strong> 1924-08-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/85e58597-da62-4c0a-aba7-0d9e67a39606",
            "display": "<section><p><strong>Title</strong> Some Buried Caesar</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Date</strong> 1950-01-01.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4610d0a0-143c-4a8d-b2b5-edd065720366",
      "date": "1967-08-19T00:00:00.000-04:00",
      "label": "19 August 1967 - Champlin, Murray",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Champlin, Murray"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c4fd69d2-31ca-47fd-92d6-4ca510a4e933",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/76bfc7b0-3d9b-4ad0-a580-7cb1399eac60",
            "display": "<section><p><strong><i>Preliumtarn</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8134e3db-690e-47fb-88ee-80e5fc997330",
            "display": "<section><p><strong>Grover Bednar, 1923-1997</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/fa52aa56-579e-4d71-b4a9-e32008a4d30f",
            "display": "<section><p><strong>Title</strong> Network</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Bistromath, Lake Temika</p>\n<p><strong>Date(s)</strong> 1933-08-31.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f6c4138f-b517-4dda-8c86-c51bd4f577e6",
            "display": "<section><p><strong>Title</strong> The Maltese Falcon</p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Billion Year Bunker, Jenicetown</p>\n<p><strong>Date(s)</strong> 1939-05-05.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1628a89f-76de-44d6-80ba-8276951eadd4",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Candlewick Press</i></p>\n<p><strong>Translator</strong> Lunkwill and Fook</p>\n<p><strong>Publication</strong> Chambray narwhal 8-bit skateboard helvetica before they sold out lo-fi thundercats jean shorts.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/4c68a529-3a81-41a6-9d1c-4c3e6b0b6ed0",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Lethe Press</i></p>\n<p><strong>Translator</strong> Yooden Vranx</p>\n<p><strong>Publication</strong> Keffiyeh craft beer banjo pinterest godard skateboard lomo.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c5317e0f-1647-44bf-9a1a-02adfddd9aa5",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Brill</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Publication</strong> Raw denim everyday skateboard salvia mlkshk typewriter cray.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/da6ce145-ab8a-42ec-95cb-f2a963a05c4a",
      "date": "1968-07-15T00:00:00.000-04:00",
      "label": "15 July 1968 - Goldner, Michal",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Goldner, Michal"
      ],
      "destinations": [
        "<i>Guildford</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/842a4631-5d7b-4c07-97e8-6b009b2c3cd1",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1961-02-08.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/8fd36fa0-c360-4528-acff-2c5fab83ab49",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Harlequin Enterprises Ltd</i></p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Publication</strong> Schlitz twee meh taxidermy dreamcatcher.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/3465c1bd-b48a-422d-97c2-f686252034a7",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Barrie &amp; Jenkins</i></p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Publication</strong> Wolf sriracha gluten-free umami.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/dfbf43d5-a898-4ff2-8d1c-7aa020a62cd3",
            "display": "<section><p><strong>Author</strong> Armando Flatley</p>\n<p><strong>Title</strong> Surprised by Joy</p>\n<p><strong>Publication</strong> Bantam Spectra.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/cb5ea813-286a-4289-bc4e-5bc5b66cc259",
            "display": "<section><p><strong>Author</strong> Rashida Anderson I</p>\n<p><strong>Title</strong> Quo Vadis</p>\n<p><strong>Publication</strong> Felony &amp; Mayhem Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/21b2e821-038e-4642-9ecd-d37d3d402b1b",
            "display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> <i>Mountains</i></p>\n<p><strong>Description</strong> Yr <i>gastropub tumblr xoxo</i> cronut.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4e07c60c-7874-49d3-87fc-a6e755f65c65",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> Pretzel Body Logic</p>\n<p><strong>Description</strong> Aesthetic farmtotable squid five dollar toast cray.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/81d91eb2-2f9b-4fcc-92cd-3204635853c0",
      "date": "1968-12-17T00:00:00.000-05:00",
      "label": "17 December 1968 - Ziemann, Rocco",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Ziemann, Rocco"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/94ea90b8-2da8-43e5-9b24-f46f0182ed1a",
            "display": "<section><p><strong><i>Bethselamin</i></strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/17d5ad62-816c-465f-94db-d5faae9955a3",
            "display": "<section><p><strong>NowWhat</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2ea0abd3-9ee8-4f6b-b018-5a7c9fbd24c1",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1923-10-21.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/2b3565f8-dfe2-4e86-9f36-9a048aa4169e",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1951-08-01.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3e988e45-2b62-4c37-9e6e-a95333e8a3d5",
            "display": "<section><p><strong>Author</strong> Barry Manilow, <strong>Original Title</strong> <i>Blood's a Rover</i></p>\n<p><strong>Translated into</strong> Hebrew by Max Quordlepleen</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/84877901-8fe5-4a4d-84e3-39cee7271f64",
            "display": "<section><p><strong>Author</strong> Reg Nullify, <strong>Original Title</strong> <i>Look Homeward, Angel</i></p>\n<p><strong>Translated into</strong> Russian by Emily Saunders</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c4234c28-e5a1-4c30-a564-4fa06056ead7",
            "display": "<section><p><strong>Author</strong> Hotblack Desiato's bodyguard, <strong>Original Title</strong> <i>Things Fall Apart</i></p>\n<p><strong>Translated into</strong> Portuguese by Effrafax of Wug</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5443bc4a-f47e-44ec-a39d-a18cce50a51e",
            "display": "<section><p><strong>Title</strong> <i>The Skull Beneath the Skin</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Date</strong> 1929-02-13.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/8dab7fc7-a696-448a-8272-caf731d2b1cb",
            "display": "<section><p><strong>Title</strong> <i>The Moving Finger</i></p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1961-12-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ecd2811f-cb64-4715-9b1f-e05ccf1eedef",
      "date": "1968-12-22T00:00:00.000-05:00",
      "label": "22 December 1968 - Bruen, Carolynn",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Bruen, Carolynn"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d4c36750-31a1-455a-9edd-0a80f1abfd8c",
            "display": "<section><p><strong>Composer</strong> Zaphod Beeblebrox</p>\n<p><strong>Title</strong> And God Created Woman</p>\n<p><strong>Description</strong> Chillwave roof tousled yolo tumblr kickstarter mixtape.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/34d78ace-3916-46b3-96f7-23d1a300906e",
            "display": "<section><p><strong>Kakrafoon Kappa</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f696f68f-ea52-4646-b4bb-b98b4cae1a2d",
            "display": "<section><p><strong><i>Eroticon VI</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/1da77a12-b5b3-4c47-8266-29a050114891",
            "display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/fde920b1-ffcc-41cf-acd0-374a180c9251",
            "display": "<section><p><strong>Title</strong> Stand by Me</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Starship Titanic, South Haroldfort</p>\n<p><strong>Date(s)</strong> 1947-01-14.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6b03dd93-f456-4d15-8928-6cd4f40e1719",
            "display": "<section><p><strong>Title</strong> <i>The Lion King</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Starship Titanic, South Rogerchester</p>\n<p><strong>Date(s)</strong> 1970-05-11.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f18e6fa3-dadf-4181-8761-198df26454fb",
            "display": "<section><p><strong>Title</strong> Alone on a Wide, Wide Sea</p>\n<p><strong>Proposal/Response</strong> In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Date</strong> 1924-03-24.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d80492d8-cff4-4b5e-9e15-f1b5499fc5ff",
            "display": "<section><p><strong>Title</strong> Jacob Have I Loved</p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Date</strong> 1951-09-18.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/17f84a67-6076-4655-a0aa-ce6c40fb0210",
            "display": "<section><p><strong>Title</strong> Waiting for the Barbarians</p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Ford Prefect</p>\n<p><strong>Date</strong> 1962-06-09.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/df0cab63-46f1-4c1f-bc5d-f517adbb84a9",
      "date": "1969-03-10T00:00:00.000-05:00",
      "label": "10 March 1969 - Gibson, Ned",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Gibson, Ned"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c114b3ac-d13e-49b9-9027-f86463055006",
            "display": "<section><p><strong><i>Viltvodle VI</i></strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cbe9c230-a78d-494a-9cc8-54745b3e8f3f",
            "display": "<section><p><strong>Jermaine Mosciski, 1920-1980</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/283ef07d-5f3d-4285-95cd-c6891bbd3ade",
            "display": "<section><p><strong>Tony McDermott, 1913-1973</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/5445e8ad-19aa-4b52-805a-b6034ea68c20",
            "display": "<section><p><strong><i>London</i></strong></p>\n<p>90s <i>shoreditch chicharrones thundercats authentic pourover</i> schlitz.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/034a1088-5e9e-448c-b60e-2bed0fad4a95",
            "display": "<section><p><strong>Slim's Throat Emporium</strong></p>\n<p>Letterpress cleanse keytar selfies marfa xoxo locavore chia pbrb.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/02bac3cc-0b37-4b67-9439-d7ef39817e22",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Sams Publishing</i></p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Publication</strong> Trust fund everyday whatever loko tumblr.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/31f1c7da-0050-4b7f-a8bf-f316d16d2954",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>Simon &amp; Schuster</i></p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Publication</strong> Locavore distillery mumblecore gastropub.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0245a67e-130a-45a1-a8fb-9e1d65e47b05",
      "date": "1970-10-23T00:00:00.000-04:00",
      "label": "23 October 1970 - Hirthe, Nedra",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Hirthe, Nedra"
      ],
      "destinations": [
        "Stavro Mueller Beta"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/412092e7-a596-4ad2-820d-c9804e84f2e6",
            "display": "<section><p><strong>Composer</strong> Grunthos the Flatulent</p>\n<p><strong>Title</strong> Peach</p>\n<p><strong>Description</strong> Trust fund before they sold out bushwick meditation intelligentsia fingerstache echo.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d2880676-fa0f-4d7a-ae2f-e31657e6fd24",
            "display": "<section><p><strong>Amos Mayert, 1928-1983</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3aef0cac-738b-4a2c-a1e6-d0243727a11d",
            "display": "<section><p><strong>Preliumtarn</strong></p>\n<p>Keffiyeh scenester humblebrag hashtag messenger bag yr dreamcatcher farmtotable.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/20ee1edb-fb6b-4939-9e61-4b1b7c0c2c35",
            "display": "<section><p><strong><i>Zarss</i></strong></p>\n<p>Sartorial <i>selvage pickled banh mi kickstarter blog shabby</i> chic.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9f9a8851-2e3b-4465-8c38-f713f31fe1b9",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1922-11-15.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3c19bef4-2977-4434-bed1-677ec576041d",
      "date": "1971-04-12T00:00:00.000-05:00",
      "label": "12 April 1971 - Gorczany, Marylynn",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Gorczany, Marylynn"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8c0dc26d-c9f5-4f4c-a242-1c3fd6de3b22",
            "display": "<section><p><strong>Frogstar World C</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a032011f-61a8-4fac-a2aa-9bc92d2bec32",
            "display": "<section><p><strong><i>Flargathon</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/30bf7648-9558-4fff-b1b9-b7a74a67fba7",
            "display": "<section><p><strong><i>Krikkit</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/121a824d-4b39-462c-b683-5e0a82a2c114",
            "display": "<section><p><strong>Augusta Hackett, 1912-1992</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/bb75fbb9-36f6-4678-8e56-0b1d2345dd84",
            "display": "<section><p><strong>Danuta Hackett, 1913-1990</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9e36966d-6037-4b72-b623-920a6a8f520c",
            "display": "<section><p><strong>Lovella Rau, 1914-1987</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/32f295ff-e8eb-41a2-81c0-73ea8824d8a8",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1937-05-22.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/87294847-fd58-4bd9-a697-c2c58b4ede66",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1961-03-07.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b34631f5-cb0c-4a02-946d-672c1c844b2f",
            "display": "<section><p><strong>Title</strong> Dying of the Light</p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Date</strong> 1946-10-05.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c7f0b67d-f968-4a1f-b9b5-d2d8f05a5183",
            "display": "<section><p><strong>Title</strong> <i>Cabbages and Kings</i></p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Date</strong> 1956-06-20.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/42793a20-14ab-406d-946b-eee8046b2f74",
            "display": "<section><p><strong>Title</strong> <i>Blithe Spirit</i></p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Date</strong> 1941-07-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/40926d68-c086-4d1f-a459-93aaf7a5c195",
      "date": "1971-11-18T00:00:00.000-05:00",
      "label": "18 November 1971 - Bosco, Wiley",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Bosco, Wiley"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/de6524fd-6a29-46f5-95b1-33b771348197",
            "display": "<section><p><strong>Composer</strong> Eddie the Computer</p>\n<p><strong>Title</strong> <i>Jam Of The Year</i></p>\n<p><strong>Description</strong> Disrupt popup phlogiston shoreditch narwhal keytar fixie kogi marfa.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/05cff38b-ed3c-44e5-9a23-ecec854e6263",
            "display": "<section><p><strong>Composer</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Something in the Water (Does Not Compute)</i></p>\n<p><strong>Description</strong> Phlogiston biodiesel microdosing vice.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/91da6495-5f93-4af2-a910-8a822dfd3b8b",
            "display": "<section><p><strong><i>Bethselamin</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f65215cc-0dd9-4b6b-9ade-0d904e7486f2",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c4bc7e01-4651-43b6-9892-c5e15ff0693f",
            "display": "<section><p><strong>Nano</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/773733f6-9ec1-4970-9471-b80a9e1d9777",
            "display": "<section><p><strong>Author</strong> Brad Murazik CPA</p>\n<p><strong>Title</strong> O Jerusalem!</p>\n<p><strong>Publication</strong> Papadakis Publisher.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d519e106-6383-493c-ab71-6f7a696d8a93",
            "display": "<section><p><strong>Author</strong> Donald Wiegand</p>\n<p><strong>Title</strong> <i>The Wind's Twelve Quarters</i></p>\n<p><strong>Publication</strong> Zondervan.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0078ad43-43a3-4e2e-bfb5-7d6d1c09454c",
            "display": "<section><p><strong>Title</strong> <i>Waiting for the Barbarians</i></p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Date</strong> 1945-11-04.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8649d6cd-b38d-4f88-84ae-155f51238ea5",
      "date": "1973-07-22T00:00:00.000-04:00",
      "label": "22 July 1973 - Ratke, Bethany",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Ratke, Bethany"
      ],
      "destinations": [
        "<i>Bistro Illegal</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f7065d5a-5649-454b-8405-6446c00dc62c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Pbrb <i>next level disrupt selfies synth</i> migas.</p>\n<p><strong>Attended with</strong> Donny and Eccentrica Gallumbits</p>\n<p><strong>Place, Date</strong> Marquettaborough, 15 July 1939</p>\n<p><strong>Director</strong> Lunkwill and Fook</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5142df41-6cbf-4431-a1fd-d3bb88139f03",
            "display": "<section><p><strong>Rehearsal</strong>, Echo <i>pinterest ramps you probably havent heard of them umami brunch typewriter kombucha</i> cronut.</p>\n<p><strong>Attended with</strong> Brandt and Zaphod Beeblebrox</p>\n<p><strong>Place, Date</strong> Brakusport, 24 March 1945</p>\n<p><strong>Director</strong> Emily Saunders</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/411561c9-712c-4f43-ada7-9d6c4a8213da",
            "display": "<section><p><strong>Radio Broadcast</strong>, Gentrify green juice sartorial knausgaard freegan small batch singleorigin coffee.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Pizpot Gargravarr</p>\n<p><strong>Place, Date</strong> Braunville, 14 May 1928</p>\n<p><strong>Director</strong> Hillman Hunter</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/af293118-9f02-4304-b208-d4c42245b998",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1924-03-21.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/92fcfb56-657a-42e3-980d-d3af36a9c119",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1924-08-19.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/dc06b701-348f-49b5-94e8-d7c6d78eb1b3",
            "display": "<section><p><strong>Author</strong> Ivana Koss</p>\n<p><strong>Title</strong> <i>The Way Through the Woods</i></p>\n<p><strong>Publication</strong> New Holland Publishers.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e0c18338-ae4b-4ded-a5e7-6552e5b8b55e",
            "display": "<section><p><strong>Author</strong> Ethan Kub</p>\n<p><strong>Title</strong> Of Human Bondage</p>\n<p><strong>Publication</strong> Belknap Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6ba00b12-45c3-4d47-9f3c-34eac4b8a40d",
            "display": "<section><p><strong>Artist</strong> Agrajag</p>\n<p><strong>Title</strong> <i>I Love U, but I Don't Trust U Anymore</i></p>\n<p><strong>Description</strong> Twee ethical blog wes anderson deep v mixtape celiac.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3cc00edc-2840-49d2-a6c2-9035f05a4ea0",
      "date": "1977-12-26T00:00:00.000-05:00",
      "label": "26 December 1977 - Dickinson, Elvira",
      "language": "french",
      "volume": 0,
      "recipients": [
        "Dickinson, Elvira"
      ],
      "destinations": [
        "<i>France</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/a03608c4-3812-4daf-a5e2-aa1e16493ab9",
            "display": "<section><p><strong>Radio Broadcast</strong>, Everyday lofi sartorial williamsburg freegan humblebrag.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Trillian</p>\n<p><strong>Place, Date</strong> Altenwerthberg, 30 June 1939</p>\n<p><strong>Director</strong> Hotblack Desiato's bodyguard</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1777f647-ea8a-40ed-bcc2-7d12710942fe",
            "display": "<section><p><strong>Composer</strong> Agda</p>\n<p><strong>Title</strong> Another Lonely Christmas</p>\n<p><strong>Description</strong> Stumptown blue bottle churchkey deep v leggings shoreditch authentic.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6aae3717-eabf-4e15-a863-c46b029a22a5",
            "display": "<section><p><strong>Bruno Torphy, 1912-1971</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/62703978-9418-48c4-8e0c-67b1b6087c21",
            "display": "<section><p><strong>Barrett Gibson, 1901-1990</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6a8953a1-1011-464c-b811-4da26fea6774",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> <i>The Beautiful Ones</i></p>\n<p><strong>Description</strong> Xoxo selvage iphone mumblecore twee helvetica forage cardigan.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/735b805b-b5bf-439a-8ead-f57c003c87fc",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> (There'll Never B) Another Like Me</p>\n<p><strong>Description</strong> Cleanse <i>hella wes anderson pinterest popup coldpressed</i> cornhole.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/92d03021-3e4e-4b15-9b09-1e1f2bea3498",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> Still Waiting</p>\n<p><strong>Description</strong> Salvia <i>goth churchkey pug typewriter authentic helvetica</i> fingerstache.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d562cf6d-2bd6-482c-b8b0-071070456870",
      "date": "1978-06-25T00:00:00.000-04:00",
      "label": "25 June 1978 - Bode, Adriene",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Bode, Adriene"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/29fdf00e-61b3-4735-a3d9-1a4a69d5e3b2",
            "display": "<section><p><strong>Crista Stark, 1903-1994</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/76dfb790-d280-421d-8f89-b561987fb5af",
            "display": "<section><p><strong>Federico Heathcote, 1927-1982</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cfc0e6fa-baa7-441a-99a9-81f286588631",
            "display": "<section><p><strong>Linwood Reilly, 1926-1976</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e357a4cf-c674-42c0-8a83-04792bc6426a",
            "display": "<section><p><strong>Title</strong> Citizen Kane</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Don’t Panic</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Beerside</p>\n<p><strong>Date(s)</strong> 1963-05-03.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/1172fb0c-0cbe-458a-be11-0aac2805ddc2",
            "display": "<section><p><strong>Title</strong> Sholay</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Vogon Constructor Fleet, Hodkiewiczmouth</p>\n<p><strong>Date(s)</strong> 1923-02-22.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/c8035dce-5ecf-4f0d-9218-983ab1a4c264",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> Paths of Glory</p>\n<p><strong>Translated into</strong> Norwegian by JinJenz</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9befa449-1485-4a69-8e5f-f5c770424862",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> <i>Frequent Hearses</i></p>\n<p><strong>Translated into</strong> Portuguese by Hillman Hunter</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4702dc54-f41f-436b-b1f6-83a3d93f21a8",
            "display": "<section><p><strong>Author</strong> Random Dent, <strong>Original Title</strong> To a God Unknown</p>\n<p><strong>Translated into</strong> Gaelic by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f793caf7-be9c-48f5-95e3-3c3a53ba464c",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> <i>I Would Die 4 U</i></p>\n<p><strong>Description</strong> Selfies lomo raw denim hashtag scenester.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ddc5bf02-8172-449b-966b-572bbb40476c",
            "display": "<section><p><strong>Artist</strong> Wonko the Sane</p>\n<p><strong>Title</strong> It's Gonna Be A Beautiful Night</p>\n<p><strong>Description</strong> Glutenfree muggle magic five dollar toast cray chia kombucha mixtape.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
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
          "doc_count": 10
        },
        {
          "key": 0,
          "doc_count": 6
        },
        {
          "key": 3,
          "doc_count": 6
        },
        {
          "key": 2,
          "doc_count": 4
        },
        {
          "key": 4,
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
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1966-01-01T00:00:00.000Z",
          "key": -126230400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1967-01-01T00:00:00.000Z",
          "key": -94694400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1968-01-01T00:00:00.000Z",
          "key": -63158400000,
          "doc_count": 3
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 0
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
          "doc_count": 1
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
        },
        {
          "key_as_string": "1987-01-01T00:00:00.000Z",
          "key": 536457600000,
          "doc_count": 2
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
          "key": "Eastern Rhode Island Institute",
          "doc_count": 16
        },
        {
          "key": "Southern Oregon Institute",
          "doc_count": 14
        },
        {
          "key": "Northern Lehner",
          "doc_count": 13
        },
        {
          "key": "Southern Alaska University",
          "doc_count": 12
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
          "doc_count": 9
        },
        {
          "key": "french",
          "doc_count": 8
        },
        {
          "key": "italian",
          "doc_count": 7
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

