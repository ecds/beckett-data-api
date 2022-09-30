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

<pre>GET /letters?start_date=1974-05-02</pre>

#### Query Parameters

<pre>start_date: 1974-05-02</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1974-05-02&gt;; rel=&#39;self&#39;
X-Total-Count: 12
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b69e59cafb1b121fb8c74a095e8c8200&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ccd8b05c-45c8-4ece-823e-fd7cd1ba8db0
X-Runtime: 2.645755
Vary: Origin
Content-Length: 53810</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/35c425e1-e779-4b84-a5a0-017d8feace83",
      "date": "1974-05-02T00:00:00.000-04:00",
      "label": "02 May 1974 - Bayer, Bruno",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Bayer, Bruno"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2093c9e9-e046-4dc0-8aee-ea88f703b5f9",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1946-08-21.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c4114b58-29c4-4a37-bd57-136cc8dc9256",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Pantheon Books at Random House</p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Publication</strong> Jean shorts aesthetic swag flexitarian.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/29969aed-97f4-438d-8a18-0131ee31dd4c",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Cambridge University Press</p>\n<p><strong>Translator</strong> Gag Halfrunt</p>\n<p><strong>Publication</strong> Slow-carb offal pork belly drinking ugh disrupt skateboard quinoa cleanse.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a8fab92c-d1fd-4089-8ca7-cd79538abe2b",
            "display": "<section><p><strong>Artist</strong> Magrathean sperm whale</p>\n<p><strong>Title</strong> The Beautiful Ones</p>\n<p><strong>Description</strong> Listicle 90s venmo yuccie.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/876268b7-4815-4f31-ab98-8d2383ea05b5",
            "display": "<section><p><strong>Artist</strong> Emily Saunders</p>\n<p><strong>Title</strong> Thieves In The Temple</p>\n<p><strong>Description</strong> Tote <i>bag schlitz hashtag iphone</i> heirloom.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/9436a8be-7c1a-4125-b285-6fdbab993e11",
            "display": "<section><p><strong>Title</strong> <i>Endless Night</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Date</strong> 1953-11-09.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/58d61c41-d7c1-4ff9-8d32-3500c641a0d9",
            "display": "<section><p><strong>Title</strong> The Proper Study</p>\n<p><strong>Proposal/Response</strong> But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1960-09-06.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/df501dee-d04a-4786-9036-1c552888c62f",
      "date": "1976-09-21T00:00:00.000-04:00",
      "label": "21 September 1976 - Klein, Arminda",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Klein, Arminda"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/38c03b1e-a862-4b58-b153-8ad3369d8615",
            "display": "<section><p><strong>Rehearsal</strong>, Tilde <i>semiotics chartreuse slowcarb disrupt everyday phlogiston</i> churchkey.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Rob McKenna</p>\n<p><strong>Place, Date</strong> Reannashire, 15 July 1930</p>\n<p><strong>Director</strong> Lintilla</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d91d871b-b085-4edb-842e-c42a770710db",
            "display": "<section><p><strong><i>Guildford</i></strong></p>\n<p>Ramps <i>pork belly intelligentsia freegan tilde portland organic</i> umami.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6be2f7e1-185c-40fc-9e29-39bf608ca764",
            "display": "<section><p><strong><i>Sector XXXZ5QZX</i></strong></p>\n<p>Humblebrag <i>seitan twee fashion axe roof godard</i> vinyl.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1afb2c05-cf1b-408c-a714-d3c6e9d4bf59",
            "display": "<section><p><strong>Author</strong> Joel Emmerich</p>\n<p><strong>Title</strong> No Longer at Ease</p>\n<p><strong>Publication</strong> Felony &amp; Mayhem Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b8ce97d2-75f1-4cc7-8881-3b7650584645",
            "display": "<section><p><strong>Author</strong> Gag Halfrunt, <strong>Original Title</strong> From Here to Eternity</p>\n<p><strong>Translated into</strong> Swedish by Trillian</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3bbe304d-2321-4622-b8d9-974a7a81de17",
            "display": "<section><p><strong>Author</strong> Slartibartfast, <strong>Original Title</strong> Surprised by Joy</p>\n<p><strong>Translated into</strong> Icelandic by The Allitnils</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/554d89a7-6c69-44a1-969f-49e252f0c1d3",
      "date": "1977-02-10T00:00:00.000-05:00",
      "label": "10 February 1977 - Kuhlman, Leeann",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Kuhlman, Leeann"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4f7a1f90-73cf-4f33-979d-cd7c5ff38661",
            "display": "<section><p><strong>Composer</strong> Eddie the Computer</p>\n<p><strong>Title</strong> Another Lonely Christmas</p>\n<p><strong>Description</strong> Whatever <i>knausgaard tote bag hella pourover everyday</i> cornhole.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5ff5a021-896d-4b78-a802-a88b6236b08d",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>Let's Go Crazy</i></p>\n<p><strong>Description</strong> Food <i>truck pork belly hella bushwick</i> shoreditch.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/12cc0733-ddbe-4505-8639-27e93d2d50ee",
            "display": "<section><p><strong>Composer</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> <i>Alphabet St.</i></p>\n<p><strong>Description</strong> Schlitz wes anderson gentrify ethical you probably havent heard of them meggings organic.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/eb78d6aa-b54f-4de1-afc8-915f20384458",
            "display": "<section><p><strong>Nelson Cremin, 1919-1973</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e26c05df-0e30-407e-b8c8-96f1b155a5f7",
            "display": "<section><p><strong>Milford Mraz, 1913-1981</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5a9cc609-b0ac-49e9-8c14-3b3fbec30f5c",
            "display": "<section><p><strong>Ginny Padberg, 1914-1984</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f8f9aa97-d4ce-4e8b-9e06-7c94dcf6bc96",
            "display": "<section><p><strong>Title</strong> <i>Monsters, Inc.</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Tanngrisnir, South Dean</p>\n<p><strong>Date(s)</strong> 1961-07-16.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3faa60a9-5ebf-4a78-80ea-7780ba149bd8",
            "display": "<section><p><strong>Author</strong> Zaphod Beeblebrox, <strong>Original Title</strong> <i>Wildfire at Midnight</i></p>\n<p><strong>Translated into</strong> Marathi by Arthur Dent</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b480cd6f-f91e-468f-b92e-a2455ebf72a7",
            "display": "<section><p><strong>Author</strong> Vroomfondel, <strong>Original Title</strong> Death Be Not Proud</p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Barry Manilow</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d5e8ab2f-daf5-476c-a7ff-e82b7d7a91cc",
      "date": "1978-10-23T00:00:00.000-04:00",
      "label": "23 October 1978 - Skiles, Brant",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Skiles, Brant"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ca2cb884-dd0d-464a-aec1-f660d031b4d9",
            "display": "<section><p><strong>Composer</strong> Trillian</p>\n<p><strong>Title</strong> <i>D.M.S.R</i></p>\n<p><strong>Description</strong> Phlogiston tousled churchkey venmo jean shorts whatever polaroid narwhal cred.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/feac172e-1aa6-4c1e-8527-3bd8711ae970",
            "display": "<section><p><strong>Composer</strong> Tricia McMillan</p>\n<p><strong>Title</strong> <i>Pink Cashmere</i></p>\n<p><strong>Description</strong> Helvetica kitsch irony taxidermy etsy locavore selfies master.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/944df604-0d4d-43ab-a283-b53ed5007a73",
            "display": "<section><p><strong>Composer</strong> Mella</p>\n<p><strong>Title</strong> <i>Another Lonely Christmas</i></p>\n<p><strong>Description</strong> Slowcarb <i>craft beer swag 3 wolf moon fingerstache irony</i> distillery.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/58e55e52-6367-4217-8b45-3bb5aae49f31",
            "display": "<section><p><strong><i>Kria</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/df9639cc-6375-4c0b-8db0-ed78a4b019f5",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Banner of Truth Trust</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Chambray kickstarter five dollar toast post-ironic.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/21d530e5-d1fc-410b-aacc-90ce54f17e8e",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Eel Pie Publishing</p>\n<p><strong>Translator</strong> Humma Kavula</p>\n<p><strong>Publication</strong> Single-origin coffee tote bag echo raw denim.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/89581eb3-1ae6-4232-ab0f-63239051fe6a",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Broadview Press</i></p>\n<p><strong>Translator</strong> Roosta</p>\n<p><strong>Publication</strong> Cardigan thundercats cred waistcoat truffaut.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/cca7bab1-b576-47bb-af5e-97aaac01e11c",
            "display": "<section><p><strong>Author</strong> JinJenz, <strong>Original Title</strong> <i>Fear and Trembling</i></p>\n<p><strong>Translated into</strong> Polish by Reg Nullify</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/491ebb96-baf2-41ee-a7a8-8326f649e2cb",
            "display": "<section><p><strong>Author</strong> Trin Tragula, <strong>Original Title</strong> <i>Cabbages and Kings</i></p>\n<p><strong>Translated into</strong> Danish by Oolon Colluphid</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ba104858-abfb-448e-acf3-80f3977c69a3",
      "date": "1978-11-24T00:00:00.000-05:00",
      "label": "24 November 1978 - Smitham, Drusilla",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Smitham, Drusilla"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a20b34f1-516e-4fec-90bc-8b55dfcddad1",
            "display": "<section><p><strong>Casey Kreiger, 1927-1989</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/87c6dc45-d44d-4d1b-b81b-332e49a87b12",
            "display": "<section><p><strong><i>Pleiades system</i></strong></p>\n<p>Ramps <i>iphone hashtag singleorigin coffee vice cray brooklyn trust</i> fund.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/dd2ed20a-849a-4bc3-a7f6-ff6a5f6c5189",
            "display": "<section><p><strong>Betelgeuse</strong></p>\n<p>Helvetica <i>chicharrones biodiesel raw denim shabby chic wolf marfa kickstarter</i> chartreuse.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bda4fabb-9048-4a80-923c-83e9286438f1",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Target Books</i></p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Publication</strong> Mumblecore five dollar toast tumblr blue bottle pinterest iphone raw denim.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/283602a8-9bc0-40df-b832-f42fe60e3755",
            "display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> <i>Anova Books</i></p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Publication</strong> Banjo five dollar toast kogi offal lumbersexual stumptown diy kickstarter.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7c1f4f71-7cbf-4b42-99e6-d0d9988844aa",
            "display": "<section><p><strong>Title</strong> <i>No Country for Old Men</i></p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Date</strong> 1970-05-21.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/95ce062c-f751-466d-ab45-9eb9a58c9051",
      "date": "1980-05-21T00:00:00.000-04:00",
      "label": "21 May 1980 - Jakubowski, Ulysses",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Jakubowski, Ulysses"
      ],
      "destinations": [
        "Café Lou"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/2f0b8d98-341d-421d-8b1c-626caa519edb",
            "display": "<section><p><strong>Radio Broadcast</strong>, Pitchfork <i>health tofu migas</i> irony.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Pasta Fasta</p>\n<p><strong>Place, Date</strong> West Tiffinyland, 15 August 1965</p>\n<p><strong>Director</strong> Vroomfondel</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a18985fc-a567-4a87-8960-b67c06445448",
            "display": "<section><p><strong>Composer</strong> Phouchg</p>\n<p><strong>Title</strong> Endorphinmachine</p>\n<p><strong>Description</strong> Kombucha <i>forage direct trade celiac tattooed mixtape</i> plaid.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9da3e60a-d8b7-459a-8ce4-1e8c4d9143c2",
            "display": "<section><p><strong>Composer</strong> Fenchurch</p>\n<p><strong>Title</strong> <i>319</i></p>\n<p><strong>Description</strong> Humblebrag quinoa banjo readymade mlkshk pug ennui sustainable poutine.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1f1f0d39-2da7-49e8-990d-31bb70b664c6",
            "display": "<section><p><strong>Latisha Hansen, 1906-1980</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/0da48227-f89d-4b51-9bef-9e81dc5cbe85",
            "display": "<section><p><strong>Rolf Krajcik, 1929-1980</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1cce5a0a-644b-4582-be4e-b7a2c9af71f6",
            "display": "<section><p><strong>Title</strong> <i>In a Glass Darkly</i></p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Date</strong> 1924-06-15.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ba0a3834-e540-42fd-adfc-3423e6e38cb2",
            "display": "<section><p><strong>Title</strong> <i>Gone with the Wind</i></p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Date</strong> 1955-10-16.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ad1ee476-ebee-4221-a505-19948f8f8aab",
      "date": "1981-02-09T00:00:00.000-05:00",
      "label": "09 February 1981 - Ullrich, Elanor",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Ullrich, Elanor"
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3adb7e10-fcc4-4d32-9197-f10303b69594",
            "display": "<section><p><strong>Flargathon</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e3ee3acc-1fd3-4628-b503-6265a504d607",
            "display": "<section><p><strong>Dangrabad Beta</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/43c0c02d-e53b-41b6-baae-37cc3ed76ecd",
            "display": "<section><p><strong>Viltvodle VI</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6ba9b1b2-04ef-4496-862c-41bad120a2ac",
            "display": "<section><p><strong><i>Asbleg</i></strong></p>\n<p>Health cornhole locavore banjo wes anderson synth hammock letterpress pork belly.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/70004f91-2b83-4226-b741-6669d1354b84",
            "display": "<section><p><strong><i>Ibiza</i></strong></p>\n<p>Pug everyday brunch iphone occupy raw denim photo booth tilde.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/ecfc9e74-a726-436a-bb41-472757e58347",
            "display": "<section><p><strong>Title</strong> Stalker</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Krikkit One, South Frederickview</p>\n<p><strong>Date(s)</strong> 1950-06-09.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/39bb596b-4e1a-4bf7-a04a-3bb0f3e49d9b",
            "display": "<section><p><strong>Title</strong> Mad Max: Fury Road</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> RW6, Port Emogeneside</p>\n<p><strong>Date(s)</strong> 1941-08-25.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/965783b1-ac4b-4a3c-bb77-63a9c837124d",
            "display": "<section><p><strong>Title</strong> Cinema Paradiso</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Billion Year Bunker, Labadieland</p>\n<p><strong>Date(s)</strong> 1971-08-13.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d9f1ebce-87fa-4591-826d-93a6a49f1371",
            "display": "<section><p><strong>Author</strong> Gov. Vi Wuckert</p>\n<p><strong>Title</strong> <i>The Other Side of Silence</i></p>\n<p><strong>Publication</strong> Kogan Page.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8d5ff5f6-9817-49b5-bbf0-dc35311cc6d4",
      "date": "1985-02-04T00:00:00.000-05:00",
      "label": "04 February 1985 - Harris, Max",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Harris, Max"
      ],
      "destinations": [
        "<i>Sector ZZ9 Plural Z Alpha</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7e147d47-967b-48be-af0b-564e5c7f6797",
            "display": "<section><p><strong>Radio Broadcast</strong>, Iphone authentic hella bitters keytar messenger bag organic truffaut chartreuse.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Marvin</p>\n<p><strong>Place, Date</strong> South Aleshiaport, 03 June 1970</p>\n<p><strong>Director</strong> Slartibartfast</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d36d4552-246f-40c9-8e6f-ae746ad3face",
            "display": "<section><p><strong>Rehearsal</strong>, Pbrb <i>hammock retro fashion</i> axe.</p>\n<p><strong>Attended with</strong> Walter Sobchak and The Allitnils</p>\n<p><strong>Place, Date</strong> Wardport, 18 May 1949</p>\n<p><strong>Director</strong> Hillman Hunter</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/1d362100-2b28-42e6-8db9-8af84b2b609a",
            "display": "<section><p><strong>Radio Broadcast</strong>, Actually wayfarers artisan locavore mlkshk raw denim.</p>\n<p><strong>Attended with</strong> Donny and Trin Tragula</p>\n<p><strong>Place, Date</strong> North Tabethahaven, 19 January 1925</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/d6258faa-6759-4615-8750-8e304db19efd",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Casemate Publishers</i></p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Publication</strong> Blog put a bird on it cornhole chicharrones small batch.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3208df64-01c3-48d1-96ca-784126cf37ae",
            "display": "<section><p><strong>Author</strong> Nobuko Cremin</p>\n<p><strong>Title</strong> <i>Now Sleeps the Crimson Petal</i></p>\n<p><strong>Publication</strong> Harcourt Assessment.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/520f55f8-a1d6-45ba-ab0b-7146f6ee7c4b",
            "display": "<section><p><strong>Author</strong> Julian Lueilwitz PhD</p>\n<p><strong>Title</strong> <i>Nectar in a Sieve</i></p>\n<p><strong>Publication</strong> Newnes.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/67bddf12-99ac-4e44-af1c-7461adf681e4",
            "display": "<section><p><strong>Author</strong> Leanne Heathcote</p>\n<p><strong>Title</strong> Tender Is the Night</p>\n<p><strong>Publication</strong> Virgin Publishing.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0cb033e0-f615-42ba-ad7f-1e37e7281b32",
            "display": "<section><p><strong>Title</strong> Moab Is My Washpot</p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Date</strong> 1951-03-29.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/05fd8376-a0d0-4297-8abe-d479d4e979ae",
            "display": "<section><p><strong>Title</strong> <i>All Passion Spent</i></p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Date</strong> 1940-08-14.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/951c75e4-72c6-4962-b593-b6bc66e6ad1b",
      "date": "1985-03-08T00:00:00.000-05:00",
      "label": "08 March 1985 - Kuhic, Lane",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Kuhic, Lane"
      ],
      "destinations": [
        "Boston"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/973b3e96-5839-4352-93b2-0c539ba30075",
            "display": "<section><p><strong>Reading</strong>, Leggings tryhard pork belly ennui franzen.</p>\n<p><strong>Attended with</strong> Brandt and Lintilla</p>\n<p><strong>Place, Date</strong> East Pearlyshire, 02 April 1963</p>\n<p><strong>Director</strong> Paula Nancy Millstone Jennings</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f4ffc90b-69a3-435e-a4aa-020b5ebae048",
            "display": "<section><p><strong>Radio Broadcast</strong>, Migas blog cred hoodie.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Lunkwill and Fook</p>\n<p><strong>Place, Date</strong> New Fabian, 24 May 1952</p>\n<p><strong>Director</strong> JinJenz</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/032fd1dc-562f-493c-9f63-b0c3ed5d3a16",
            "display": "<section><p><strong>Composer</strong> Mr. Prosser</p>\n<p><strong>Title</strong> When You Were Mine</p>\n<p><strong>Description</strong> Vice butcher kale chips neutra etsy pourover.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/a9475de8-4255-4bf1-9dd9-d45a13d0acf5",
            "display": "<section><p><strong>Composer</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> Guitar</p>\n<p><strong>Description</strong> Literally cray farmtotable churchkey hoodie.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8943da84-637e-4d50-9e29-771c344142fe",
            "display": "<section><p><strong>Geralyn Koss, 1923-1994</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/bdf8be6e-ac16-4666-a785-c545fb10047b",
            "display": "<section><p><strong>Andrew Rempel, 1916-1983</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/034e0abd-9634-426b-a31b-41dff50a2034",
            "display": "<section><p><strong>Paz Davis, 1921-1985</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a0480c95-af3f-466e-9bdf-e49ccba56fe9",
            "display": "<section><p><strong>Denmark</strong></p>\n<p>Kogi <i>90s readymade pinterest hella muggle</i> magic.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c2f57b4d-8ba6-4971-beb3-ecd4d8466185",
            "display": "<section><p><strong>Bistro Illegal</strong></p>\n<p>Kitsch pitchfork brooklyn migas truffaut 3 wolf moon.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3098981f-a4af-44c8-b00b-4056023c8c45",
      "date": "1986-01-27T00:00:00.000-05:00",
      "label": "27 January 1986 - Schoen, Victor",
      "language": "french",
      "volume": 4,
      "recipients": [
        "Schoen, Victor"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/871e6139-3f9b-412e-8b61-0c214ca0d5eb",
            "display": "<section><p><strong>Composer</strong> Marvin</p>\n<p><strong>Title</strong> Darling Nikki</p>\n<p><strong>Description</strong> Typewriter dreamcatcher next level selfies.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/230460e6-2c87-4ba6-a959-dd9d27ae80d0",
            "display": "<section><p><strong>Cleo Bruen, 1918-1989</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/0b94b7fb-30f3-4b7a-b473-857faffcf52f",
            "display": "<section><p><strong>Francis Frami, 1916-1974</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/65566be9-ca07-40ca-9f42-45010846c6fc",
            "display": "<section><p><strong>Winston Mayer, 1917-1980</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c93890b1-12ba-4eea-b121-3237efd24212",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Brooklyn portland drinking tote bag xoxo blue bottle.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f61fec9b-cc82-46ab-b00c-e60833a81d85",
            "display": "<section><p><strong><i>Rupert</i></strong></p>\n<p>Organic <i>popup disrupt flexitarian tacos</i> polaroid.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7ce84a55-c913-47a3-b548-fbd71185a194",
            "display": "<section><p><strong>Frogstar system</strong></p>\n<p>Twee franzen five dollar toast 3 wolf moon hammock put a bird on it.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6d9c0658-aab1-49ff-b577-3160faa59ad6",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Heyday Books</p>\n<p><strong>Translator</strong> Majikthise</p>\n<p><strong>Publication</strong> Photo booth loko marfa carry knausgaard tattooed everyday.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/7834a7ad-f324-4bab-9c26-041ae42d8ade",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> Hodder Headline</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Publication</strong> Hammock bushwick wayfarers cardigan meggings artisan.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/0d97d7c3-a552-497a-80e3-c40cb74f6beb",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> BBC Books</p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Publication</strong> Single-origin coffee direct trade art party stumptown typewriter kinfolk etsy offal.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4cf9041d-a6b0-4e86-99ad-a609ca40c502",
      "date": "1986-04-06T00:00:00.000-05:00",
      "label": "06 April 1986 - Murray, Isreal",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Murray, Isreal"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/98c8d846-0152-448e-a2ea-d65c71280926",
            "display": "<section><p><strong><i>Fallia</i></strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ca077624-7a42-4fc2-941e-86fcf4ce6ef7",
            "display": "<section><p><strong>Bartledan</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/993721c9-211e-4829-9d4b-95edce20817b",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4260cedd-c5de-41f6-b953-995b4266123c",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1946-09-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/561f26e8-c982-45a2-94d1-9ba5a908072c",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1963-11-21.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/24952158-4762-4287-a403-4abed8c9e5d6",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1923-05-31.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/089aebfc-3cb0-41ff-9137-ca7bb75d0710",
            "display": "<section><p><strong>Author</strong> Gregoria Wilderman</p>\n<p><strong>Title</strong> <i>Brandy of the Damned</i></p>\n<p><strong>Publication</strong> Holland Park Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/eeeef42a-deb2-4f91-bc66-23ba2a0c1a04",
            "display": "<section><p><strong>Author</strong> Fr. Allen Harris</p>\n<p><strong>Title</strong> In a Glass Darkly</p>\n<p><strong>Publication</strong> Chronicle Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a57d9fdf-5299-4e02-87a4-8b8d34c3e97f",
            "display": "<section><p><strong>Author</strong> Jamey Abernathy</p>\n<p><strong>Title</strong> Dulce et Decorum Est</p>\n<p><strong>Publication</strong> Hogarth Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2aa8e655-6587-41ab-ad98-aa1d8d2b86b8",
            "display": "<section><p><strong>Artist</strong> Slartibartfast</p>\n<p><strong>Title</strong> 17 Days</p>\n<p><strong>Description</strong> Bicycle rights small batch hella hoodie microdosing health austin tacos kitsch.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6cfd963d-1db5-4df7-9535-a561f9dcb690",
            "display": "<section><p><strong>Artist</strong> Agda</p>\n<p><strong>Title</strong> My Name Is Prince</p>\n<p><strong>Description</strong> Bespoke retro selfies tote bag vegan heirloom.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/55a31047-5259-4899-973e-f273256f0b47",
            "display": "<section><p><strong>Artist</strong> Zarniwoop</p>\n<p><strong>Title</strong> The Beautiful Ones</p>\n<p><strong>Description</strong> Leggings <i>yr fashion axe marfa literally cronut</i> disrupt.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/406e11cf-f039-4176-b946-22f045498e11",
      "date": "1988-12-18T00:00:00.000-05:00",
      "label": "18 December 1988 - Tillman, Destiny",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Tillman, Destiny"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b8d7d9eb-4ddb-4469-89b1-72cc96b94804",
            "display": "<section><p><strong>Theatre</strong>, Xoxo <i>green juice kogi freegan gastropub hella umami</i> thundercats.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Tricia McMillan</p>\n<p><strong>Place, Date</strong> Salstad, 30 April 1934</p>\n<p><strong>Director</strong> Tricia McMillan</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8f87fbad-0ed1-4bef-bab6-1232a14c691a",
            "display": "<section><p><strong>Vicki Schiller, 1908-1987</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f0d891a1-ce0d-4f65-b0aa-9be9e6d1761d",
            "display": "<section><p><strong>Dustin VonRueden, 1919-1990</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/80c508e9-6697-4076-9e35-2871a2b67ab1",
            "display": "<section><p><strong>Robbie Smith, 1917-1995</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e0e112a4-e26d-478d-bc26-9a99a4a25387",
            "display": "<section><p><strong><i>Slim's Throat Emporium</i></strong></p>\n<p>Etsy polaroid wes anderson retro messenger bag postironic knausgaard.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/33787cea-090b-4523-b20f-bbac601ecf92",
            "display": "<section><p><strong><i>Ibiza</i></strong></p>\n<p>Helvetica diy singleorigin coffee sartorial.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9a5d7b92-58c1-4ab0-9ce3-640f9ee20cd4",
            "display": "<section><p><strong><i>Milliways</i></strong></p>\n<p>Polaroid pitchfork tote bag aesthetic typewriter paleo hashtag vice.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3ef1eb6e-af79-47fc-812c-aba33be944d4",
            "display": "<section><p><strong>Author</strong> Mathew Goyette</p>\n<p><strong>Title</strong> <i>Consider Phlebas</i></p>\n<p><strong>Publication</strong> Marshall Cavendish.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 3,
          "doc_count": 3
        },
        {
          "key": 4,
          "doc_count": 3
        },
        {
          "key": 0,
          "doc_count": 2
        },
        {
          "key": 1,
          "doc_count": 2
        },
        {
          "key": 2,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "doc_count": 12,
      "buckets": [
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
          "doc_count": 1
        },
        {
          "key_as_string": "1977-01-01T00:00:00.000Z",
          "key": 220924800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 2
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
          "doc_count": 2
        },
        {
          "key_as_string": "1986-01-01T00:00:00.000Z",
          "key": 504921600000,
          "doc_count": 2
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
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Wolff",
          "doc_count": 6
        },
        {
          "key": "East Iowa Institute",
          "doc_count": 5
        },
        {
          "key": "Western Wisozk",
          "doc_count": 5
        },
        {
          "key": "West Hansen",
          "doc_count": 4
        }
      ]
    },
    "language": {
      "doc_count": 12,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 4
        },
        {
          "key": "french",
          "doc_count": 3
        },
        {
          "key": "italian",
          "doc_count": 3
        },
        {
          "key": "german",
          "doc_count": 2
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
      "self": "http://example.org/letters?page=1&start_date=1974-05-02"
    }
  }
}
~~~

