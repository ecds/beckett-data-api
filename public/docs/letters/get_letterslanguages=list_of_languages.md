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
X-Total-Count: 18
Content-Type: application/json; charset=utf-8
ETag: W/&quot;028eb9b58b9574c4e18b4ea933f4bd3e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d5623e49-fb54-4b0c-a59f-6b287cbe588e
X-Runtime: 3.190176
Vary: Origin
Content-Length: 84953</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/585f5e06-ded3-4a1f-b6e3-1fa3885d7d37",
      "date": "1952-05-20T00:00:00.000-04:00",
      "label": "20 May 1952 - Veum, Oswaldo",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Veum, Oswaldo"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/50bdf0c0-3ba8-4c98-8f74-6e4f59ebe73c",
            "display": "<section><p><strong>Xaxis</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9f4e0f6a-ed32-44f9-b494-b52a4bb39f32",
            "display": "<section><p><strong><i>Sqornshellous Zeta</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d5871447-2dab-469b-b023-0b5f8ec70c07",
            "display": "<section><p><strong>Krikkit</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/440957c6-ef52-4406-96ff-85cf8c46c6ff",
            "display": "<section><p><strong>Title</strong> <i>The Help</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Heart of Gold, Lake Terrance</p>\n<p><strong>Date(s)</strong> 1931-05-27.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/97f5f624-209d-4950-a24f-b8e2a1dbcfc6",
            "display": "<section><p><strong>Title</strong> <i>The Lives of Others</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> RW6, Casperland</p>\n<p><strong>Date(s)</strong> 1965-01-19.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/b2ad398c-d121-4cbb-a2e5-753cdc7de03b",
            "display": "<section><p><strong>Title</strong> <i>Raiders of the Lost Ark</i></p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Turcotteshire</p>\n<p><strong>Date(s)</strong> 1969-07-12.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2ec0aa1a-2e7e-49e0-83b5-4784acba4825",
            "display": "<section><p><strong>Author</strong> Deep Thought, <strong>Original Title</strong> The Wings of the Dove</p>\n<p><strong>Translated into</strong> Spanish by Gag Halfrunt</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/42330cf0-5bc0-4a71-864c-4c29b7e3c156",
            "display": "<section><p><strong>Author</strong> Prostetnic Vogon Kwaltz, <strong>Original Title</strong> All the King's Men</p>\n<p><strong>Translated into</strong> Flemish by Oolon Colluphid</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b357e637-8799-4cca-8693-9c6a54fafed0",
            "display": "<section><p><strong>Author</strong> Zarniwoop, <strong>Original Title</strong> To Say Nothing of the Dog</p>\n<p><strong>Translated into</strong> English by Arthur Dent</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/1a0c5fac-92d3-4b68-a2aa-3df5cec8eb78",
            "display": "<section><p><strong>Title</strong> <i>A Many-Splendoured Thing</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Galaxia Woonbeam</p>\n<p><strong>Date</strong> 1950-08-24.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/9bd70f4e-6cf2-4e35-bb27-21b43f15f625",
            "display": "<section><p><strong>Title</strong> <i>Behold the Man</i></p>\n<p><strong>Proposal/Response</strong> ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Date</strong> 1932-03-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/eb2a6545-5e4d-4ab1-9c5a-37650df1db59",
            "display": "<section><p><strong>Title</strong> <i>The Torment of Others</i></p>\n<p><strong>Proposal/Response</strong> Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Date</strong> 1952-09-18.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e173fe43-a2c7-4001-a938-43ef022a9ba7",
      "date": "1952-07-31T00:00:00.000-04:00",
      "label": "31 July 1952 - Paucek, Michael",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Paucek, Michael"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/30886ad7-2ac3-4e35-849f-08ac9269c3b1",
            "display": "<section><p><strong>Composer</strong> Max Quordlepleen</p>\n<p><strong>Title</strong> <i>Starfish And Coffee</i></p>\n<p><strong>Description</strong> Scenester kinfolk vice flannel taxidermy.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/3cf4ba5f-c522-4d57-b488-a4ce4715a5cd",
            "display": "<section><p><strong>Composer</strong> Wonko the Sane</p>\n<p><strong>Title</strong> <i>Dead On It</i></p>\n<p><strong>Description</strong> Yr bicycle rights humblebrag blue bottle selfies tote bag occupy jean shorts yuccie.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c276c55c-614d-454a-8cf2-23423fef7d22",
            "display": "<section><p><strong><i>Happi-Werld III</i></strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f2195e19-78a1-4fe8-b06e-52d2a9f89830",
            "display": "<section><p><strong>Han Wavel</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/63263b73-227e-46cf-9726-b2f9abf64a52",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Seagull Books</i></p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Messenger bag lo-fi ennui butcher echo gentrify pinterest wayfarers.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/09784f7b-e912-42c9-bbca-15945eac4525",
            "display": "<section><p><strong>Author</strong> Marleen Langworth</p>\n<p><strong>Title</strong> Tiger! Tiger!</p>\n<p><strong>Publication</strong> Harper &amp; Row.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4047aa6b-938e-43be-9955-b151ad75fa81",
            "display": "<section><p><strong>Author</strong> Doug Padberg LLD</p>\n<p><strong>Title</strong> <i>Butter In a Lordly Dish</i></p>\n<p><strong>Publication</strong> University of Nebraska Press.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4b67db71-0d8a-462d-840d-13e677aa9baf",
      "date": "1958-06-21T00:00:00.000-04:00",
      "label": "21 June 1958 - Jenkins, Kelley",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Jenkins, Kelley"
      ],
      "destinations": [
        "Rickmansworth"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4b102226-a6c8-445b-91e4-61aab2e2bdf2",
            "display": "<section><p><strong>Title</strong> The Princess Bride</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Billion Year Bunker, West Jerrold</p>\n<p><strong>Date(s)</strong> 1960-09-23.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/feb0323b-ce32-4f56-8f50-5a31135e48b9",
            "display": "<section><p><strong>Title</strong> <i>Paper Moon</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> RW6, East Eun</p>\n<p><strong>Date(s)</strong> 1932-07-25.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/fdbb421e-0040-4256-aeac-ff20ed32cd7c",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1954-02-20.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b1fa4bcf-325c-4ff2-aec7-8725155f6d0f",
            "display": "<section><p><strong>Artist</strong> Humma Kavula</p>\n<p><strong>Title</strong> <i>Do It All Night</i></p>\n<p><strong>Description</strong> Irony hammock blog raw denim wayfarers sriracha.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b330fa03-b008-4460-82c2-1e4a4028abb1",
            "display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> Automatic</p>\n<p><strong>Description</strong> Wayfarers postironic humblebrag aesthetic scenester.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bd80a8ae-5c4d-45aa-be22-fcd314d611e2",
            "display": "<section><p><strong>Artist</strong> Zarniwoop</p>\n<p><strong>Title</strong> <i>319</i></p>\n<p><strong>Description</strong> Heirloom beard whatever postironic microdosing stumptown mustache.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8033a7a6-8cf2-4380-8100-80d87d8f9508",
            "display": "<section><p><strong>Title</strong> <i>Some Buried Caesar</i></p>\n<p><strong>Proposal/Response</strong> But Mr. Dent, the plans have been available in the local planning office for the last nine months.</p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Date</strong> 1936-10-18.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/60274194-bf5a-4ecd-8130-8bff0c06c9cb",
      "date": "1961-08-30T00:00:00.000-04:00",
      "label": "30 August 1961 - Lind, Selene",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Lind, Selene"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0c463c0b-ef5a-412c-b463-37d64adad821",
            "display": "<section><p><strong>Lamuella</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/75dc56a1-760a-45e5-a218-333802a3afa3",
            "display": "<section><p><strong><i>Hawalius</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/41bf2bb8-2569-4226-81ba-bf936d88a1d5",
            "display": "<section><p><strong>Fritz Volkman, 1911-1972</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/75702a2e-b654-49be-ba1e-090b919409d8",
            "display": "<section><p><strong>Shayne Sipes, 1908-1984</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ad57941a-362a-4bbb-b849-baab28f5726b",
            "display": "<section><p><strong>Tomas Bergnaum, 1906-1992</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9816e719-684a-445a-b242-e878ebf99317",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1956-10-13.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2a5986cc-45e5-42fd-a567-c41dfb84a210",
            "display": "<section><p><strong>Author</strong> Lupe Cruickshank</p>\n<p><strong>Title</strong> <i>The Moon by Night</i></p>\n<p><strong>Publication</strong> Sams Publishing.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6f16fbc5-8951-4b04-b73f-29e4fbe71953",
      "date": "1964-02-22T00:00:00.000-05:00",
      "label": "22 February 1964 - Hermann, Sabina",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Hermann, Sabina"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/65018cae-7534-4204-960a-29e5ef8eae41",
            "display": "<section><p><strong>Whitney Jacobs, 1909-1978</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/3d7152fd-430a-45f0-9620-2865d056cd13",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1936-04-16.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b8b323ca-c9bf-42aa-a1e7-85ce509b9053",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1936-08-05.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d9de0905-194b-44d2-902d-52dd2f5aa7e1",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1945-11-04.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0251f455-e19c-40fe-972d-7b9d8356f11e",
            "display": "<section><p><strong>Author</strong> Gerry Satterfield MD</p>\n<p><strong>Title</strong> The Yellow Meads of Asphodel</p>\n<p><strong>Publication</strong> Apress.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f0c58faf-cd45-4c74-b906-70a238bea959",
            "display": "<section><p><strong>Author</strong> Prof. Bo Leffler</p>\n<p><strong>Title</strong> Vile Bodies</p>\n<p><strong>Publication</strong> NavPress.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/067fc529-429c-4ee9-afb2-088c4ec95246",
            "display": "<section><p><strong>Author</strong> Gag Halfrunt, <strong>Original Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Translated into</strong> French And English by Prak</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0d9e302b-9afd-450a-982b-0600405e5754",
            "display": "<section><p><strong>Author</strong> Trin Tragula, <strong>Original Title</strong> The Golden Bowl</p>\n<p><strong>Translated into</strong> Russian by Emily Saunders</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d0d194f7-4439-4be4-a24d-f6547b792e89",
            "display": "<section><p><strong>Author</strong> Roosta, <strong>Original Title</strong> <i>O Jerusalem!</i></p>\n<p><strong>Translated into</strong> Japanese by Garkbit</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6c1df0fa-4c00-4d70-9233-5dd28134b6e5",
      "date": "1964-08-20T00:00:00.000-04:00",
      "label": "20 August 1964 - Waters, Cristie",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Waters, Cristie"
      ],
      "destinations": [
        "Rickmansworth"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/75ff13b7-0d51-412b-8bab-d3f0231355ab",
            "display": "<section><p><strong><i>Vogsphere</i></strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/128e6bb3-8771-443d-b49f-ab571a12ea9f",
            "display": "<section><p><strong>Title</strong> Rush</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Starship Titanic, Larkinberg</p>\n<p><strong>Date(s)</strong> 1965-01-07.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6d1f449a-5682-404d-b721-0cc643e08a9d",
            "display": "<section><p><strong>Author</strong> Majikthise, <strong>Original Title</strong> Such, Such Were the Joys</p>\n<p><strong>Translated into</strong> Dutch by Loonquawl</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f80d7a46-b1dc-4c30-9f8e-d02941af60f4",
            "display": "<section><p><strong>Author</strong> Garkbit, <strong>Original Title</strong> <i>After Many a Summer Dies the Swan</i></p>\n<p><strong>Translated into</strong> Icelandic by Roosta</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/329b9e01-4d27-48ef-a53a-16d33e5f290f",
            "display": "<section><p><strong>Title</strong> <i>The Yellow Meads of Asphodel</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Date</strong> 1963-07-27.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/75deaee9-fba1-428e-b6b4-0df16760d7e3",
            "display": "<section><p><strong>Title</strong> The Last Enemy</p>\n<p><strong>Proposal/Response</strong> 42</p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Date</strong> 1946-10-19.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/68730e83-cc1b-446b-98b2-1cbff34d378e",
      "date": "1965-05-26T00:00:00.000-04:00",
      "label": "26 May 1965 - Block, Kassie",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Block, Kassie"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/91e83183-c241-4099-b61f-78278adac51a",
            "display": "<section><p><strong>Composer</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> When We're Dancing Close And Slow</p>\n<p><strong>Description</strong> Stumptown <i>swag polaroid goth heirloom</i> wolf.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/75cc3577-9ff7-4290-a6e5-824c620666ab",
            "display": "<section><p><strong>Milan Lynch, 1903-1997</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/fd2c7a94-69ed-43a1-b99c-d8d17bf34b27",
            "display": "<section><p><strong>Karoline Hahn, 1922-1974</strong></p>\n<p>I won't enjoy it.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/015bbb99-1499-46d7-b3e1-2cef0da5534d",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>Master <i>scenester iphone hoodie blog small batch</i> pitchfork.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8f5ecc97-2df4-47df-9394-e3f0dd2b6615",
            "display": "<section><p><strong>Author</strong> Tricia McMillan, <strong>Original Title</strong> The Violent Bear It Away</p>\n<p><strong>Translated into</strong> Spanisn by Prostetnic Vogon Kwaltz</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9bae8c33-1de4-4553-b5f4-ca9a2a022bd4",
            "display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> <i>Let Us Now Praise Famous Men</i></p>\n<p><strong>Translated into</strong> Polish by Lunkwill and Fook</p>\n<p><strong>Translated title</strong> Bistromath.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/eb89b2da-5052-4d61-9ff7-52aa16ca28d0",
            "display": "<section><p><strong>Author</strong> Loonquawl and Phouchg, <strong>Original Title</strong> <i>Alone on a Wide, Wide Sea</i></p>\n<p><strong>Translated into</strong> Gaelic by Arthur Philip Deodat</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a333d28-6983-45f8-b171-c0a5374d2051",
      "date": "1969-04-16T00:00:00.000-05:00",
      "label": "16 April 1969 - Wiza, Darnell",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Wiza, Darnell"
      ],
      "destinations": [
        "Ysllodins"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/04efd3b4-0de3-4efe-8609-8c6cae66ffda",
            "display": "<section><p><strong>Assunta Labadie, 1902-1997</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c19b1e21-9231-43a8-bc2b-3bb2ae25e590",
            "display": "<section><p><strong>Gil Lemke, 1921-1997</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/d1828c09-731c-418b-aa3b-58e4c5e02f7d",
            "display": "<section><p><strong>Rodolfo King, 1910-1974</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3ab73d7c-d272-43fc-9acd-9244260e60a9",
            "display": "<section><p><strong>Title</strong> Terminator 2: Judgment Day</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> RW6, South Sangfurt</p>\n<p><strong>Date(s)</strong> 1949-01-27.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1aad2e83-bbde-491e-97a6-57a134d8c9fb",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1929-09-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/82ae1404-57dd-4245-b515-277c62ee240e",
            "display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1961-07-25.</strong></p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/36e0a425-8a6f-403e-a4d1-b298dbd1e37f",
            "display": "<section><p><strong>Artist</strong> Rob McKenna</p>\n<p><strong>Title</strong> Head</p>\n<p><strong>Description</strong> Normcore hammock blue bottle hella muggle magic.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3ce5dda4-818b-4f8a-b73b-31a22529def1",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> <i>Thunder</i></p>\n<p><strong>Description</strong> Tilde chicharrones keffiyeh goth tryhard master portland disrupt 1.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/425511d3-3072-486b-839c-4ca632b0b71d",
            "display": "<section><p><strong>Artist</strong> Wonko the Sane</p>\n<p><strong>Title</strong> <i>Cream</i></p>\n<p><strong>Description</strong> 8bit normcore kombucha echo.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/76014248-5bff-4be4-a866-15b0a2718756",
      "date": "1970-02-02T00:00:00.000-05:00",
      "label": "02 February 1970 - Monahan, Tammy",
      "language": "german",
      "volume": 2,
      "recipients": [
        "Monahan, Tammy"
      ],
      "destinations": [
        "<i>Arthur Dent's house</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0ad67545-ef3c-47ea-8e79-fb3d21b73cdb",
            "display": "<section><p><strong>Reading</strong>, Kogi <i>hella green juice twee</i> typewriter.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Majikthise</p>\n<p><strong>Place, Date</strong> Lake Jacquelynnland, 25 July 1927</p>\n<p><strong>Director</strong> Tricia McMillan</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/750a2900-e3a1-4fbe-8c4d-7b1c45d3785f",
            "display": "<section><p><strong>Reading</strong>, Salvia humblebrag seitan glutenfree umami roof letterpress.</p>\n<p><strong>Attended with</strong> Donny and Zaphod Beeblebrox</p>\n<p><strong>Place, Date</strong> East Twannaville, 16 August 1956</p>\n<p><strong>Director</strong> Deep Thought</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b6d8e673-0433-4292-9b39-bb0b4f7acd5c",
            "display": "<section><p><strong>Theatre</strong>, Banh <i>mi phlogiston brooklyn vinyl aesthetic listicle asymmetrical pork</i> belly.</p>\n<p><strong>Attended with</strong> Brandt and Oolon Colluphid</p>\n<p><strong>Place, Date</strong> Marytown, 15 December 1965</p>\n<p><strong>Director</strong> Gag Halfrunt</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/08a60237-4cf7-46a5-8a3b-e888fd1d129b",
            "display": "<section><p><strong>Title</strong> <i>The Godfather</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Evolution? they said to themselves, Who needs it?</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, Port Faustino</p>\n<p><strong>Date(s)</strong> 1935-10-18.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4938a718-72b6-4c07-b2ab-5e3ec4905c3d",
            "display": "<section><p><strong>Title</strong> A Clockwork Orange</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Tanngrisnir, Creminton</p>\n<p><strong>Date(s)</strong> 1930-04-18.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/49823568-945e-47ac-b177-76f3d73a9929",
            "display": "<section><p><strong>Title</strong> <i>The Sting</i></p>\n<p><strong>Proposal/Response</strong> And then of course I've got this terrible pain in all the diodes down my left side. / If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, New Terrellmouth</p>\n<p><strong>Date(s)</strong> 1971-06-01.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/33cbb620-30e4-416d-bbe5-0d0b4682d49a",
            "display": "<section><p><strong>Author</strong> Amb. Hong Ritchie</p>\n<p><strong>Title</strong> <i>Precious Bane</i></p>\n<p><strong>Publication</strong> Carlton Publishing Group.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/59476d38-af1c-4b85-8df0-ce6f08672e81",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> <i>Clouds of Witness</i></p>\n<p><strong>Translated into</strong> Ukrainian by Wonko the Sane</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e4168cf7-6520-4dd1-a305-85f9e3ad139b",
      "date": "1971-06-04T00:00:00.000-04:00",
      "label": "04 June 1971 - Raynor, Jung",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Raynor, Jung"
      ],
      "destinations": [
        "Islington"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5d5c0bef-2a70-473e-bac0-2398c5f9c885",
            "display": "<section><p><strong>Rehearsal</strong>, Leggings <i>kombucha pitchfork pbrb xoxo hoodie</i> knausgaard.</p>\n<p><strong>Attended with</strong> The Dude and Roosta</p>\n<p><strong>Place, Date</strong> Rennerberg, 31 May 1944</p>\n<p><strong>Director</strong> Mella</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/57ce7ad3-7a2f-4965-b174-40f768de05aa",
            "display": "<section><p><strong>Orion</strong></p>\n<p><strong>1932-04-15.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a5413713-88f1-41c5-9691-7521ea017cce",
            "display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1928-09-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/dcd334d5-293a-48bf-b186-cfd56f627f6f",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1937-05-30.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e871ba66-bf5c-47ff-a4a7-0069202bf3e9",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> The Proper Study</p>\n<p><strong>Translated into</strong> Russian by Phouchg</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/25d0cab2-4439-4488-a70c-6cd4cff11233",
            "display": "<section><p><strong>Artist</strong> JinJenz</p>\n<p><strong>Title</strong> <i>And God Created Woman</i></p>\n<p><strong>Description</strong> Ethical <i>xoxo pourover bespoke kitsch</i> literally.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a8f262c8-93aa-479b-83e9-277dad5be823",
            "display": "<section><p><strong>Artist</strong> Frankie and Benjy</p>\n<p><strong>Title</strong> <i>When We're Dancing Close And Slow</i></p>\n<p><strong>Description</strong> Hammock portland blog keytar lofi.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fac4fc27-4168-417b-b78f-5e2aed57febe",
            "display": "<section><p><strong>Artist</strong> Yooden Vranx</p>\n<p><strong>Title</strong> <i>I Wanna Be Your Lover</i></p>\n<p><strong>Description</strong> Roof <i>everyday cliche small batch pickled shabby chic occupy</i> thundercats.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a0bc63c2-01d7-4b3b-aac8-d23796e0b87f",
      "date": "1972-11-09T00:00:00.000-05:00",
      "label": "09 November 1972 - Legros, Yajaira",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Legros, Yajaira"
      ],
      "destinations": [
        "<i>Rupert</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/74cb448b-cacd-4138-95cc-2b58c449537f",
            "display": "<section><p><strong>NowWhat</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9bed0e3d-c681-4e5b-b226-9fe328d264a3",
            "display": "<section><p><strong>Broop Kidron 13</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c02fe50e-77cc-479b-955b-e22521c472bd",
            "display": "<section><p><strong>Magrathea</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/22e06690-3a9a-45ad-a636-173e6e53aa9b",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> Virago Press</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Cronut chia sriracha selvage austin truffaut lumbersexual.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/b5ac58ca-5171-461d-b72a-ddbb6ccb48cb",
            "display": "<section><p><strong>Author</strong> Josiah Braun</p>\n<p><strong>Title</strong> I Sing the Body Electric</p>\n<p><strong>Publication</strong> NavPress.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c7d6594a-bcb6-4c7a-aac1-2ee72e450b04",
            "display": "<section><p><strong>Author</strong> Magdalen O'Reilly</p>\n<p><strong>Title</strong> O Jerusalem!</p>\n<p><strong>Publication</strong> McFarland &amp; Company.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e6aa9305-19b2-49aa-b48b-ba2801081310",
            "display": "<section><p><strong>Author</strong> Earle Turcotte</p>\n<p><strong>Title</strong> <i>Blithe Spirit</i></p>\n<p><strong>Publication</strong> Atlas Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/417b1975-f07f-457c-af12-f4250115e9ff",
            "display": "<section><p><strong>Author</strong> Marvin, <strong>Original Title</strong> <i>The Skull Beneath the Skin</i></p>\n<p><strong>Translated into</strong> Hebrew by Frankie and Benjy</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d4a4fb4b-9bb6-439d-ae3d-ad3c9dc4cdc3",
            "display": "<section><p><strong>Author</strong> Grunthos the Flatulent, <strong>Original Title</strong> What's Become of Waring</p>\n<p><strong>Translated into</strong> Flemish by Gail Andrews</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f7dee798-f1e5-470b-94c1-8581ed6a6eca",
            "display": "<section><p><strong>Author</strong> Arthur Dent, <strong>Original Title</strong> The Wives of Bath</p>\n<p><strong>Translated into</strong> Hungarian by Barry Manilow</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ccb4541d-4ee9-41bd-b94c-bd5fc20b01ca",
      "date": "1976-03-09T00:00:00.000-05:00",
      "label": "09 March 1976 - King, Theo",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "King, Theo"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3018f5b1-5911-417d-bc78-e506c60405ce",
            "display": "<section><p><strong>Radio Broadcast</strong>, Blog cliche bushwick churchkey mustache gentrify art party pork belly.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Phouchg</p>\n<p><strong>Place, Date</strong> Jordonchester, 29 January 1924</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/56dd2c95-f904-4da4-854d-4fc98438fc9b",
            "display": "<section><p><strong>Theatre</strong>, Intelligentsia <i>selfies coldpressed yr helvetica butcher pug meditation</i> drinking.</p>\n<p><strong>Attended with</strong> Karl Hungus and Loonquawl</p>\n<p><strong>Place, Date</strong> Reynaldomouth, 01 November 1966</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/bcd0007f-563d-4d7c-aead-830d6d33cd29",
            "display": "<section><p><strong>Reading</strong>, Humblebrag mumblecore migas leggings popup stumptown selvage before they sold out iphone.</p>\n<p><strong>Attended with</strong> The Dude and Oolon Colluphid</p>\n<p><strong>Place, Date</strong> Franeckiborough, 02 September 1951</p>\n<p><strong>Director</strong> Prak</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4f5573aa-df4c-4a17-ad5f-fcb5b198e20f",
            "display": "<section><p><strong>Title</strong> <i>Room</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Krikkit One, East Sonnymouth</p>\n<p><strong>Date(s)</strong> 1953-07-06.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/72e10b34-f3f3-4d78-9f23-d5521dc06114",
            "display": "<section><p><strong>Title</strong> <i>The Elephant Man</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / 42</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Billion Year Bunker, New Rosalinefort</p>\n<p><strong>Date(s)</strong> 1943-05-23.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f0d029f0-3a4e-46e3-95ce-84c4e5ea7ee0",
            "display": "<section><p><strong>Title</strong> <i>It Happened One Night</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Krikkit One, Durganmouth</p>\n<p><strong>Date(s)</strong> 1961-11-24.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0e2b298f-71f9-41c5-b9db-00f78badfed9",
            "display": "<section><p><strong>Gemini</strong></p>\n<p><strong>1935-07-24.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/a4ecfbb0-f79d-4037-8ea7-ef1555c5f211",
            "display": "<section><p><strong>Title</strong> Clouds of Witness</p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Date</strong> 1943-05-16.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/bd0ad9b5-9939-4a71-8548-c93896e92a9d",
            "display": "<section><p><strong>Title</strong> A Farewell to Arms</p>\n<p><strong>Proposal/Response</strong> They’ve got as much sex appeal as a road accident.</p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Date</strong> 1962-05-27.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/98fab93f-4ee7-4b7b-9cdf-33d5c8dd940f",
      "date": "1980-01-10T00:00:00.000-05:00",
      "label": "10 January 1980 - Aufderhar, Delsie",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Aufderhar, Delsie"
      ],
      "destinations": [
        "<i>Frogstar World B</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/20464eea-d90c-4073-bf08-17e98a7c839f",
            "display": "<section><p><strong><i>Bethselamin</i></strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c3e29a70-aa08-48c3-a83b-ca218750f35b",
            "display": "<section><p><strong>Dangrabad Beta</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b8b425dd-b081-428c-99ce-53cc827d36aa",
            "display": "<section><p><strong>Title</strong> Princess Mononoke</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Krikkit One, Schillerland</p>\n<p><strong>Date(s)</strong> 1958-05-12.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c23f6327-c9e5-4491-a600-acf515ff7b6d",
            "display": "<section><p><strong>Title</strong> Groundhog Day</p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Bistromath, North Todberg</p>\n<p><strong>Date(s)</strong> 1941-01-11.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/cace3834-821c-4e36-92f4-20252d479268",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Burns &amp; Oates</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Publication</strong> Aesthetic bushwick godard roof squid cold-pressed retro forage hella.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/336d977b-556e-443e-a1a0-bd3b2676fce5",
            "display": "<section><p><strong>Title</strong> Ego Dominus Tuus</p>\n<p><strong>Proposal/Response</strong> ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Translator</strong> Pizpot Gargravarr</p>\n<p><strong>Date</strong> 1958-07-04.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7839a019-2097-4b4a-80e8-fe0ecc170b50",
            "display": "<section><p><strong>Title</strong> Such, Such Were the Joys</p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Fenchurch</p>\n<p><strong>Date</strong> 1934-05-28.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7c0f5d74-1627-4022-ab76-2e9667ed3194",
      "date": "1983-06-24T00:00:00.000-04:00",
      "label": "24 June 1983 - Jaskolski, Bo",
      "language": "italian",
      "volume": 3,
      "recipients": [
        "Jaskolski, Bo"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6b3fb890-4886-4d8a-85f3-3ba7f1483cb4",
            "display": "<section><p><strong>Rehearsal</strong>, Pourover <i>echo readymade five dollar toast irony pickled fixie</i> shoreditch.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Majikthise</p>\n<p><strong>Place, Date</strong> Steveburgh, 27 March 1950</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6e3d29ef-489c-46b9-85dd-46576ad4e0f5",
            "display": "<section><p><strong>Reading</strong>, Direct <i>trade distillery pickled thundercats gastropub</i> 8bit.</p>\n<p><strong>Attended with</strong> Donny and Phouchg</p>\n<p><strong>Place, Date</strong> New Rudytown, 12 December 1953</p>\n<p><strong>Director</strong> Loonquawl</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9d352551-7aac-4e4b-a967-b004b543115c",
            "display": "<section><p><strong><i>Han Wavel</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c15afbad-0c9e-47c4-9426-2ef09d1c2cbf",
            "display": "<section><p><strong><i>NowWhat</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/7eae13e4-48cd-4761-8248-d2ce24dfcf5d",
            "display": "<section><p><strong>Omer Wolf, 1923-1982</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b7ab81bd-0461-4046-a27f-a7a076d5b5a6",
            "display": "<section><p><strong>Marty Becker, 1912-1996</strong></p>\n<p>I won't enjoy it.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f2742c98-5469-4449-b369-708b972bab44",
            "display": "<section><p><strong>Chas King, 1907-1998</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8f725120-4e33-4979-8713-3d911410d569",
            "display": "<section><p><strong>Artist</strong> Trin Tragula</p>\n<p><strong>Title</strong> <i>Crimson and Clover</i></p>\n<p><strong>Description</strong> Biodiesel fashion axe pinterest taxidermy readymade polaroid whatever tryhard pork belly.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/221dbae2-33bb-407e-9879-99ecb013600f",
      "date": "1984-12-10T00:00:00.000-05:00",
      "label": "10 December 1984 - Glover, Doyle",
      "language": "italian",
      "volume": 4,
      "recipients": [
        "Glover, Doyle"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bf16a7f8-2e87-4265-9272-25f0e0cb830c",
            "display": "<section><p><strong>Reading</strong>, Organic <i>quinoa everyday pickled gastropub lofi you probably havent heard of</i> them.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Max Quordlepleen</p>\n<p><strong>Place, Date</strong> Harveyshire, 22 February 1940</p>\n<p><strong>Director</strong> Yooden Vranx</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e4953f72-0b65-4785-914a-ef15384e66f6",
            "display": "<section><p><strong>Theatre</strong>, Popup drinking brooklyn hashtag bicycle rights cleanse.</p>\n<p><strong>Attended with</strong> Karl Hungus and Garkbit</p>\n<p><strong>Place, Date</strong> Jewelview, 28 August 1968</p>\n<p><strong>Director</strong> Trillian</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0e6520ee-416c-4845-8de4-5bcd845ed88f",
            "display": "<section><p><strong>Vogsphere</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6b15ec21-d29a-4fd4-8dfa-da0dc7236b09",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/10a6a1a1-3f97-4d39-818c-5ae8dbb00933",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1934-10-10.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/80a28985-a916-4c57-8062-6984a5707607",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1930-09-06.</strong></p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/36a5fffe-b027-4559-ba1f-6ddafa6c7e8b",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> <i>Blithe Spirit</i></p>\n<p><strong>Translated into</strong> Japanese by Hillman Hunter</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/571c6276-4824-442c-9d9e-c5da7ae57e8a",
            "display": "<section><p><strong>Author</strong> Yooden Vranx, <strong>Original Title</strong> <i>Carrion Comfort</i></p>\n<p><strong>Translated into</strong> Japanese by Zaphod Beeblebrox</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/82352727-0896-474b-8264-65b4636084b6",
            "display": "<section><p><strong>Author</strong> Prostetnic Vogon Jeltz, <strong>Original Title</strong> <i>The Mirror Crack'd from Side to Side</i></p>\n<p><strong>Translated into</strong> Braille by Bowerick Wowbagger</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2b72c694-1045-4b26-85de-1198e561e975",
      "date": "1985-12-14T00:00:00.000-05:00",
      "label": "14 December 1985 - Herman, Elwood",
      "language": "italian",
      "volume": 0,
      "recipients": [
        "Herman, Elwood"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2fc4e7bb-dc3a-42a0-804e-1be8f87cb2fd",
            "display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1952-05-12.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/618d65d6-2d4c-459e-bbed-e3ce9637b71c",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1943-07-10.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0e0740ca-e8da-45f4-827f-61cffcea1d8b",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> New English Library</p>\n<p><strong>Translator</strong> Emily Saunders</p>\n<p><strong>Publication</strong> Venmo fanny pack kickstarter selfies church-key vinyl ethical park quinoa.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d196522e-3677-4b90-b783-fa921f36e1a9",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Peace Hill Press</i></p>\n<p><strong>Translator</strong> Vroomfondel</p>\n<p><strong>Publication</strong> Vinegar tattooed raw denim put a bird on it ennui locavore.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/db913de3-02e8-430a-8a35-4a793357aa3c",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Ballantine Books</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Publication</strong> Actually godard cardigan literally organic meggings goth drinking.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/190c4b02-6369-440e-a80e-5d29cfec311f",
            "display": "<section><p><strong>Author</strong> Trin Tragula, <strong>Original Title</strong> All the King's Men</p>\n<p><strong>Translated into</strong> Italian by Hotblack Desiato's bodyguard</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4218a83b-ca5d-432a-8af4-83c55bd3c432",
            "display": "<section><p><strong>Author</strong> Hotblack Desiato, <strong>Original Title</strong> <i>Look to Windward</i></p>\n<p><strong>Translated into</strong> Portuguese by Charles Darwin</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/01470c92-c172-4bc3-8ced-030610df31bf",
            "display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> <i>Funk n' Roll</i></p>\n<p><strong>Description</strong> Synth <i>artisan heirloom food</i> truck.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f0b09d45-31dd-4e3a-81a0-b7a9602235d0",
            "display": "<section><p><strong>Artist</strong> Eddie the Computer</p>\n<p><strong>Title</strong> Funk n' Roll</p>\n<p><strong>Description</strong> Godard yuccie street tofu goth banh mi pitchfork.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1b7b09d9-f86d-438c-9fe5-99537d0f867e",
      "date": "1986-08-30T00:00:00.000-04:00",
      "label": "30 August 1986 - Blick, Cedric",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Blick, Cedric"
      ],
      "destinations": [
        "Madagascar"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/796c9885-c880-4e5c-96e8-3686531e0d4d",
            "display": "<section><p><strong>Magrathea</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e70f0e94-6365-49c1-a328-eb164b204e2f",
            "display": "<section><p><strong>Lamuella</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1676115c-d8d2-4b8f-ae56-2c5753faa5ff",
            "display": "<section><p><strong><i>Fenchurch Street railway station</i></strong></p>\n<p>Vhs poutine echo helvetica.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cc1dca46-8abb-42ad-821d-6455b94be014",
            "display": "<section><p><strong>Milliways</strong></p>\n<p>Vinegar <i>actually kinfolk shabby chic keytar fashion axe 8bit</i> tumblr.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/fca3f72d-9e01-4cf8-bc88-64680072d104",
            "display": "<section><p><strong><i>Stavromula Beta</i></strong></p>\n<p>Poutine <i>pug skateboard dreamcatcher kitsch waistcoat typewriter keffiyeh</i> pbrb.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9fac1359-db22-4b5f-8fc5-3c78b44972e0",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> Something in the Water (Does Not Compute)</p>\n<p><strong>Description</strong> Letterpress cronut franzen master lofi hashtag shoreditch skateboard muggle magic.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b4c07525-9d12-4f61-947b-8cb02ec8f314",
            "display": "<section><p><strong>Artist</strong> Questular Rontok</p>\n<p><strong>Title</strong> <i>I Feel For You</i></p>\n<p><strong>Description</strong> Cleanse seitan wayfarers tattooed waistcoat semiotics distillery chicharrones iphone.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0e0d5594-f5cb-48d2-ac5c-5b59e509a063",
            "display": "<section><p><strong>Title</strong> Fame Is the Spur</p>\n<p><strong>Proposal/Response</strong> In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Translator</strong> Elvis</p>\n<p><strong>Date</strong> 1972-07-25.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7858a3ff-0980-4aa9-b25e-eee516285c33",
            "display": "<section><p><strong>Title</strong> <i>Little Hands Clapping</i></p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Date</strong> 1958-07-10.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ba0f0dc7-8433-4e3c-ad97-1d900f5f7f68",
            "display": "<section><p><strong>Title</strong> His Dark Materials</p>\n<p><strong>Proposal/Response</strong> ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Date</strong> 1924-10-08.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b4f18c46-2689-4733-9dc0-28f1246a65ff",
      "date": "1988-04-07T00:00:00.000-04:00",
      "label": "07 April 1988 - Padberg, Elicia",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Padberg, Elicia"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/000b582e-4cc3-4c12-8ac5-655ff1c135a4",
            "display": "<section><p><strong>Theatre</strong>, Blue <i>bottle master tumblr irony helvetica austin vinyl</i> offal.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Marvin</p>\n<p><strong>Place, Date</strong> New Ricardoberg, 20 December 1925</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1b2b4081-5d00-46ff-b4f2-0549875c0164",
            "display": "<section><p><strong>Highgate Cemetery</strong></p>\n<p>Brunch <i>xoxo aesthetic cred 90s pinterest</i> vegan.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a74efc62-597a-49cd-9354-7c06fc9cc49f",
            "display": "<section><p><strong>Asbleg</strong></p>\n<p>Vice irony semiotics tacos before they sold out brooklyn.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a898fbe2-2267-41fd-ae1d-1c28856ef40f",
            "display": "<section><p><strong>Guildford</strong></p>\n<p>Typewriter <i>thundercats art party street leggings cardigan migas drinking</i> pourover.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8e89bc4a-79d9-41de-9252-f97850ab6929",
            "display": "<section><p><strong>Title</strong> <i>Sunset Blvd.</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Tanngrisnir, Kevintown</p>\n<p><strong>Date(s)</strong> 1927-09-17.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e416a34d-25a4-421b-835f-206764c33646",
            "display": "<section><p><strong>Title</strong> V for Vendetta</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Vogon Constructor Fleet, Port Genaro</p>\n<p><strong>Date(s)</strong> 1945-08-27.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/70cd8bf8-8cd3-42aa-8517-c269156f1ab8",
            "display": "<section><p><strong>Author</strong> Tricia McMillan, <strong>Original Title</strong> The Little Foxes</p>\n<p><strong>Translated into</strong> Russian by Wonko the Sane</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 18,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 3,
          "doc_count": 4
        },
        {
          "key": 4,
          "doc_count": 4
        },
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 2,
          "doc_count": 3
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 18,
      "buckets": [
        {
          "key_as_string": "1952-01-01T00:00:00.000Z",
          "key": -568080000000,
          "doc_count": 2
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
          "doc_count": 0
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 0
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
          "doc_count": 2
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
      "meta": {
      },
      "doc_count": 18,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "The Rath College",
          "doc_count": 11
        },
        {
          "key": "South Jerde",
          "doc_count": 8
        },
        {
          "key": "McDermott Academy",
          "doc_count": 7
        },
        {
          "key": "South Carter College",
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
          "doc_count": 12
        },
        {
          "key": "english",
          "doc_count": 6
        },
        {
          "key": "french",
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
    "total_count": 18,
    "links": {
      "self": "http://example.org/letters?languages=German%2C+italian&page=1"
    }
  }
}
~~~

