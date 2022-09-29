# Letters API

## GET /letters?start_date=:YYYY-MM-DD&amp;end_date=:YYYY-MM-DD - On or Between Dates

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

<pre>GET /letters?start_date=1971-09-20&amp;end_date=1977-05-30</pre>

#### Query Parameters

<pre>start_date: 1971-09-20
end_date: 1977-05-30</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1977-05-30&amp;page=1&amp;start_date=1971-09-20&gt;; rel=&#39;self&#39;
X-Total-Count: 7
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0782590bf50bb1db9407b93c6fdbd2ca&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6440fd5e-0b0e-48f4-9d78-b60cd9a99de5
X-Runtime: 2.688099
Vary: Origin
Content-Length: 34660</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/ec91cfcd-941e-43ac-a707-09f791b61b26",
      "date": "1971-09-20T00:00:00.000-04:00",
      "label": "20 September 1971 - Pfeffer, Christeen",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Pfeffer, Christeen"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3237ccb1-aa5f-4454-bf02-58ddc63237b3",
            "display": "<section><p><strong>Composer</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Keytar pourover typewriter kickstarter singleorigin coffee 1 cliche synth muggle magic.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/a07260c9-006a-4d44-a015-5ade322e0c41",
            "display": "<section><p><strong>Composer</strong> Agda</p>\n<p><strong>Title</strong> <i>Cloreen Baconskin</i></p>\n<p><strong>Description</strong> You probably havent heard of them godard cred everyday brooklyn.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d6c7af99-4ede-4b9d-b5ba-456bc107e144",
            "display": "<section><p><strong>Composer</strong> Mella</p>\n<p><strong>Title</strong> <i>Still Waiting</i></p>\n<p><strong>Description</strong> Mlkshk readymade ugh kombucha direct trade kinfolk xoxo butcher green juice.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4d88c5e4-1528-441a-837f-090f47d4e5f5",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/3aa5a8fd-ea96-438b-bacb-5bf2025691c3",
            "display": "<section><p><strong>Damogran</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/c3392eb5-1149-4e35-b111-3d59becbdca7",
            "display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1932-06-22.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a61a53ad-aaa1-4901-9174-5a08b9f92d73",
            "display": "<section><p><strong>Title</strong> A Summer Bird-Cage</p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Date</strong> 1953-12-14.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f21edb4f-f309-4f96-b177-15a4f257c628",
            "display": "<section><p><strong>Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Date</strong> 1943-01-14.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/40b8312f-1826-41a1-be7a-4a40367737f8",
            "display": "<section><p><strong>Title</strong> <i>The Stars' Tennis Balls</i></p>\n<p><strong>Proposal/Response</strong> It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Date</strong> 1965-06-18.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b39bf95c-2b6b-4d8e-ae3c-fba9a61f6864",
      "date": "1971-09-29T00:00:00.000-04:00",
      "label": "29 September 1971 - Williamson, Daren",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Williamson, Daren"
      ],
      "destinations": [
        "<i>Bistro Illegal</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/2a63fbd4-1060-4b44-a3bf-d1bc45974884",
            "display": "<section><p><strong><i>Ysllodins</i></strong></p>\n<p>Microdosing <i>dreamcatcher artisan narwhal biodiesel hashtag</i> wolf.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/41533a73-7d6f-4e32-902c-87a07e8621e2",
            "display": "<section><p><strong>Rupert</strong></p>\n<p>Singleorigin <i>coffee 8bit fingerstache chia</i> meggings.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/20df0652-8e3b-4d27-967e-bb55bb425b40",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1961-07-06.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0d12f176-a4c6-4b1a-92f6-ec9fa702f89b",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1947-01-10.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/30a8d654-bc92-451a-9496-5cb3aa5e1c5c",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1966-02-03.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/93dd3ad3-177b-41c6-8204-04d987c4f938",
            "display": "<section><p><strong>Author</strong> Vroomfondel, <strong>Original Title</strong> <i>The Last Enemy</i></p>\n<p><strong>Translated into</strong> Danish by Magrathean sperm whale</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f2d31c2e-d26b-4ded-843b-e251445a884c",
            "display": "<section><p><strong>Author</strong> Trillian, <strong>Original Title</strong> <i>Nine Coaches Waiting</i></p>\n<p><strong>Translated into</strong> Polish by Colin the Security Robot</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8093650e-8837-44ad-a021-7cbdf9317b64",
            "display": "<section><p><strong>Title</strong> A Summer Bird-Cage</p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Date</strong> 1955-06-15.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9a206dfa-7e04-46be-a14e-119ea5138bdf",
      "date": "1972-05-24T00:00:00.000-04:00",
      "label": "24 May 1972 - O'Keefe, Modesto",
      "language": "french",
      "volume": 2,
      "recipients": [
        "O'Keefe, Modesto"
      ],
      "destinations": [
        "<i>Ziggie's Den of Iniquity</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6b4066f7-4518-4248-913e-af276da7e0e7",
            "display": "<section><p><strong>Radio Broadcast</strong>, Xoxo carry bespoke biodiesel.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Arthur Dent</p>\n<p><strong>Place, Date</strong> Leonorebury, 05 August 1955</p>\n<p><strong>Director</strong> Rob McKenna</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7d1d5232-fc7c-4c31-8c74-a298312ea31c",
            "display": "<section><p><strong>Composer</strong> Trillian</p>\n<p><strong>Title</strong> 319</p>\n<p><strong>Description</strong> Goth authentic jean shorts narwhal bitters meggings put a bird on it.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7849cd37-575a-4136-b79d-af0fa63582ef",
            "display": "<section><p><strong>Composer</strong> Magrathean sperm whale</p>\n<p><strong>Title</strong> <i>The Most Beautiful Girl In The World</i></p>\n<p><strong>Description</strong> Ethical <i>cardigan jean shorts thundercats mixtape</i> dreamcatcher.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/04461a16-7771-4f58-8675-0caff2dc155d",
            "display": "<section><p><strong>Rudolph Kessler, 1908-1992</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/965f53e6-0088-4f31-bb15-76aa07021591",
            "display": "<section><p><strong>Halina O'Kon, 1905-1997</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7d81ac1b-93ca-480d-bd4d-b2bf7d45f4bf",
            "display": "<section><p><strong>Author</strong> Jewell Hyatt</p>\n<p><strong>Title</strong> Nine Coaches Waiting</p>\n<p><strong>Publication</strong> Eel Pie Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4e6dc760-22a2-4221-bb45-e7f6ddfaa75f",
            "display": "<section><p><strong>Author</strong> Ellan Steuber</p>\n<p><strong>Title</strong> <i>Beneath the Bleeding</i></p>\n<p><strong>Publication</strong> Berg Publishers.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ebce5a4e-d371-48f9-976b-163f80dbd4d3",
      "date": "1975-03-09T00:00:00.000-04:00",
      "label": "09 March 1975 - Ritchie, Numbers",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Ritchie, Numbers"
      ],
      "destinations": [
        "Fenchurch Street railway station"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/60117450-3d62-4bc5-895b-08e41b522331",
            "display": "<section><p><strong>Radio Broadcast</strong>, Forage <i>mustache heirloom scenester truffaut diy crucifix wes anderson</i> retro.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Charles Darwin</p>\n<p><strong>Place, Date</strong> Port Carolyn, 01 December 1958</p>\n<p><strong>Director</strong> Trin Tragula</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e9ae49b6-0e8b-403d-8513-aafb1927828c",
            "display": "<section><p><strong>Reading</strong>, Occupy <i>kombucha tacos organic</i> cronut.</p>\n<p><strong>Attended with</strong> Brandt and Tricia McMillan</p>\n<p><strong>Place, Date</strong> West Joaquinmouth, 27 June 1945</p>\n<p><strong>Director</strong> Gag Halfrunt</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0553d866-1299-4b4d-8db8-5f81e7714af8",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>University of Michigan Press</i></p>\n<p><strong>Translator</strong> Max Quordlepleen</p>\n<p><strong>Publication</strong> Ennui pinterest poutine lomo forage yuccie.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/29857cd2-f040-4abd-93a9-d0b45684d0be",
            "display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> <i>Candlewick Press</i></p>\n<p><strong>Translator</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Publication</strong> Raw denim brooklyn try-hard cold-pressed hashtag chia.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/caebf04e-6b90-4041-872b-2c6bf6089fcb",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Airiti Press</i></p>\n<p><strong>Translator</strong> Prak</p>\n<p><strong>Publication</strong> Keffiyeh brunch cray literally.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e70fc44b-0205-48f9-bb8b-30db66250e1f",
            "display": "<section><p><strong>Author</strong> Nieves Oberbrunner</p>\n<p><strong>Title</strong> <i>By Grand Central Station I Sat Down and Wept</i></p>\n<p><strong>Publication</strong> McGraw Hill Financial.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1a42e5b2-e3ef-4fea-836d-ddcadd7742d4",
            "display": "<section><p><strong>Author</strong> Wilbert Nitzsche</p>\n<p><strong>Title</strong> The Moving Finger</p>\n<p><strong>Publication</strong> Parragon.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d1b9172b-eb0c-477e-bdcd-ba46a6da3bc6",
            "display": "<section><p><strong>Author</strong> Vern Barrows</p>\n<p><strong>Title</strong> <i>The Moving Toyshop</i></p>\n<p><strong>Publication</strong> Signet Books.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4adaaa5f-4d22-4e4b-ac34-4e3318032a8f",
            "display": "<section><p><strong>Artist</strong> Magrathean sperm whale</p>\n<p><strong>Title</strong> <i>When Doves Cry</i></p>\n<p><strong>Description</strong> Aesthetic artisan kitsch paleo cray chicharrones hashtag bicycle rights.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ce8f09c1-a7b6-4b5d-ba0a-c8b1fb33fc55",
            "display": "<section><p><strong>Artist</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> <i>U Got The Look</i></p>\n<p><strong>Description</strong> Wolf <i>asymmetrical meggings scenester meditation sustainable williamsburg</i> chicharrones.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c3360fc8-74a7-434f-bc5e-d74ed7ad53ed",
            "display": "<section><p><strong>Artist</strong> Gail Andrews</p>\n<p><strong>Title</strong> Housequake</p>\n<p><strong>Description</strong> Scenester <i>freegan portland hashtag</i> typewriter.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b97c3973-73e9-4705-9b2f-88376130f0bd",
      "date": "1975-03-14T00:00:00.000-04:00",
      "label": "14 March 1975 - Mayer, Felton",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Mayer, Felton"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/717a367b-bf4f-4196-80fe-e7014da21d67",
            "display": "<section><p><strong>Rehearsal</strong>, Dreamcatcher <i>waistcoat brooklyn gastropub echo aesthetic mlkshk</i> pug.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Charles Darwin</p>\n<p><strong>Place, Date</strong> New Silas, 03 April 1968</p>\n<p><strong>Director</strong> Loonquawl and Phouchg</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/baba5893-58c1-4ee2-a16c-a9dc7268c3a6",
            "display": "<section><p><strong>Rehearsal</strong>, Hashtag vinegar listicle synth asymmetrical master.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Barry Manilow</p>\n<p><strong>Place, Date</strong> Arnoldville, 24 June 1945</p>\n<p><strong>Director</strong> Trin Tragula</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8cc2a66b-621e-4711-bbc9-31c47638b837",
            "display": "<section><p><strong>Theatre</strong>, Street chillwave phlogiston gastropub vhs aesthetic farmtotable.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Tricia McMillan</p>\n<p><strong>Place, Date</strong> Leuschkeland, 02 May 1939</p>\n<p><strong>Director</strong> Random Dent</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f27f6d83-0166-44b7-ad15-e01d1cb2062a",
            "display": "<section><p><strong>Western Spiral Arm</strong></p>\n<p>Knausgaard kale chips retro deep v cronut chicharrones chia churchkey mlkshk.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5ba687fb-00b8-47ed-9029-6b6b7e938b9d",
            "display": "<section><p><strong>Milliways</strong></p>\n<p>Humblebrag <i>chia cardigan mlkshk leggings wayfarers salvia</i> master.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/f95269ae-88fe-4db0-9b6c-33d894685790",
            "display": "<section><p><strong>Author</strong> Pres. Korey Macejkovic</p>\n<p><strong>Title</strong> <i>I Sing the Body Electric</i></p>\n<p><strong>Publication</strong> Scholastic Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/df17dd7b-c30e-4932-915d-cba36555e16e",
            "display": "<section><p><strong>Author</strong> The Hon. Sherley Quitzon</p>\n<p><strong>Title</strong> Carrion Comfort</p>\n<p><strong>Publication</strong> Legend Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ee1e4034-6841-4dff-b4a8-e979102412bd",
            "display": "<section><p><strong>Author</strong> Jean Okuneva</p>\n<p><strong>Title</strong> <i>Look Homeward, Angel</i></p>\n<p><strong>Publication</strong> Haynes Manuals.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9dd0a32e-7874-4186-84cd-f864975cf600",
            "display": "<section><p><strong>Artist</strong> Zarquon</p>\n<p><strong>Title</strong> <i>Kiss</i></p>\n<p><strong>Description</strong> Kogi <i>chillwave locavore five dollar toast taxidermy ugh meggings hammock</i> master.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d4605993-fb86-4b62-a6b3-20bfadbc4a59",
      "date": "1975-04-15T00:00:00.000-04:00",
      "label": "15 April 1975 - Franecki, Noel",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Franecki, Noel"
      ],
      "destinations": [
        "<i>Croydon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/98112a79-120f-4587-a834-86a640eda7fe",
            "display": "<section><p><strong>Theatre</strong>, Yolo pourover pabst truffaut narwhal meh pickled.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Vroomfondel</p>\n<p><strong>Place, Date</strong> West Matthewfort, 27 December 1942</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/25319b08-a36c-4ef7-abea-7bbb5c9b4107",
            "display": "<section><p><strong>Radio Broadcast</strong>, Tofu <i>intelligentsia hashtag locavore readymade biodiesel</i> chicharrones.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and The Allitnils</p>\n<p><strong>Place, Date</strong> Baileymouth, 20 September 1954</p>\n<p><strong>Director</strong> Prostetnic Vogon Kwaltz</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/52d5022f-81df-4a6a-8e47-a148a27ab418",
            "display": "<section><p><strong>Theatre</strong>, Beard phlogiston narwhal viral.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Hillman Hunter</p>\n<p><strong>Place, Date</strong> East Thu, 24 November 1950</p>\n<p><strong>Director</strong> Barry Manilow</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b198a17d-9dd3-4657-abd4-59d3a11a2384",
            "display": "<section><p><strong>Janeth Dickens, 1919-1998</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1e679f4b-ccd7-442d-b111-d738807b05de",
            "display": "<section><p><strong>Marc Maggio, 1914-1974</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2492e91b-a325-44cb-bf6e-d78758228b1c",
            "display": "<section><p><strong>Elanor Walter, 1909-1996</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/bf4be02c-17ba-48c4-970c-d6c0124dc970",
            "display": "<section><p><strong>Sector XXXZ5QZX</strong></p>\n<p>Meh <i>microdosing direct trade artisan</i> locavore.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9ff07e7d-6a43-4279-9aea-f679e8599b32",
            "display": "<section><p><strong><i>Betelgeuse</i></strong></p>\n<p>Phlogiston small batch cornhole echo synth.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cce05f36-3614-4d83-907b-c9fd127ac685",
            "display": "<section><p><strong><i>Madagascar</i></strong></p>\n<p>Singleorigin <i>coffee whatever beard irony butcher food truck</i> venmo.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/f5d849ec-3150-4f65-820a-9af8ddb45e5d",
            "display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> Look to Windward</p>\n<p><strong>Translated into</strong> Serbo Croatian by Trin Tragula</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a061ee1d-bd79-45e2-8f94-d75c8e3e2da3",
      "date": "1977-05-30T00:00:00.000-04:00",
      "label": "30 May 1977 - Nolan, Melina",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Nolan, Melina"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5c575599-f390-49a6-852d-6c02e2ffb56d",
            "display": "<section><p><strong>Radio Broadcast</strong>, Selvage <i>ugh yr brunch green juice</i> cray.</p>\n<p><strong>Attended with</strong> Brandt and Prostetnic Vogon Jeltz</p>\n<p><strong>Place, Date</strong> Penniborough, 11 November 1949</p>\n<p><strong>Director</strong> Trin Tragula</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/14e827e6-35ec-4640-a969-77245d8e8e93",
            "display": "<section><p><strong>Composer</strong> Zarquon</p>\n<p><strong>Title</strong> Under The Cherry Moon</p>\n<p><strong>Description</strong> Vegan tofu hella bicycle rights thundercats craft beer cronut.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d8e11edb-1bc7-4180-8a7a-17ef32880d93",
            "display": "<section><p><strong>Composer</strong> Garkbit</p>\n<p><strong>Title</strong> Uptown</p>\n<p><strong>Description</strong> Crucifix forage humblebrag chillwave singleorigin coffee art party kale chips.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ea6dd6f9-8af9-4ffa-a409-4e23ee94466c",
            "display": "<section><p><strong>Composer</strong> Rob McKenna</p>\n<p><strong>Title</strong> Money Don't Matter 2 Night</p>\n<p><strong>Description</strong> Viral butcher ennui irony fashion axe.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/80b9bad5-aa21-438c-bc63-d1fd37dbea14",
            "display": "<section><p><strong>Title</strong> <i>The Intouchables</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Billion Year Bunker, South Eliseo</p>\n<p><strong>Date(s)</strong> 1927-06-10.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6bf9edfa-ceb2-4b5d-95b3-9b2abfbb6564",
            "display": "<section><p><strong>Title</strong> Jaws</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Bistromath, Kutchstad</p>\n<p><strong>Date(s)</strong> 1949-05-04.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8468a608-f120-45e7-9fba-0f12cd63241f",
            "display": "<section><p><strong>Author</strong> Hotblack Desiato's bodyguard, <strong>Original Title</strong> Unweaving the Rainbow</p>\n<p><strong>Translated into</strong> French And English by Galaxia Woonbeam</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/349b60cd-37ad-454e-95a9-5986a01db8ad",
            "display": "<section><p><strong>Author</strong> Eccentrica Gallumbits, <strong>Original Title</strong> <i>Precious Bane</i></p>\n<p><strong>Translated into</strong> Flemish by Prostetnic Vogon Jeltz</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/828eb548-7a0a-4585-9933-3739c80e2584",
            "display": "<section><p><strong>Author</strong> Marvin, <strong>Original Title</strong> Specimen Days</p>\n<p><strong>Translated into</strong> French by Fenchurch</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 2,
          "doc_count": 4
        },
        {
          "key": 4,
          "doc_count": 2
        },
        {
          "key": 1,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "doc_count": 7,
      "buckets": [
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 2
        },
        {
          "key_as_string": "1972-01-01T00:00:00.000Z",
          "key": 63072000000,
          "doc_count": 1
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
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Daugherty Academy",
          "doc_count": 5
        },
        {
          "key": "Beatty University",
          "doc_count": 4
        },
        {
          "key": "Eastern Maryland College",
          "doc_count": 3
        },
        {
          "key": "Northern Lehner University",
          "doc_count": 2
        }
      ]
    },
    "language": {
      "doc_count": 7,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 3
        },
        {
          "key": "french",
          "doc_count": 2
        },
        {
          "key": "italian",
          "doc_count": 2
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 7,
    "links": {
      "self": "http://example.org/letters?end_date=1977-05-30&page=1&start_date=1971-09-20"
    }
  }
}</pre>
