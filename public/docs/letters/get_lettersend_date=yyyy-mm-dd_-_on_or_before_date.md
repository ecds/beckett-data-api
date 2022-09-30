# Letters API

## GET /letters?end_date=:YYYY-MM-DD - On or Before Date

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

<pre>GET /letters?end_date=1975-04-01</pre>

#### Query Parameters

<pre>end_date: 1975-04-01</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1975-04-01&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 19
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b8b870df27566293f914010854f76a7d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 90affc6f-e663-4478-829a-aa7f0ff960f1
X-Runtime: 2.682610
Vary: Origin
Content-Length: 76505</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/969ad8bb-7257-4858-b5d3-a28051e04c9c",
      "date": "1950-01-18T00:00:00.000-05:00",
      "label": "18 January 1950 - Cronin, Mindy",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Cronin, Mindy"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9e5eefb9-5b8a-4d68-b252-7038f0408217",
            "display": "<section><p><strong>Composer</strong> Trillian</p>\n<p><strong>Title</strong> Cream</p>\n<p><strong>Description</strong> Flannel echo bushwick mumblecore.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/59d9d4d4-a066-4df1-a671-4d556afddb92",
            "display": "<section><p><strong>Composer</strong> Lintilla</p>\n<p><strong>Title</strong> 1-800-Newfunk Ad</p>\n<p><strong>Description</strong> Viral intelligentsia ugh churchkey.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4c8eddf8-d462-4807-9701-01d011932a1d",
            "display": "<section><p><strong>Herschel Berge, 1922-1977</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d9737d9b-3a54-46f9-8742-b19724906c51",
            "display": "<section><p><strong>Libby Hirthe, 1923-1970</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/11c725fe-4a4b-44c6-a524-b4fed1fd5944",
            "display": "<section><p><strong>Hugh Price, 1929-1975</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9c841e16-8aff-41c7-83f2-46c60d7bf992",
            "display": "<section><p><strong>Author</strong> Lajuana Braun</p>\n<p><strong>Title</strong> What's Become of Waring</p>\n<p><strong>Publication</strong> Secker &amp; Warburg.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/367d4f06-b7ec-4752-8278-44d8802197eb",
            "display": "<section><p><strong>Author</strong> Johnny Wolf</p>\n<p><strong>Title</strong> <i>This Side of Paradise</i></p>\n<p><strong>Publication</strong> Peace Hill Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a8db0ab9-158f-4331-bc75-268cc95483ac",
            "display": "<section><p><strong>Author</strong> Slartibartfast, <strong>Original Title</strong> <i>The Golden Bowl</i></p>\n<p><strong>Translated into</strong> Danish by Paula Nancy Millstone Jennings</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ad3b2900-f234-4c3a-b5e2-0bc7aff5376e",
      "date": "1953-05-29T00:00:00.000-04:00",
      "label": "29 May 1953 - Marks, Brandon",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Marks, Brandon"
      ],
      "destinations": [
        "Boston"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/36b3ddf6-b0d7-4601-ad5b-ccae61e72594",
            "display": "<section><p><strong>Tesha Johnson, 1928-1986</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/916b5c49-ee94-4a7c-9b36-08aed8c1c0f7",
            "display": "<section><p><strong>Title</strong> Mad Max: Fury Road</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Heart of Gold, West Senaidaberg</p>\n<p><strong>Date(s)</strong> 1951-01-27.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/97c29663-e47a-47e3-9b4c-2ebe07db9de8",
            "display": "<section><p><strong>Author</strong> Lemuel Pagac</p>\n<p><strong>Title</strong> The Doors of Perception</p>\n<p><strong>Publication</strong> Kogan Page.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f2cd5450-ebe2-4623-b8de-86f47ab5b49a",
            "display": "<section><p><strong>Title</strong> The Wealth of Nations</p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1933-11-08.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/27856f88-ce3d-4140-9702-9d5ebcddd162",
            "display": "<section><p><strong>Title</strong> <i>Consider Phlebas</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Date</strong> 1971-10-23.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f51a5e26-f00d-4411-81ea-39d0bfacaec2",
      "date": "1953-08-07T00:00:00.000-04:00",
      "label": "07 August 1953 - Prohaska, Cody",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Prohaska, Cody"
      ],
      "destinations": [
        "The Domain of The King"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4e8f2503-3afa-4e35-ba7d-4f289ef0df82",
            "display": "<section><p><strong><i>Frogstar World C</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/23d5f923-83a9-44bc-9713-4de48c7d4f44",
            "display": "<section><p><strong>Julianna Bartoletti, 1922-1986</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2824ee05-4566-4a2e-8904-49921bb421b3",
            "display": "<section><p><strong>Betsy Kshlerin, 1923-1993</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/456aa6ad-c2c3-4b82-af1e-19878cb882d8",
            "display": "<section><p><strong>Rupert</strong></p>\n<p>Food <i>truck dreamcatcher messenger bag offal</i> pug.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b441663c-da67-422b-80cf-4bf1c8226c56",
            "display": "<section><p><strong>Han Dold City</strong></p>\n<p>Normcore cardigan pbrb truffaut chillwave shoreditch photo booth mustache.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9e96a56e-c2cd-4b83-8dcc-380b411b1b54",
            "display": "<section><p><strong>Pleiades system</strong></p>\n<p>Chicharrones yr pinterest kogi slowcarb you probably havent heard of them messenger bag swag.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e3d21fa2-f819-4445-ac36-5699349a164d",
            "display": "<section><p><strong>Title</strong> <i>Groundhog Day</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Heart of Gold, Rogahnmouth</p>\n<p><strong>Date(s)</strong> 1956-09-30.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7651a0f2-2fe0-47d9-bca2-a5e4888801c1",
      "date": "1954-06-09T00:00:00.000-04:00",
      "label": "09 June 1954 - Shields, Lynwood",
      "language": "english",
      "volume": 2,
      "recipients": [
        "Shields, Lynwood"
      ],
      "destinations": [
        "Highgate Cemetery"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5c30a8e4-d8d4-450d-be59-bf9cc5e91e66",
            "display": "<section><p><strong>Composer</strong> Vroomfondel</p>\n<p><strong>Title</strong> <i>Partyman</i></p>\n<p><strong>Description</strong> Skateboard williamsburg disrupt fanny pack lofi squid lumbersexual.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/2621057f-afdc-4d8b-8108-989466cd3446",
            "display": "<section><p><strong>Composer</strong> Rob McKenna</p>\n<p><strong>Title</strong> Mr. Nelson</p>\n<p><strong>Description</strong> Lomo <i>offal banjo pug</i> flexitarian.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/5271dc39-52b4-49ae-9af7-c879efd82a2b",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Photo booth vinegar freegan chia.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e0ddbc76-f27a-4aae-8d23-db63956a800b",
            "display": "<section><p><strong>Title</strong> Paper Moon</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> RW6, South Buffychester</p>\n<p><strong>Date(s)</strong> 1948-10-26.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6775f46f-561f-4819-9f86-965a67e2f3b0",
            "display": "<section><p><strong>Title</strong> <i>Goodfellas</i></p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / Will you open up the exit hatch, please, computer?</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Heart of Gold, Veroniqueview</p>\n<p><strong>Date(s)</strong> 1952-04-15.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/fb2c2f20-183c-4d52-89ca-66a6792301fb",
            "display": "<section><p><strong>Author</strong> Gracie Strosin</p>\n<p><strong>Title</strong> I Know Why the Caged Bird Sings</p>\n<p><strong>Publication</strong> Manor House Publishing.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/12ed2174-5b8b-4e29-b2d6-c4b1ea53b97b",
      "date": "1957-03-29T00:00:00.000-05:00",
      "label": "29 March 1957 - Mitchell, Clarence",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Mitchell, Clarence"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/5eda23e4-3427-4f68-88e8-e291bf830667",
            "display": "<section><p><strong>Richelle Murazik, 1916-1970</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/db1f5ee5-f06a-4436-97c9-af6609361cad",
            "display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1969-08-31.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/61a3a162-07c9-4823-95b0-71bef17efc4a",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> Clouds of Witness</p>\n<p><strong>Translated into</strong> Finnish by Genghis Khan</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/6bc0f927-bc46-4468-8a00-929d9c85cdae",
            "display": "<section><p><strong>Author</strong> Effrafax of Wug, <strong>Original Title</strong> <i>The Violent Bear It Away</i></p>\n<p><strong>Translated into</strong> Japanese by Bowerick Wowbagger</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d6afeef2-cd7e-4877-9170-e71569fc95ef",
            "display": "<section><p><strong>Artist</strong> Lintilla</p>\n<p><strong>Title</strong> Darling Nikki</p>\n<p><strong>Description</strong> Distillery <i>poutine chicharrones churchkey</i> scenester.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c9959661-fb7c-4670-93ae-b2587cfc34bd",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> <i>New Position</i></p>\n<p><strong>Description</strong> Dreamcatcher <i>franzen ennui green juice 3 wolf moon food</i> truck.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7e34e23c-aaa9-4b01-ac30-f3438b844f72",
      "date": "1957-05-08T00:00:00.000-04:00",
      "label": "08 May 1957 - Ziemann, Bess",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Ziemann, Bess"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/48804c68-13b7-4e86-a40e-9602ca5601f5",
            "display": "<section><p><strong>Reading</strong>, Cleanse <i>yolo actually salvia pbrb popup sartorial five dollar toast you probably havent heard of</i> them.</p>\n<p><strong>Attended with</strong> Donny and Oolon Colluphid</p>\n<p><strong>Place, Date</strong> North Patrickfurt, 07 January 1955</p>\n<p><strong>Director</strong> Barry Manilow</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ff9c9f89-d30b-41ca-ba5f-77d4f2f374f4",
            "display": "<section><p><strong>Theatre</strong>, Meditation blue bottle cray mixtape semiotics glutenfree.</p>\n<p><strong>Attended with</strong> Brandt and Prak</p>\n<p><strong>Place, Date</strong> New Elizbethburgh, 05 March 1951</p>\n<p><strong>Director</strong> Pasta Fasta</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6f8a7690-2ea1-4cc8-b525-f0fb2dd07e1b",
            "display": "<section><p><strong><i>Gagrakacka</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8332b5ba-1f8f-41cb-8d7a-386274943875",
            "display": "<section><p><strong>Author</strong> Elmira Schamberger</p>\n<p><strong>Title</strong> <i>To Your Scattered Bodies Go</i></p>\n<p><strong>Publication</strong> Hawthorne Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/dc904d02-997e-46e6-bcea-c81284edd71b",
            "display": "<section><p><strong>Author</strong> Ardith Douglas</p>\n<p><strong>Title</strong> <i>Ego Dominus Tuus</i></p>\n<p><strong>Publication</strong> George Newnes.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/97d1b595-3661-493f-907a-c374ba44659d",
            "display": "<section><p><strong>Author</strong> The Hon. Amalia Greenfelder</p>\n<p><strong>Title</strong> Specimen Days</p>\n<p><strong>Publication</strong> G. P. Putnam's Sons.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e54b2f3a-c373-4377-9512-b51bbdce85b9",
            "display": "<section><p><strong>Title</strong> <i>O Pioneers!</i></p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Date</strong> 1964-01-04.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1beb0d83-2e48-4cbe-bcce-b46b2900720d",
            "display": "<section><p><strong>Title</strong> It's a Battlefield</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Date</strong> 1945-08-21.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/19a3250d-e32c-4e04-a1f2-04a230aee836",
            "display": "<section><p><strong>Title</strong> <i>Françoise Sagan</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Date</strong> 1950-07-04.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/84e6bfbc-7699-4f64-a33d-e1be44704284",
      "date": "1958-12-03T00:00:00.000-05:00",
      "label": "03 December 1958 - Wisoky, Glen",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Wisoky, Glen"
      ],
      "destinations": [
        "Rickmansworth"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/cf5386e6-f0a2-4803-b9fd-80ea1d68818d",
            "display": "<section><p><strong>Theatre</strong>, Irony carry venmo bicycle rights narwhal lumbersexual fanny pack.</p>\n<p><strong>Attended with</strong> Karl Hungus and Max Quordlepleen</p>\n<p><strong>Place, Date</strong> Lindsayview, 27 October 1958</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f5a2547b-2683-4890-9eb7-ca9d85c43188",
            "display": "<section><p><strong>Title</strong> The Bourne Ultimatum</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Billion Year Bunker, Rebeckachester</p>\n<p><strong>Date(s)</strong> 1964-08-18.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8c47ea3e-994a-4b33-8db6-034f1b3ca37d",
            "display": "<section><p><strong>Title</strong> <i>Sholay</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Krikkit One, West Clorindaberg</p>\n<p><strong>Date(s)</strong> 1963-04-13.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/321d26c4-471c-4dc1-86e9-f6bdab5bd6f7",
            "display": "<section><p><strong>Title</strong> Nuovo Cinema Paradiso</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Vogon Constructor Fleet, North Darron</p>\n<p><strong>Date(s)</strong> 1922-11-02.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9f2a833b-96e4-48bd-9ac3-741d9a387247",
            "display": "<section><p><strong>Author</strong> Prof. Madaline Schmeler</p>\n<p><strong>Title</strong> <i>Edna O'Brien</i></p>\n<p><strong>Publication</strong> UCL Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4c7277ea-c18c-4672-8f29-6704540ed9c1",
            "display": "<section><p><strong>Author</strong> Trin Tragula, <strong>Original Title</strong> Consider Phlebas</p>\n<p><strong>Translated into</strong> Gaelic by Prostetnic Vogon Jeltz</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/36a0c9a2-55c1-4bc8-ab8f-d45e0a4bc789",
            "display": "<section><p><strong>Author</strong> Trillian, <strong>Original Title</strong> <i>I Will Fear No Evil</i></p>\n<p><strong>Translated into</strong> Russian by Arthur Dent</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fb99a6cc-3145-4c96-8872-592fed921433",
      "date": "1960-04-07T00:00:00.000-05:00",
      "label": "07 April 1960 - Champlin, Mika",
      "language": "english",
      "volume": 0,
      "recipients": [
        "Champlin, Mika"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d049c160-2b9c-4631-a78d-beee7bb593ac",
            "display": "<section><p><strong>Title</strong> <i>Alien</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> RW6, Elmofurt</p>\n<p><strong>Date(s)</strong> 1927-11-07.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/28ae148f-3fbe-46d0-bb1a-545ef282a881",
            "display": "<section><p><strong>Title</strong> <i>The Thing</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Vogon Constructor Fleet, Shawnaport</p>\n<p><strong>Date(s)</strong> 1945-09-30.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/10989c30-2a24-49bb-b16d-6d44ca0953e9",
            "display": "<section><p><strong>Title</strong> Star Wars: Episode VII - The Force Awakens</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Monahanville</p>\n<p><strong>Date(s)</strong> 1943-08-06.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7a576595-8129-4b4e-8664-f58e7f0e7323",
            "display": "<section><p><strong>Author</strong> Wilbur Kirlin</p>\n<p><strong>Title</strong> <i>That Hideous Strength</i></p>\n<p><strong>Publication</strong> Naiad Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/023d7ebf-1128-4ad8-9175-712a18ee25fd",
            "display": "<section><p><strong>Author</strong> Vina Carter</p>\n<p><strong>Title</strong> Rosemary Sutcliff</p>\n<p><strong>Publication</strong> Charles Scribner's Sons.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/288e6849-8cf9-4e0e-8984-1717a242d94f",
            "display": "<section><p><strong>Author</strong> Amb. Jesus Howell</p>\n<p><strong>Title</strong> <i>It's a Battlefield</i></p>\n<p><strong>Publication</strong> University of Minnesota Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e271c359-4bb3-4602-9a34-76e1690d6003",
            "display": "<section><p><strong>Artist</strong> Gail Andrews</p>\n<p><strong>Title</strong> Paisley Park</p>\n<p><strong>Description</strong> Blog forage postironic squid tryhard chartreuse offal.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2054d9c1-92b7-42c8-8846-2523548cff43",
            "display": "<section><p><strong>Artist</strong> Arthur Philip Deodat</p>\n<p><strong>Title</strong> <i>Partyman</i></p>\n<p><strong>Description</strong> Lofi <i>crucifix carry pabst</i> kinfolk.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/03f06f7e-63f0-4ed3-beee-026c65d754ec",
            "display": "<section><p><strong>Title</strong> It's a Battlefield</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Date</strong> 1953-08-02.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd75763a-c955-468d-95f9-59da434152b6",
      "date": "1961-04-11T00:00:00.000-05:00",
      "label": "11 April 1961 - Ziemann, Guillermo",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Ziemann, Guillermo"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/16c12404-0599-4cd1-a8de-25d8b8729072",
            "display": "<section><p><strong>Composer</strong> Genghis Khan</p>\n<p><strong>Title</strong> <i>Nothing Compares 2 U</i></p>\n<p><strong>Description</strong> Cornhole <i>polaroid chillwave popup vhs</i> chicharrones.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/be061351-7d04-4c00-8873-78f361dab0d5",
            "display": "<section><p><strong>Composer</strong> Arthur Dent</p>\n<p><strong>Title</strong> <i>Strange Relationship</i></p>\n<p><strong>Description</strong> Shoreditch popup pug leggings master art party.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d7267d10-af46-40a8-b480-00c73fde8494",
            "display": "<section><p><strong>Brandee Vandervort, 1923-1983</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d056fb3f-4627-4e1b-a0e3-0937929d1cad",
            "display": "<section><p><strong>Gail Adams, 1925-1971</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/41c3c986-fd04-4e4d-9c03-9c7bf0c5a241",
            "display": "<section><p><strong>Author</strong> Prostetnic Vogon Kwaltz, <strong>Original Title</strong> As I Lay Dying</p>\n<p><strong>Translated into</strong> Portuguese by Barry Manilow</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b4b05a2d-cf99-45fb-829a-10501b876443",
            "display": "<section><p><strong>Author</strong> Magrathean sperm whale, <strong>Original Title</strong> <i>A Time to Kill</i></p>\n<p><strong>Translated into</strong> Irish Gaelic by Pizpot Gargravarr</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/41d46806-642f-4b4a-94b2-b156487e3e21",
            "display": "<section><p><strong>Title</strong> Precious Bane</p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Date</strong> 1968-10-02.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/4c1faa0a-6d66-4ca5-abb1-646c42bbd694",
            "display": "<section><p><strong>Title</strong> <i>Little Hands Clapping</i></p>\n<p><strong>Proposal/Response</strong> It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Translator</strong> Humma Kavula</p>\n<p><strong>Date</strong> 1924-09-02.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1a22ae35-095d-4771-af4b-86365b468bef",
      "date": "1961-07-20T00:00:00.000-04:00",
      "label": "20 July 1961 - Koepp, Carmen",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Koepp, Carmen"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8f789197-ce5d-41c4-a0ff-37fd3926f7ee",
            "display": "<section><p><strong>Ina McClure, 1914-1973</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e9966b0f-61cf-464b-b7f0-5bfd29053fe0",
            "display": "<section><p><strong>Moises Hills, 1902-1984</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6cadeb59-0f96-4ade-848f-7e499f660494",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Legend Books</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Chillwave jean shorts green juice bitters neutra kogi.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/275c6d63-48a4-4ab7-ba10-35dc67b66c76",
            "display": "<section><p><strong>Author</strong> Mrs. Nga Runte</p>\n<p><strong>Title</strong> <i>Jacob Have I Loved</i></p>\n<p><strong>Publication</strong> Carlton Publishing Group.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/130162d5-20d3-4bd7-8bc2-fbd166b9ebe4",
            "display": "<section><p><strong>Artist</strong> Barry Manilow</p>\n<p><strong>Title</strong> Superfunkycalifragisexy</p>\n<p><strong>Description</strong> Ramps singleorigin coffee tumblr actually.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7111de17-1f84-4b59-a79b-38ab4a36e607",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Title</strong> <i>Cloreen Baconskin</i></p>\n<p><strong>Description</strong> Hoodie <i>kinfolk next level keytar cliche</i> heirloom.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6165e137-80cf-4b37-a3b9-90948220e085",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> Partyman</p>\n<p><strong>Description</strong> Put a bird on it slowcarb tilde aesthetic hella etsy organic echo.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d137e63b-79f0-4846-98dd-7170945eb3a0",
      "date": "1962-04-07T00:00:00.000-05:00",
      "label": "07 April 1962 - Terry, Laurel",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Terry, Laurel"
      ],
      "destinations": [
        "<i>France</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a60d8378-a7f7-49a3-918f-2992df9131b9",
            "display": "<section><p><strong>Composer</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>Mr. Nelson</i></p>\n<p><strong>Description</strong> Bicycle rights tilde ramps offal.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/38324d56-d015-411d-ac2d-e753bb6b19a5",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/82f43b35-1743-4169-a688-79d006d0a70f",
            "display": "<section><p><strong>Author</strong> Margart Torp</p>\n<p><strong>Title</strong> In Dubious Battle</p>\n<p><strong>Publication</strong> Daedalus Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a9494079-1b75-4f7e-962a-144d9ea3edd5",
            "display": "<section><p><strong>Author</strong> Ms. Zack Lesch</p>\n<p><strong>Title</strong> <i>That Good Night</i></p>\n<p><strong>Publication</strong> Penguin Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/20b0f26a-5b68-4b8a-8270-75545c457acb",
            "display": "<section><p><strong>Author</strong> Elda Brekke</p>\n<p><strong>Title</strong> <i>Sleep the Brave</i></p>\n<p><strong>Publication</strong> Da Capo Press.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e2c01c4b-d542-463b-bf6b-14cc7d8dfee0",
            "display": "<section><p><strong>Title</strong> The Man Within</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1955-11-05.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/98bb8ca5-3f9d-457f-a8df-77b7b36e9549",
      "date": "1966-09-11T00:00:00.000-04:00",
      "label": "11 September 1966 - Adams, Stanford",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Adams, Stanford"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a6cf4aa8-8814-4262-ba3e-73f17892638c",
            "display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> <i>Tamborine</i></p>\n<p><strong>Description</strong> Biodiesel wes anderson asymmetrical listicle.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5de722ac-268e-4544-ab5b-3bd0a8d5643d",
            "display": "<section><p><strong>Composer</strong> Ford Prefect</p>\n<p><strong>Title</strong> Alphabet St.</p>\n<p><strong>Description</strong> Craft beer butcher kinfolk tryhard.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/33e2fe14-0f7d-4290-ba99-32fa7c118a5b",
            "display": "<section><p><strong>Composer</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> The Beautiful Ones</p>\n<p><strong>Description</strong> Echo <i>stumptown chambray intelligentsia</i> roof.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9f62d762-af25-4b9d-93f4-7a0d03af988e",
            "display": "<section><p><strong>Emmett Stamm, 1917-1983</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/ed3333a0-140a-40fb-93c8-2f46075f45ee",
            "display": "<section><p><strong>Title</strong> <i>Toy Story</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Starship Titanic, Howeville</p>\n<p><strong>Date(s)</strong> 1931-09-29.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e7a1b619-574e-4a51-bcfc-736bbf51d68e",
            "display": "<section><p><strong>Title</strong> For a Breath I Tarry</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Date</strong> 1962-08-05.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3f776a14-113c-4798-8b99-3784c0f7bb7b",
      "date": "1969-11-17T00:00:00.000-05:00",
      "label": "17 November 1969 - Turner, Michiko",
      "language": "italian",
      "volume": 2,
      "recipients": [
        "Turner, Michiko"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/bb63b245-fce0-422a-82d3-8755eea52a33",
            "display": "<section><p><strong>Composer</strong> Charles Darwin</p>\n<p><strong>Title</strong> <i>The Greatest Romance Ever Sold</i></p>\n<p><strong>Description</strong> Sustainable <i>pug 8bit small batch</i> sartorial.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3a3e3292-89bc-41f0-b15c-122ed5cab376",
            "display": "<section><p><strong><i>Rupert</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e4fc8b70-6fb0-41af-a194-49aaccd2d9cf",
            "display": "<section><p><strong>Poghril</strong></p>\n<p>And <i>then of course I've got this terrible pain in all the diodes down my left</i> side.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8c1d25a6-f6de-4b62-b02d-046d6b3821fa",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1947-01-18.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1e88751c-0eaa-45c3-b107-1bc5a5cccfca",
            "display": "<section><p><strong>Author</strong> Dominick Simonis</p>\n<p><strong>Title</strong> After Many a Summer Dies the Swan</p>\n<p><strong>Publication</strong> Paulist Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/62f0ac6b-5e5e-470b-a7f6-69efeb167ae1",
            "display": "<section><p><strong>Author</strong> Loren O'Connell</p>\n<p><strong>Title</strong> <i>The Waste Land</i></p>\n<p><strong>Publication</strong> Carnegie Mellon University Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d57aed99-ac67-4a33-bb24-dea1756b579e",
      "date": "1970-04-01T00:00:00.000-05:00",
      "label": "01 April 1970 - Howell, Daren",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Howell, Daren"
      ],
      "destinations": [
        "Preliumtarn"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/264163f1-1193-4aa6-8d18-dc869e9ac416",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1969-02-02.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/0dec6bdc-683d-4274-ade2-3be29cad388c",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1947-02-03.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c113ba97-e553-4e5d-8e32-eae910e853ed",
            "display": "<section><p><strong>Author</strong> Prof. Tyson Mertz</p>\n<p><strong>Title</strong> That Hideous Strength</p>\n<p><strong>Publication</strong> Blackie and Son Limited.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/6ab6f490-8628-4606-87a5-725c74001023",
            "display": "<section><p><strong>Author</strong> Rosina Rogahn</p>\n<p><strong>Title</strong> <i>Behold the Man</i></p>\n<p><strong>Publication</strong> Reed Elsevier.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1a6a5cf5-0da5-4449-8954-0cd1968562d9",
            "display": "<section><p><strong>Author</strong> Palmer Daniel</p>\n<p><strong>Title</strong> <i>Many Waters</i></p>\n<p><strong>Publication</strong> Bellevue Literary Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/882b4ff4-4ced-4d87-8a7b-a71c8b362d61",
            "display": "<section><p><strong>Author</strong> Grunthos the Flatulent, <strong>Original Title</strong> <i>Vanity Fair</i></p>\n<p><strong>Translated into</strong> Marathi by Lintilla</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/63c50a4c-0d0c-4677-9c84-21902ff2bef5",
            "display": "<section><p><strong>Artist</strong> Agda</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Semiotics <i>squid jean shorts sustainable heirloom cardigan</i> 8bit.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/86fa525c-39b9-43a2-8050-bee2083e04b6",
            "display": "<section><p><strong>Artist</strong> Questular Rontok</p>\n<p><strong>Title</strong> The Beautiful Ones</p>\n<p><strong>Description</strong> Kombucha hella normcore chartreuse.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/55dfc28a-68ed-482e-b3b2-8d1846c6b251",
            "display": "<section><p><strong>Artist</strong> Humma Kavula</p>\n<p><strong>Title</strong> New Position</p>\n<p><strong>Description</strong> Pork belly aesthetic polaroid artisan vice cronut.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/db828a0d-7072-48f3-9740-ba132ad2d28e",
      "date": "1971-07-20T00:00:00.000-04:00",
      "label": "20 July 1971 - Russel, Wilford",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Russel, Wilford"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7d7af4d0-f46a-4dc0-941b-a7de1e394e19",
            "display": "<section><p><strong>Rehearsal</strong>, Butcher <i>sartorial selfies slowcarb fingerstache plaid park kinfolk raw</i> denim.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Reg Nullify</p>\n<p><strong>Place, Date</strong> North Lino, 18 March 1956</p>\n<p><strong>Director</strong> Zarniwoop</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/0beadf91-5869-410f-a170-5d6a7920f37b",
            "display": "<section><p><strong>Theatre</strong>, Iphone <i>meditation hella leggings neutra blue bottle bitters heirloom tote</i> bag.</p>\n<p><strong>Attended with</strong> The Dude and Pasta Fasta</p>\n<p><strong>Place, Date</strong> Lake Madie, 01 October 1933</p>\n<p><strong>Director</strong> Fenchurch</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/930bae98-3ff1-407e-8b78-fcebce2fe7dd",
            "display": "<section><p><strong>Radio Broadcast</strong>, Vhs <i>forage aesthetic sartorial</i> coldpressed.</p>\n<p><strong>Attended with</strong> Donny and Lintilla</p>\n<p><strong>Place, Date</strong> Valchester, 19 June 1944</p>\n<p><strong>Director</strong> Zaphod Beeblebrox</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/01c66756-54c2-42a7-846a-ec76c13e23e8",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> I Wanna Be Your Lover</p>\n<p><strong>Description</strong> Occupy keytar ethical normcore fashion axe letterpress.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/33186a04-e2b9-4e6a-9422-ce052deae2e2",
            "display": "<section><p><strong>Author</strong> Zarquon, <strong>Original Title</strong> <i>The Glory and the Dream</i></p>\n<p><strong>Translated into</strong> Ukrainian by Slartibartfast</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ca6c995b-6d65-40b4-8cb2-896e12f9cfba",
            "display": "<section><p><strong>Title</strong> <i>Dulce et Decorum Est</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Date</strong> 1965-10-18.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/51463eda-1765-4a44-babf-2fdd916b4bb7",
            "display": "<section><p><strong>Title</strong> <i>Beneath the Bleeding</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Arthur Dent</p>\n<p><strong>Date</strong> 1931-01-20.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/21de8aee-2dc4-4ac9-8fe9-218d2d894aa2",
      "date": "1973-03-23T00:00:00.000-05:00",
      "label": "23 March 1973 - Ebert, Felicia",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Ebert, Felicia"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7af5b169-e6c0-402d-977b-ecb87269efb9",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> Manning Publications</p>\n<p><strong>Translator</strong> Prostetnic Vogon Jeltz</p>\n<p><strong>Publication</strong> You probably haven't heard of them truffaut blue bottle fingerstache kitsch authentic tacos.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cd80c9ca-edc2-4981-9540-c8a7f2ecb798",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Simon &amp; Schuster</p>\n<p><strong>Translator</strong> Frankie and Benjy</p>\n<p><strong>Publication</strong> Ennui scenester heirloom cronut.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1198f9c9-7f3b-4389-a7c8-f78ea9d267fc",
            "display": "<section><p><strong>Author</strong> Tony Von</p>\n<p><strong>Title</strong> No Longer at Ease</p>\n<p><strong>Publication</strong> Shire Books.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6c95bdbb-0f3e-4e65-b4f6-a84fb37c8297",
            "display": "<section><p><strong>Artist</strong> Roosta</p>\n<p><strong>Title</strong> 200 Balloons</p>\n<p><strong>Description</strong> Seitan mustache heirloom cleanse swag skateboard loko biodiesel deep v.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f2394960-8333-45e9-8401-0f8624ea2221",
            "display": "<section><p><strong>Artist</strong> Mella</p>\n<p><strong>Title</strong> <i>I Feel For You</i></p>\n<p><strong>Description</strong> Actually <i>small batch literally echo photo booth listicle chicharrones</i> plaid.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b2521fad-b278-44da-8ccf-684bd6a84b1d",
            "display": "<section><p><strong>Artist</strong> Trillian</p>\n<p><strong>Title</strong> Still Waiting</p>\n<p><strong>Description</strong> Wayfarers <i>slowcarb next level selvage photo booth</i> biodiesel.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/de4b37be-f28b-45bd-9546-8207da042f45",
            "display": "<section><p><strong>Title</strong> A Monstrous Regiment of Women</p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Date</strong> 1966-02-04.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ffe1499e-34a2-478c-bb1f-d6a32c9afba2",
      "date": "1974-09-20T00:00:00.000-04:00",
      "label": "20 September 1974 - Carroll, Isobel",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Carroll, Isobel"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/eac254d2-700e-4f4d-928f-82de2e747e5a",
            "display": "<section><p><strong>Eroticon VI</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9f3be574-ea9f-4bc0-b42a-69ac688241d8",
            "display": "<section><p><strong><i>Eroticon VI</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f31fccff-47a8-4c02-aab8-f4772f1428a0",
            "display": "<section><p><strong>Brittni Cartwright, 1906-1992</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5478e790-1f70-4094-9e4e-5d44c166a700",
            "display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1968-01-02.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8bf0b75c-6562-4283-b2d8-6c2e453edaec",
            "display": "<section><p><strong>Author</strong> Stan Kassulke</p>\n<p><strong>Title</strong> The Wives of Bath</p>\n<p><strong>Publication</strong> St. Martin's Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/aba91981-581f-4eb8-963e-1301e9a3c3aa",
            "display": "<section><p><strong>Author</strong> Darell McDermott Ret.</p>\n<p><strong>Title</strong> Death Be Not Proud</p>\n<p><strong>Publication</strong> Dalkey Archive Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8c4455ec-1ea3-4b85-b5a6-0561c7d3b079",
            "display": "<section><p><strong>Author</strong> Tyrone Swaniawski</p>\n<p><strong>Title</strong> The Needle's Eye</p>\n<p><strong>Publication</strong> Atheneum Books.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f1be83cc-c539-4ffe-a341-204adc217678",
      "date": "1975-02-21T00:00:00.000-05:00",
      "label": "21 February 1975 - Torphy, Willie",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Torphy, Willie"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/007e2b6e-a49b-4aed-b10e-fc5b19e3b77e",
            "display": "<section><p><strong>Arkintoofle Minor</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/69aa0e6f-74a1-4507-8329-d7b339318164",
            "display": "<section><p><strong><i>Frogstar World C</i></strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/47fe32e3-d690-47dc-b1e8-02aa3d713325",
            "display": "<section><p><strong>Author</strong> Ian Ward JD</p>\n<p><strong>Title</strong> <i>The Moving Toyshop</i></p>\n<p><strong>Publication</strong> D. Appleton &amp; Company.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/5859785a-829f-431a-ad2f-010da2e3dfce",
            "display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> A Catskill Eagle</p>\n<p><strong>Translated into</strong> Rumanian by Lunkwill and Fook</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/ac3644eb-703d-488e-973c-204b918b441e",
            "display": "<section><p><strong>Title</strong> <i>I Know Why the Caged Bird Sings</i></p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Date</strong> 1960-01-23.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/81461ff2-40bc-4e63-a214-146b63e9e9f8",
      "date": "1975-04-01T00:00:00.000-04:00",
      "label": "01 April 1975 - Kassulke, Jonie",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Kassulke, Jonie"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ca085e5d-d6c1-4adb-a39b-47ffc5300c17",
            "display": "<section><p><strong><i>Total Perspective Vortex</i></strong></p>\n<p>Readymade <i>typewriter tacos occupy craft beer cornhole put a bird on</i> it.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/86384a75-f112-48fa-b2bf-1c47a656a852",
            "display": "<section><p><strong>Croydon</strong></p>\n<p>Trust <i>fund tote bag sustainable wes anderson knausgaard carry pabst migas</i> flannel.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5fb75ccf-7fe7-4247-9df1-a13863a3b684",
            "display": "<section><p><strong>Belgium</strong></p>\n<p>Cardigan vinyl tofu plaid.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/21319f15-6add-48c5-9116-32ec62e47afa",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1954-01-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4fbdc365-5831-49a6-b874-3a59640641ec",
            "display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1933-08-11.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6bdd9ac6-67fd-4cad-bb0a-de9ca198a763",
            "display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1923-07-25.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/b92f41af-ebc1-4d0f-ae74-d4f5837f0d81",
            "display": "<section><p><strong>Author</strong> Jeanice Harris DVM</p>\n<p><strong>Title</strong> <i>Ah, Wilderness!</i></p>\n<p><strong>Publication</strong> Pantheon Books at Random House.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4ad1c5ac-79a2-46eb-82ef-89ca2576e934",
            "display": "<section><p><strong>Author</strong> Ms. Eldridge Towne</p>\n<p><strong>Title</strong> Antic Hay</p>\n<p><strong>Publication</strong> Addison-Wesley.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/390f5126-32ff-47db-8f28-c40dff659725",
            "display": "<section><p><strong>Author</strong> Michell Langworth</p>\n<p><strong>Title</strong> <i>When the Green Woods Laugh</i></p>\n<p><strong>Publication</strong> Borgo Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d07de1d1-5ae9-4141-b1f5-c4e9e3ea6105",
            "display": "<section><p><strong>Author</strong> Vroomfondel, <strong>Original Title</strong> <i>Stranger in a Strange Land</i></p>\n<p><strong>Translated into</strong> Marathi by Galaxia Woonbeam</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/10e87dbd-bc96-4bcd-aead-c678bd62952a",
            "display": "<section><p><strong>Author</strong> Galaxia Woonbeam, <strong>Original Title</strong> Dulce et Decorum Est</p>\n<p><strong>Translated into</strong> Spanish by Mella</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 19,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 3,
          "doc_count": 7
        },
        {
          "key": 1,
          "doc_count": 6
        },
        {
          "key": 2,
          "doc_count": 4
        },
        {
          "key": 0,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "doc_count": 19,
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
          "doc_count": 0
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 2
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
          "doc_count": 1
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 0
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
          "doc_count": 2
        }
      ]
    },
    "repositories": {
      "doc_count": 19,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Western Iowa College",
          "doc_count": 9
        },
        {
          "key": "Kilback College",
          "doc_count": 8
        },
        {
          "key": "West Kovacek University",
          "doc_count": 8
        },
        {
          "key": "Gorczany Academy",
          "doc_count": 7
        }
      ]
    },
    "language": {
      "doc_count": 19,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 7
        },
        {
          "key": "english",
          "doc_count": 6
        },
        {
          "key": "italian",
          "doc_count": 4
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
    "total_count": 19,
    "links": {
      "self": "http://example.org/letters?end_date=1975-04-01&page=1"
    }
  }
}
~~~

