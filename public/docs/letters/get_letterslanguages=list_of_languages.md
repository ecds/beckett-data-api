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
X-Total-Count: 12
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d3144113c46fabbc1f8f6787772b0e36&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c08a9a63-415b-445a-a6b1-c9108012c2a6
X-Runtime: 3.021945
Vary: Origin
Content-Length: 55334</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/c5a27689-8589-411f-9563-e75065ae3212",
      "date": "1950-06-29T00:00:00.000-04:00",
      "label": "29 June 1950 - Raynor, Rosy",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Raynor, Rosy"
      ],
      "destinations": [
        "Madagascar"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1fcc754b-5dee-4335-9d63-4d517f06394f",
            "display": "<section><p><strong>Blagulon Kappa</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/74e07816-cecc-46ec-afb2-de451cc90e98",
            "display": "<section><p><strong>Brontitall</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/51940c91-22d8-4cda-a297-4216c2847aa3",
            "display": "<section><p><strong><i>London</i></strong></p>\n<p>Helvetica neutra pug typewriter craft beer readymade yolo.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e8fb682d-2393-4ef9-8f21-21aa4d636835",
            "display": "<section><p><strong><i>Madagascar</i></strong></p>\n<p>Photo booth pourover biodiesel distillery blue bottle humblebrag farmtotable mumblecore shoreditch.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/aa9615c1-f1e4-45bd-8183-ef6acbbb064e",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> University of Chicago Press</p>\n<p><strong>Translator</strong> Eddie the Computer</p>\n<p><strong>Publication</strong> Art party crucifix tumblr austin farm-to-table 90's vegan.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cf8dfc0b-307a-4a43-99e9-33b1d6ec5abd",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> J. M. Dent</p>\n<p><strong>Translator</strong> Eccentrica Gallumbits</p>\n<p><strong>Publication</strong> Slow-carb +1 normcore pop-up post-ironic kale chips goth gastropub.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6df96dbe-5c7a-427a-8899-967ba671c7c2",
            "display": "<section><p><strong>Author</strong> Grunthos the Flatulent, <strong>Original Title</strong> <i>Tiger! Tiger!</i></p>\n<p><strong>Translated into</strong> Norwegian by Questular Rontok</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a03ee91-6dd4-44c1-a9af-d080b9229dad",
      "date": "1956-08-07T00:00:00.000-04:00",
      "label": "07 August 1956 - Schimmel, Shawana",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Schimmel, Shawana"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9b2176b6-187c-4c94-9dfb-761e990068f6",
            "display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> Screwdriver</p>\n<p><strong>Description</strong> Chicharrones <i>intelligentsia twee glutenfree carry squid yr loko</i> tryhard.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/95e4c23d-e30e-4836-bed7-287c2dbbee45",
            "display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> Kiss</p>\n<p><strong>Description</strong> Muggle magic skateboard tote bag thundercats pbrb viral gastropub.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e6a52f91-89e2-4704-810d-a9eba17e73ca",
            "display": "<section><p><strong>Composer</strong> Trillian</p>\n<p><strong>Title</strong> U Got The Look</p>\n<p><strong>Description</strong> Stumptown flannel shabby chic everyday wayfarers bushwick keytar biodiesel vhs.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/18c338d1-6093-4581-b541-832c386af6cd",
            "display": "<section><p><strong>Will Doyle, 1910-1986</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4511850a-5a41-4f1a-bd26-b6fd3be5483e",
            "display": "<section><p><strong>Paris Friesen, 1914-1973</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/beb2e36b-5ac5-4d14-af17-9c0bd7e0d542",
            "display": "<section><p><strong>Ibiza</strong></p>\n<p>Cleanse <i>cray pabst humblebrag farmtotable</i> xoxo.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/13adc0c5-e7cf-47b0-a5dd-00400ffc8b77",
            "display": "<section><p><strong><i>Highgate Cemetery</i></strong></p>\n<p>Health <i>vinyl keffiyeh loko</i> kombucha.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9a7ec246-b236-467f-9583-1c6d8e3ef375",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1928-06-18.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/1e0be7b8-2818-4fd9-8aab-3e142e2a01f5",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1948-04-24.</strong></p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/da94e089-ec6c-45e6-ad4a-f8d895265fc9",
      "date": "1959-09-17T00:00:00.000-04:00",
      "label": "17 September 1959 - Nicolas, Sterling",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Nicolas, Sterling"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/45c850e7-6854-4c05-935c-65e3c0edfec8",
            "display": "<section><p><strong>29 Arlington Avenue</strong></p>\n<p>Yuccie <i>forage small batch direct</i> trade.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4a0110d4-e480-4272-9130-664fd7067ea7",
            "display": "<section><p><strong>Total Perspective Vortex</strong></p>\n<p>Beard <i>humblebrag gentrify butcher ugh carry slowcarb small batch</i> chillwave.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/e6c8c076-cf30-4698-b50d-16653cd09e1c",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1961-11-15.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a0b7819f-ccac-4daa-aa9f-2783203a70b2",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1951-10-14.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/844e3d6a-3486-440b-a0d0-9b0d41d6ec84",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Open University Press</p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Publication</strong> Goth chicharrones shoreditch whatever.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/479beaf9-1da8-4372-bb11-38dca4c0988c",
            "display": "<section><p><strong>Artist</strong> Oolon Colluphid</p>\n<p><strong>Title</strong> 1000 X's &amp; O's</p>\n<p><strong>Description</strong> Forage <i>kickstarter xoxo iphone raw denim keytar</i> cornhole.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6f387034-868f-416a-91bc-5483bc7b606d",
      "date": "1960-04-06T00:00:00.000-05:00",
      "label": "06 April 1960 - Keebler, Erich",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Keebler, Erich"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ef34b8d0-27dd-4df9-a5f0-1642b035a56a",
            "display": "<section><p><strong>Reading</strong>, Kickstarter <i>migas polaroid portland direct trade forage small</i> batch.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Paula Nancy Millstone Jennings</p>\n<p><strong>Place, Date</strong> East Sherly, 27 October 1968</p>\n<p><strong>Director</strong> Agrajag</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/993bace7-d945-44d1-b0c9-7e73d560fd3f",
            "display": "<section><p><strong>Rehearsal</strong>, Ennui bicycle rights shoreditch paleo.</p>\n<p><strong>Attended with</strong> Karl Hungus and JinJenz</p>\n<p><strong>Place, Date</strong> Lake Kathryntown, 25 March 1927</p>\n<p><strong>Director</strong> Colin the Security Robot</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2da722a1-1bec-4161-8e8d-d92820c34852",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1954-01-01.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/53a4c8dd-83af-495d-802a-a5978f046c84",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1943-11-22.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d2af3f8f-f85a-4f6e-b6a9-3f3dab409925",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1949-04-13.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/201aaa2f-a62c-4a1a-ae40-2c5dc9e057a2",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Left Book Club</p>\n<p><strong>Translator</strong> Zarquon</p>\n<p><strong>Publication</strong> Goth locavore sriracha brunch plaid wolf church-key pickled bitters.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7825531a-fcbb-444b-b33e-88c4f1f4af01",
            "display": "<section><p><strong>Title</strong> <i>When the Green Woods Laugh</i></p>\n<p><strong>Proposal/Response</strong> Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Translator</strong> Dan Streetmentioner</p>\n<p><strong>Date</strong> 1944-07-21.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/67fc7a93-a75a-48e6-8364-5124c3480ac6",
      "date": "1961-12-14T00:00:00.000-05:00",
      "label": "14 December 1961 - Schowalter, Justin",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Schowalter, Justin"
      ],
      "destinations": [
        "The Domain of The King"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8b8948b8-576c-4584-9027-49cc996fc6f6",
            "display": "<section><p><strong>Golgafrincham</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a7132dbb-8e24-49fe-8bba-8c297d101059",
            "display": "<section><p><strong><i>Sector ZZ9 Plural Z Alpha</i></strong></p>\n<p>Humblebrag xoxo locavore chartreuse.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4e264600-3d8e-4c40-bde7-666cb8b5325d",
            "display": "<section><p><strong><i>Ibiza</i></strong></p>\n<p>Tryhard seitan lofi echo heirloom marfa austin 3 wolf moon franzen.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/de8328e6-ab88-4f5f-83a1-ccb6103b8356",
            "display": "<section><p><strong>Rickmansworth</strong></p>\n<p>Flexitarian bitters biodiesel yolo tumblr portland.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/f71b7a0c-e4c7-48c5-98bd-e0661a9cc0d0",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Del Rey Books</i></p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Publication</strong> Everyday lomo quinoa ennui cray.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d285f0f7-eb30-4f2a-88d1-607f0bb07dce",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Chronicle Books</i></p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Publication</strong> Marfa gentrify bitters loko pickled next level organic pbr&amp;b.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ee5a5f77-1341-46df-a2fe-c3e20db0ea7d",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Cloverdale Corporation</i></p>\n<p><strong>Translator</strong> Humma Kavula</p>\n<p><strong>Publication</strong> Before they sold out hella asymmetrical whatever tote bag venmo.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/eee1efa0-e022-4b9a-ba90-675ced15dda2",
            "display": "<section><p><strong>Title</strong> Beneath the Bleeding</p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Tricia McMillan</p>\n<p><strong>Date</strong> 1967-03-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/72d679ca-6971-4188-af16-fab89226b98c",
            "display": "<section><p><strong>Title</strong> An Evil Cradling</p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Date</strong> 1930-03-17.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1498cd52-2909-492e-b2c0-5705e57117bc",
            "display": "<section><p><strong>Title</strong> I Know Why the Caged Bird Sings</p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Date</strong> 1933-09-13.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/157500e7-3e8f-4b67-8f52-7d54881b5f0b",
      "date": "1964-01-17T00:00:00.000-05:00",
      "label": "17 January 1964 - O'Connell, Shondra",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "O'Connell, Shondra"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/5ebfe6a5-a508-41a8-92c2-1e9ab926955f",
            "display": "<section><p><strong>Shyla Kuhic, 1922-1983</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5dfcc6a6-99d0-4939-a71c-3c140cb527af",
            "display": "<section><p><strong>Carmen Maggio, 1917-1981</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/a55f431e-7557-4bae-86f6-4dc9babcca8c",
            "display": "<section><p><strong>Tyree Borer, 1922-1986</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/2dd6596f-df6b-4dd7-aa5b-7f61ca0e6936",
            "display": "<section><p><strong>Title</strong> <i>American Beauty</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Tanngrisnir, Karmaberg</p>\n<p><strong>Date(s)</strong> 1961-01-04.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ab49376f-17f2-466c-ab31-9a13e0a515cc",
            "display": "<section><p><strong>Title</strong> <i>Back to the Future</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Starship Titanic, North Truman</p>\n<p><strong>Date(s)</strong> 1961-10-19.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/9030ecad-e6f6-4209-8bed-317e82d5e005",
            "display": "<section><p><strong>Title</strong> <i>Paper Moon</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / 42</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Krikkit One, Kertzmannside</p>\n<p><strong>Date(s)</strong> 1937-05-24.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/fa8d503c-d3a3-4aa1-a0d1-81e72c6d47bf",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1952-12-25.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/8ae4c559-ff41-44eb-a637-d0605985c10f",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1945-08-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/92cb83f2-bf65-4b7b-9843-a55d2b1a7672",
            "display": "<section><p><strong>Columbia</strong></p>\n<p><strong>1928-02-06.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3f9f3270-25c1-40f3-8d56-7683325c303f",
            "display": "<section><p><strong>Artist</strong> Deep Thought</p>\n<p><strong>Title</strong> <i>When You Were Mine</i></p>\n<p><strong>Description</strong> Kale <i>chips you probably havent heard of them blue bottle venmo wes anderson vinyl</i> kitsch.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7dd8d974-6226-415b-8eaa-14ee388b2393",
      "date": "1969-02-28T00:00:00.000-05:00",
      "label": "28 February 1969 - Feeney, Riley",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Feeney, Riley"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2d9b78f0-e306-4820-a85d-23792298f530",
            "display": "<section><p><strong>NowWhat</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5bfe5697-a146-4212-9793-44570683ac0b",
            "display": "<section><p><strong>Title</strong> Cinema Paradiso</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Bistromath, Port Hortensiaville</p>\n<p><strong>Date(s)</strong> 1932-11-16.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/035c520a-cf0b-4c8f-b15a-4b02635c52af",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1950-05-13.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c9c55313-7221-4006-932c-881ceaad0ae6",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Nonesuch Press</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Publication</strong> Hashtag freegan chillwave marfa waistcoat tilde.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ead9a458-7bab-49f1-9f1b-ecfb420059f6",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Blackstaff Press</i></p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Publication</strong> Vhs yolo blue bottle art party gentrify.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/615e3dba-bf22-4d6e-94db-c82fe9a2efb0",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Taylor &amp; Francis</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Publication</strong> Mixtape jean shorts typewriter crucifix swag before they sold out quinoa single-origin coffee.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f1e517ad-60de-4099-847d-52adbe39296c",
      "date": "1970-03-16T00:00:00.000-05:00",
      "label": "16 March 1970 - Schoen, Quinn",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Schoen, Quinn"
      ],
      "destinations": [
        "Arthur Dent's house"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/06a75509-1f59-4b8f-b56c-8de4684b250f",
            "display": "<section><p><strong>Marline Weissnat, 1911-1990</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/248af076-4eb1-40ac-b102-7fccd7d8a8b2",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1933-01-25.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/342b4a13-18b8-4b20-b0fc-7e2607a9abe8",
            "display": "<section><p><strong>Author</strong> Elease Hansen</p>\n<p><strong>Title</strong> A Glass of Blessings</p>\n<p><strong>Publication</strong> Gay Men's Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/61834303-0932-420e-8297-12c2b5bd8fa0",
            "display": "<section><p><strong>Author</strong> Mathilde Torphy</p>\n<p><strong>Title</strong> Fair Stood the Wind for France</p>\n<p><strong>Publication</strong> Hodder Headline.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6f4ee7fe-c660-4e63-a1df-b243e4383209",
            "display": "<section><p><strong>Author</strong> Humma Kavula, <strong>Original Title</strong> <i>A Handful of Dust</i></p>\n<p><strong>Translated into</strong> Ukrainian by Vroomfondel</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/16bccc33-0b63-4e43-8e79-a3dd1be6967f",
            "display": "<section><p><strong>Author</strong> Tricia McMillan, <strong>Original Title</strong> Edna O'Brien</p>\n<p><strong>Translated into</strong> Icelandic by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b25f97c0-0949-438e-b032-decaf4e198f9",
      "date": "1970-11-03T00:00:00.000-05:00",
      "label": "03 November 1970 - Connelly, Chung",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Connelly, Chung"
      ],
      "destinations": [
        "<i>Ibiza</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/8efa9c2e-789a-4309-bb3c-95c12e78382a",
            "display": "<section><p><strong><i>Burphon XII</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/1349a47b-89df-45fb-8155-2993cd5adf62",
            "display": "<section><p><strong>Gagrakacka</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/fa26c7d1-4262-442f-8364-748ec689a5ae",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Black Dog Publishing</i></p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Publication</strong> Kickstarter poutine knausgaard quinoa.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d82354eb-4cd1-488a-8469-998b818e628c",
            "display": "<section><p><strong>Author</strong> Ricki Krajcik</p>\n<p><strong>Title</strong> Things Fall Apart</p>\n<p><strong>Publication</strong> Zondervan.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/3aaa8f80-2d80-4056-bb12-9ac6deb1fe9c",
            "display": "<section><p><strong>Author</strong> Viola Stracke</p>\n<p><strong>Title</strong> <i>In Death Ground</i></p>\n<p><strong>Publication</strong> Godwit Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1885656e-e23f-4465-a6ed-c293ebba83d8",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> <i>Gold</i></p>\n<p><strong>Description</strong> Intelligentsia <i>gastropub art party disrupt health tofu humblebrag organic</i> plaid.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/31d0a14f-e3e2-4517-b70f-a8fd95d802c6",
            "display": "<section><p><strong>Artist</strong> JinJenz</p>\n<p><strong>Title</strong> <i>Gold</i></p>\n<p><strong>Description</strong> Tilde <i>diy blog trust fund messenger bag gentrify tryhard waistcoat</i> fingerstache.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/374d2fdb-3142-43d8-b04c-9e4ffad7ba7b",
      "date": "1979-10-21T00:00:00.000-04:00",
      "label": "21 October 1979 - Wiza, Darrick",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Wiza, Darrick"
      ],
      "destinations": [
        "Pleiades system"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ec43dfed-49ee-4858-b840-a153f25273fe",
            "display": "<section><p><strong>Composer</strong> Roosta</p>\n<p><strong>Title</strong> When Doves Cry</p>\n<p><strong>Description</strong> Chartreuse blue bottle readymade craft beer polaroid yuccie.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ad179c98-24d2-454a-b6b7-6457033ec710",
            "display": "<section><p><strong>Composer</strong> Emily Saunders</p>\n<p><strong>Title</strong> Kiss</p>\n<p><strong>Description</strong> Park <i>marfa selfies popup pug</i> pourover.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e9fa5ddd-c704-4946-b720-6c18099761de",
            "display": "<section><p><strong>Title</strong> Inception</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Bistromath, Hermanshire</p>\n<p><strong>Date(s)</strong> 1925-12-07.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a954a55a-afa5-4db6-b4e4-018db9f05f80",
            "display": "<section><p><strong>Title</strong> <i>The Green Mile</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Heart of Gold, Jocelynton</p>\n<p><strong>Date(s)</strong> 1954-12-22.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/872a67c0-3708-4b9c-b73b-c35f5fcde9eb",
            "display": "<section><p><strong>Title</strong> All About Eve</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Heart of Gold, West Tamatha</p>\n<p><strong>Date(s)</strong> 1964-11-30.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/433bbc9c-bda4-4ff8-8fcf-8ba78a2e4ef9",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1947-10-15.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d36a995a-e786-4fc5-b8cb-fbd305e636e0",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1925-06-08.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/32ef5ab7-c8eb-472e-a6e2-2faae17e6457",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1962-01-03.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/26434177-cc4e-41b2-a88f-f0eb7d401689",
            "display": "<section><p><strong>Author</strong> Rosamond Blick</p>\n<p><strong>Title</strong> Antic Hay</p>\n<p><strong>Publication</strong> Scholastic Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/371952e7-fa84-4744-a104-2e7ebb4fa2e9",
            "display": "<section><p><strong>Author</strong> Eladia Ryan</p>\n<p><strong>Title</strong> Specimen Days</p>\n<p><strong>Publication</strong> Hogarth Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7cc2336c-e218-44a2-a128-20751a4f9bb1",
      "date": "1983-03-15T00:00:00.000-05:00",
      "label": "15 March 1983 - Connelly, Dania",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Connelly, Dania"
      ],
      "destinations": [
        "The Domain of The King"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bacfc1bf-caad-42dc-a973-fa558230dbd6",
            "display": "<section><p><strong>Marylou Emmerich, 1918-1996</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e58890cb-0832-4af3-be9d-dfa04fbc7f3e",
            "display": "<section><p><strong>Nikita Homenick, 1918-1995</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5028d137-0565-422e-963d-591022b05290",
            "display": "<section><p><strong>Title</strong> The Intouchables</p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Heart of Gold, Marylintown</p>\n<p><strong>Date(s)</strong> 1927-01-02.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c1a2692a-e651-43aa-b445-59981aa63989",
            "display": "<section><p><strong>Title</strong> The Shawshank Redemption</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> RW6, Lachelleside</p>\n<p><strong>Date(s)</strong> 1954-07-21.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c14d91a4-26dc-4b32-8262-9052bab038ef",
            "display": "<section><p><strong>Title</strong> <i>Lock, Stock and Two Smoking Barrels</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Tanngrisnir, Quianastad</p>\n<p><strong>Date(s)</strong> 1957-07-31.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/50539ba2-3c8e-4eeb-befe-c9c952cd8f46",
            "display": "<section><p><strong>Author</strong> Benny Wisoky</p>\n<p><strong>Title</strong> <i>Mother Night</i></p>\n<p><strong>Publication</strong> Cloverdale Corporation.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8d4e47fc-25d3-4f2b-8dfc-2ddb2c6615aa",
            "display": "<section><p><strong>Author</strong> Terence Stanton</p>\n<p><strong>Title</strong> The Moon by Night</p>\n<p><strong>Publication</strong> Dedalus Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/9027e525-ab97-4628-944e-530108afec27",
            "display": "<section><p><strong>Author</strong> Diann Barton</p>\n<p><strong>Title</strong> The World, the Flesh and the Devil</p>\n<p><strong>Publication</strong> Legend Books.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e9c97297-6f5c-40f3-a6c8-b96d2b9361fe",
            "display": "<section><p><strong>Artist</strong> Zaphod Beeblebrox</p>\n<p><strong>Title</strong> <i>Thunder</i></p>\n<p><strong>Description</strong> Bushwick keffiyeh 1 crucifix.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/de7b010a-70a3-46c9-9b2f-72668bbfff48",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> <i>Kiss</i></p>\n<p><strong>Description</strong> Hoodie <i>photo booth diy</i> artisan.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e1dbbcd2-8000-4078-8f1e-0064d6ec024e",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> <i>Sometimes It Snows In April</i></p>\n<p><strong>Description</strong> Sriracha <i>ethical meggings pickled celiac postironic pork belly tofu</i> forage.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/724f6c03-b118-4e51-869e-eaaa7137b670",
      "date": "1984-11-15T00:00:00.000-05:00",
      "label": "15 November 1984 - Sanford, Stuart",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Sanford, Stuart"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/13b98cc2-4474-43da-99b4-ea250226332b",
            "display": "<section><p><strong>Rehearsal</strong>, Glutenfree <i>flannel bushwick franzen photo booth butcher venmo</i> pug.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Zarniwoop</p>\n<p><strong>Place, Date</strong> East Penneychester, 01 September 1961</p>\n<p><strong>Director</strong> Random Dent</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f535ec93-49e0-495f-a6b0-c7968e9e1b6a",
            "display": "<section><p><strong>Theatre</strong>, 3 wolf moon five dollar toast salvia pug retro readymade shabby chic squid.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Hotblack Desiato's bodyguard</p>\n<p><strong>Place, Date</strong> Winstonfurt, 09 January 1951</p>\n<p><strong>Director</strong> Hotblack Desiato</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/da4f3626-3d52-4388-bca1-b74c64f04b8b",
            "display": "<section><p><strong>Rehearsal</strong>, Hoodie slowcarb vinyl park.</p>\n<p><strong>Attended with</strong> Karl Hungus and Effrafax of Wug</p>\n<p><strong>Place, Date</strong> North Ernest, 14 September 1965</p>\n<p><strong>Director</strong> Yooden Vranx</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/12de8912-ca9d-4ac8-8034-cb2d422b5a3e",
            "display": "<section><p><strong>Vesta Macejkovic, 1909-1984</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9d178180-a3c9-4475-8ee6-815a4a3cd323",
            "display": "<section><p><strong>Tayna Ankunding, 1912-1998</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f3a0f2bf-d263-4cb7-8bda-84483be014b1",
            "display": "<section><p><strong>Jonathan Wilderman, 1911-1985</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/2437c1f3-925b-4bbf-9d1d-96bc56514d62",
            "display": "<section><p><strong><i>Bournemouth</i></strong></p>\n<p>3 <i>wolf moon narwhal selfies art party ennui dreamcatcher</i> 90s.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b5c14c49-36f1-4277-92e5-d0f6897a415e",
            "display": "<section><p><strong>Rickmansworth</strong></p>\n<p>Seitan <i>goth godard 8bit</i> mumblecore.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4e3a6f72-bac5-40b3-9ff7-314c6b43649e",
            "display": "<section><p><strong>Artist</strong> Arthur Philip Deodat</p>\n<p><strong>Title</strong> <i>Baltimore</i></p>\n<p><strong>Description</strong> Xoxo forage tofu pickled cleanse polaroid glutenfree williamsburg.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bfb54ced-42c2-453e-9193-21adbfa96072",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> Tamborine</p>\n<p><strong>Description</strong> Sartorial <i>pork belly crucifix photo booth polaroid authentic skateboard messenger bag</i> keffiyeh.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 4,
          "doc_count": 5
        },
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 1,
          "doc_count": 2
        },
        {
          "key": 2,
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
      "doc_count": 12,
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
          "doc_count": 1
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
          "doc_count": 1
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 2
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
          "doc_count": 0
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
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Glover",
          "doc_count": 7
        },
        {
          "key": "North Barrows Institute",
          "doc_count": 6
        },
        {
          "key": "South Kentucky Academy",
          "doc_count": 6
        },
        {
          "key": "Northern North Carolina College",
          "doc_count": 5
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
          "doc_count": 8
        },
        {
          "key": "italian",
          "doc_count": 8
        },
        {
          "key": "german",
          "doc_count": 4
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 12,
    "links": {
      "self": "http://example.org/letters?languages=German%2C+italian&page=1"
    }
  }
}
~~~

