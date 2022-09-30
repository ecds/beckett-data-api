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

<pre>GET /letters?start_date=1979-09-11&amp;end_date=1985-08-13</pre>

#### Query Parameters

<pre>start_date: 1979-09-11
end_date: 1985-08-13</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1985-08-13&amp;page=1&amp;start_date=1979-09-11&gt;; rel=&#39;self&#39;
X-Total-Count: 8
Content-Type: application/json; charset=utf-8
ETag: W/&quot;664755b12830383e694c5987c66ea641&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 32708ec0-8207-4f6f-90b1-0c836d1f8273
X-Runtime: 3.082675
Vary: Origin
Content-Length: 36642</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/7add34bb-7bb2-4de5-84db-1d082086e1e7",
      "date": "1979-09-11T00:00:00.000-04:00",
      "label": "11 September 1979 - Collins, Gwyn",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Collins, Gwyn"
      ],
      "destinations": [
        "Belgium"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/31b29d85-06c3-4f56-b74d-f5b06c5ec557",
            "display": "<section><p><strong>Composer</strong> Hactar</p>\n<p><strong>Title</strong> Let's Go Crazy</p>\n<p><strong>Description</strong> Flannel shoreditch sustainable truffaut.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/707df605-9e10-4fc3-be28-0b3ce1503335",
            "display": "<section><p><strong>Composer</strong> Trin Tragula</p>\n<p><strong>Title</strong> Superfunkycalifragisexy</p>\n<p><strong>Description</strong> Postironic bespoke echo mlkshk.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bd8f7acf-c888-4312-b368-aec5a4445c43",
            "display": "<section><p><strong>Composer</strong> Rob McKenna</p>\n<p><strong>Title</strong> My Name Is Prince</p>\n<p><strong>Description</strong> Meh poutine pickled pug crucifix.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0976ca0d-ce8e-4511-b7af-ee5da2984ab7",
            "display": "<section><p><strong><i>Burphon XII</i></strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d6fed5d9-c47d-4bef-8af9-2361895d9634",
            "display": "<section><p><strong>Preliumtarn</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f0431584-ba1a-4bf1-b3c5-34eb878d2a82",
            "display": "<section><p><strong>Broop Kidron 13</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/70431d9c-21d3-4d28-9996-0f656aea0df1",
            "display": "<section><p><strong>Author</strong> Ford Prefect, <strong>Original Title</strong> <i>The Golden Bowl</i></p>\n<p><strong>Translated into</strong> Polish by Dan Streetmentioner</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/976c98b9-e4ab-4221-8e0e-c9aa7c6703da",
            "display": "<section><p><strong>Author</strong> Gag Halfrunt, <strong>Original Title</strong> From Here to Eternity</p>\n<p><strong>Translated into</strong> Finnish by Paula Nancy Millstone Jennings</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6b9da6b6-aa8b-4eb5-88a9-b62e4d15b38c",
            "display": "<section><p><strong>Artist</strong> Hotblack Desiato</p>\n<p><strong>Title</strong> Tamborine</p>\n<p><strong>Description</strong> Glutenfree kogi drinking photo booth bushwick seitan flexitarian yolo.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b11e0a54-2d46-496b-8801-7b19b3a611bf",
            "display": "<section><p><strong>Artist</strong> Mr. Prosser</p>\n<p><strong>Title</strong> <i>200 Balloons</i></p>\n<p><strong>Description</strong> Flexitarian microdosing retro kickstarter polaroid umami kale chips godard wayfarers.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cf1efa6d-875e-41e6-a0b9-306bf0b11014",
            "display": "<section><p><strong>Artist</strong> Random Dent</p>\n<p><strong>Title</strong> <i>(There'll Never B) Another Like Me</i></p>\n<p><strong>Description</strong> Fanny pack semiotics quinoa park jean shorts intelligentsia yr.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a2b0eca-2251-4e16-b208-3c302d225829",
      "date": "1980-11-25T00:00:00.000-05:00",
      "label": "25 November 1980 - Pfannerstill, Branden",
      "language": "english",
      "volume": 4,
      "recipients": [
        "Pfannerstill, Branden"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f0340b75-eb51-4de9-92ed-cf17045191df",
            "display": "<section><p><strong>Eleanor Larkin, 1907-1994</strong></p>\n<p>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/42d303a5-dcf1-465d-8474-2eeca754fa7d",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1939-03-18.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c5674944-f1da-4c1e-a37a-21d9ca8dbc96",
            "display": "<section><p><strong>Apollo</strong></p>\n<p><strong>1969-04-25.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d0930264-8dcf-4cfa-9407-d596c3989f52",
            "display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1934-10-20.</strong></p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0b7f21c8-63a7-4a04-8ac7-ad65027dfeb6",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> City Lights Publishers</p>\n<p><strong>Translator</strong> Hotblack Desiato</p>\n<p><strong>Publication</strong> Health flexitarian goth swag mumblecore.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/669191f2-56aa-4e0d-b340-c3e3cfa4ef58",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Libertas Academica</i></p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Publication</strong> Venmo pinterest seitan kickstarter put a bird on it.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/aa0348d9-64d0-4339-9963-c729edf78446",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>Chick Publications</i></p>\n<p><strong>Translator</strong> Arthur Philip Deodat</p>\n<p><strong>Publication</strong> Cred yolo selvage umami.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2f8fc078-c28f-4415-8b84-f9d5406a7048",
            "display": "<section><p><strong>Author</strong> Effrafax of Wug, <strong>Original Title</strong> Far From the Madding Crowd</p>\n<p><strong>Translated into</strong> Danish by Random Dent</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/aab120ae-57aa-42aa-978c-a121055110cc",
            "display": "<section><p><strong>Author</strong> Random Dent, <strong>Original Title</strong> Jesting Pilate</p>\n<p><strong>Translated into</strong> Greek by Frankie and Benjy</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7816f927-cccd-435b-b462-fa04423d99df",
      "date": "1980-12-22T00:00:00.000-05:00",
      "label": "22 December 1980 - Windler, John",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Windler, John"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7a651c8c-f0a8-4eaa-bdd1-177d06cee074",
            "display": "<section><p><strong>Reading</strong>, Brunch blog glutenfree street flexitarian vegan.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Genghis Khan</p>\n<p><strong>Place, Date</strong> Larsonside, 28 December 1963</p>\n<p><strong>Director</strong> Colin the Security Robot</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9b095d10-c14c-4a49-bfd9-690350b64bcd",
            "display": "<section><p><strong>Theatre</strong>, Gentrify <i>vice dreamcatcher crucifix yr godard heirloom portland</i> vhs.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Genghis Khan</p>\n<p><strong>Place, Date</strong> Lubowitzchester, 02 December 1927</p>\n<p><strong>Director</strong> Rob McKenna</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b70a3606-9e23-4a62-94bd-954f411f5b88",
            "display": "<section><p><strong>Rehearsal</strong>, Kale chips franzen salvia synth muggle magic seitan small batch photo booth.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Hactar</p>\n<p><strong>Place, Date</strong> Hughstad, 22 November 1925</p>\n<p><strong>Director</strong> Prostetnic Vogon Jeltz</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/2d67113d-bb7b-4493-b028-3290d8bccc6e",
            "display": "<section><p><strong><i>Magrathea</i></strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f512cbf0-0f54-4f89-ba4f-bd184a44c27a",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/087c9043-fd3e-4884-bdea-1028f2cd8f57",
            "display": "<section><p><strong>Title</strong> Rush</p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> Walter Sobchak <strong>Theatre, City</strong> Billion Year Bunker, East Elianachester</p>\n<p><strong>Date(s)</strong> 1929-09-25.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/376231a4-38a8-41d4-888f-a81ba58c99a1",
            "display": "<section><p><strong>Title</strong> <i>Into the Wild</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Vogon Constructor Fleet, Jasonville</p>\n<p><strong>Date(s)</strong> 1972-05-26.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2a42fec5-41a3-464c-bfc8-c810d1b5a5a6",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Godwit Press</i></p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Publication</strong> Xoxo synth intelligentsia celiac umami.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8c3a1233-b36b-45ec-8367-9533dd115dc5",
      "date": "1981-03-11T00:00:00.000-05:00",
      "label": "11 March 1981 - Emard, Zora",
      "language": "german",
      "volume": 0,
      "recipients": [
        "Emard, Zora"
      ],
      "destinations": [
        "Belgium"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/01d4f983-82f8-4c04-b266-5418c9757deb",
            "display": "<section><p><strong>Radio Broadcast</strong>, Put <i>a bird on it master brunch</i> dreamcatcher.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Phouchg</p>\n<p><strong>Place, Date</strong> West Shawndaborough, 10 October 1934</p>\n<p><strong>Director</strong> Hotblack Desiato</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/44d7e5ad-8068-4176-a793-8e599849c6c0",
            "display": "<section><p><strong>Rehearsal</strong>, Asymmetrical gentrify wes anderson deep v thundercats kale chips farmtotable.</p>\n<p><strong>Attended with</strong> Maude Lebowski and Colin the Security Robot</p>\n<p><strong>Place, Date</strong> East Hillary, 11 September 1968</p>\n<p><strong>Director</strong> Wonko the Sane</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/02de40e5-abff-405d-a244-95bdae75f86a",
            "display": "<section><p><strong>Bournemouth</strong></p>\n<p>Meditation synth gentrify popup.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/40c1c107-35ab-4ab0-afd7-77b7f0f21b64",
            "display": "<section><p><strong>Horse and Groom</strong></p>\n<p>Neutra <i>normcore messenger bag aesthetic artisan vinegar stumptown meditation</i> roof.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/5a8752ab-cae0-4ffa-9836-b43a159475f7",
            "display": "<section><p><strong><i>Asbleg</i></strong></p>\n<p>Before they sold out scenester art party pickled disrupt farmtotable.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/117bac6c-bb2d-4bc3-be35-3b06974b0b20",
            "display": "<section><p><strong>Author</strong> Leigh Kunde II</p>\n<p><strong>Title</strong> <i>Vanity Fair</i></p>\n<p><strong>Publication</strong> Edupedia Publications.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/f13c0ddf-58a6-4f5b-9695-e55842f3531e",
            "display": "<section><p><strong>Author</strong> Christian Schneider</p>\n<p><strong>Title</strong> Fair Stood the Wind for France</p>\n<p><strong>Publication</strong> Naiad Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/912656c2-099f-4fe4-824d-4821f4871160",
            "display": "<section><p><strong>Author</strong> Zarniwoop, <strong>Original Title</strong> Some Buried Caesar</p>\n<p><strong>Translated into</strong> Italian by Arthur Philip Deodat</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f538c16c-1551-4079-b243-c98ce80f284b",
      "date": "1981-04-07T00:00:00.000-05:00",
      "label": "07 April 1981 - Ratke, Lauran",
      "language": "french",
      "volume": 2,
      "recipients": [
        "Ratke, Lauran"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/04428248-cc4b-4dc9-a0a7-f66956943b81",
            "display": "<section><p><strong><i>Golgafrincham</i></strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/3f947023-8260-436a-974e-6f1f43392857",
            "display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1959-07-07.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6ef24fa1-f970-4d2c-a7c8-2e92191bd9cc",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1932-08-20.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/92863b73-8b74-47d2-a289-c3e8ede0c1ef",
            "display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1951-01-26.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/6677177e-da29-49f9-b9a5-7ab654d95706",
            "display": "<section><p><strong>Author</strong> Debora Russel</p>\n<p><strong>Title</strong> <i>The Road Less Traveled</i></p>\n<p><strong>Publication</strong> Black Dog Publishing.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6b6679b9-5ec4-4854-95a9-d4e35fd1f839",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> <i>Play In The Sunshine</i></p>\n<p><strong>Description</strong> Biodiesel <i>keffiyeh yolo shoreditch echo</i> ugh.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d5387eca-e90b-4b6c-841e-73dac0a9cf1f",
            "display": "<section><p><strong>Artist</strong> Emily Saunders</p>\n<p><strong>Title</strong> <i>Jam Of The Year</i></p>\n<p><strong>Description</strong> Bespoke <i>cleanse carry viral heirloom franzen wayfarers raw</i> denim.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fd4b3db9-d89a-4b3b-bf9c-5708aeebf02c",
            "display": "<section><p><strong>Artist</strong> Effrafax of Wug</p>\n<p><strong>Title</strong> New Position</p>\n<p><strong>Description</strong> Postironic <i>mlkshk lumbersexual helvetica organic typewriter gastropub</i> wayfarers.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3b770dcf-0919-4f4a-abd4-e97ad3ddb6d9",
      "date": "1982-11-22T00:00:00.000-05:00",
      "label": "22 November 1982 - Fisher, Robert",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Fisher, Robert"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/28096348-4188-49f3-9c0e-e9edbca9e0bd",
            "display": "<section><p><strong>Composer</strong> Eddie the Computer</p>\n<p><strong>Title</strong> (There'll Never B) Another Like Me</p>\n<p><strong>Description</strong> Williamsburg letterpress park drinking phlogiston street tumblr art party.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/fac7db6c-3638-46a8-a060-53f5bc9c12c9",
            "display": "<section><p><strong><i>Viltvodle VI</i></strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c6a6a8b8-9162-4166-a673-84c2e52246da",
            "display": "<section><p><strong>Author</strong> Donny</p>\n<p><strong>Title</strong> <i>Ten Speed Press</i></p>\n<p><strong>Translator</strong> Magrathean sperm whale</p>\n<p><strong>Publication</strong> Messenger bag yolo semiotics church-key chillwave twee.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0cecb2f3-83fc-4844-8322-02ce24db4978",
            "display": "<section><p><strong>Author</strong> Bowerick Wowbagger, <strong>Original Title</strong> <i>The Proper Study</i></p>\n<p><strong>Translated into</strong> Serbo Croatian by Questular Rontok</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d3450a15-be20-43c9-8947-93c325bac94e",
            "display": "<section><p><strong>Author</strong> Paula Nancy Millstone Jennings, <strong>Original Title</strong> The Curious Incident of the Dog in the Night-Time</p>\n<p><strong>Translated into</strong> Danish by Marvin</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d5ade34a-fdce-4347-a968-4a734e31ad13",
      "date": "1983-03-25T00:00:00.000-05:00",
      "label": "25 March 1983 - Paucek, Phil",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Paucek, Phil"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/41c5b5c9-330e-4d07-a2dc-c457a4cd9965",
            "display": "<section><p><strong>Rehearsal</strong>, Vinyl godard occupy butcher vegan.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Wonko the Sane</p>\n<p><strong>Place, Date</strong> Lake Chungton, 21 October 1962</p>\n<p><strong>Director</strong> Bowerick Wowbagger</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5bd53dfa-a01e-47e3-a0a0-95742a31ee49",
            "display": "<section><p><strong>Rehearsal</strong>, Disrupt five dollar toast cleanse marfa jean shorts distillery.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Lintilla</p>\n<p><strong>Place, Date</strong> New Hattie, 10 October 1927</p>\n<p><strong>Director</strong> Barry Manilow</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2da1e96a-8f4a-4341-b938-21d1971dc58c",
            "display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> <i>Tamborine</i></p>\n<p><strong>Description</strong> Shoreditch <i>lofi quinoa fanny pack brunch</i> tacos.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/40045669-70f3-4f18-b9e3-54e0c350c71a",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> (There'll Never B) Another Like Me</p>\n<p><strong>Description</strong> Selvage food truck keytar wolf hashtag.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/637d7ae9-8cbf-476d-aa9e-564f2f6f44fa",
            "display": "<section><p><strong>Composer</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Scandalous!</i></p>\n<p><strong>Description</strong> Sriracha freegan bicycle rights pinterest migas wes anderson carry gastropub.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/fbdc98b2-aaca-4ee8-8e98-47c8ee0dc17f",
            "display": "<section><p><strong>Title</strong> The Grand Budapest Hotel</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Heart of Gold, North Tyronshire</p>\n<p><strong>Date(s)</strong> 1970-07-01.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3fa93755-c50a-4ecf-8e66-efce1a81f337",
            "display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Book Works</p>\n<p><strong>Translator</strong> Questular Rontok</p>\n<p><strong>Publication</strong> Swag poutine leggings austin pabst muggle magic.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9557d2d8-9032-49f1-b1c4-25f40d571a0f",
            "display": "<section><p><strong>Author</strong> Karl Hungus</p>\n<p><strong>Title</strong> <i>Eel Pie Publishing</i></p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Publication</strong> Sustainable chillwave keffiyeh farm-to-table readymade.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cba592bb-bb4b-4bf8-aaca-92386576ee09",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Golden Cockerel Press</i></p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Publication</strong> Roof kombucha cleanse squid everyday tumblr.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f5e08a62-66a1-4a16-ae30-bc5d9e370550",
      "date": "1985-08-13T00:00:00.000-04:00",
      "label": "13 August 1985 - Morar, Deetta",
      "language": "english",
      "volume": 3,
      "recipients": [
        "Morar, Deetta"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/71a20fb6-abc8-4754-aedf-c476f20e9475",
            "display": "<section><p><strong>Rehearsal</strong>, Humblebrag paleo everyday crucifix artisan messenger bag fixie.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Effrafax of Wug</p>\n<p><strong>Place, Date</strong> East Cassidy, 08 February 1948</p>\n<p><strong>Director</strong> Bowerick Wowbagger</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0ae84862-1fbf-4d08-b532-8ec3aa4127f1",
            "display": "<section><p><strong>Rupert</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/926a047b-0844-404b-ba2b-7e1394a8c887",
            "display": "<section><p><strong>Dangrabad Beta</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a0c7bd55-33dc-4358-895e-8ae0694479bf",
            "display": "<section><p><strong><i>Belgium</i></strong></p>\n<p>Beard authentic franzen vinegar taxidermy kitsch narwhal muggle magic aesthetic.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/64fbd366-0acb-47b9-931e-b97562944db9",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Cambridge University Press</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Publication</strong> Austin selvage thundercats everyday carry sriracha.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/845599ec-3520-4f0c-985f-f5451f47af6d",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>Newnes</i></p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Swag flexitarian whatever bitters cred direct trade hammock.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c43dbb21-6059-415d-ac3a-eb7883217db1",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Newnes</i></p>\n<p><strong>Translator</strong> Effrafax of Wug</p>\n<p><strong>Publication</strong> Aesthetic direct trade pug williamsburg helvetica.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "doc_count": 8,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 1,
          "doc_count": 4
        },
        {
          "key": 0,
          "doc_count": 1
        },
        {
          "key": 2,
          "doc_count": 1
        },
        {
          "key": 3,
          "doc_count": 1
        },
        {
          "key": 4,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "doc_count": 8,
      "buckets": [
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1980-01-01T00:00:00.000Z",
          "key": 315532800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 1
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
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 8,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "West Wisoky College",
          "doc_count": 6
        },
        {
          "key": "West Legros University",
          "doc_count": 4
        },
        {
          "key": "The California Institute",
          "doc_count": 3
        },
        {
          "key": "West Kentucky Academy",
          "doc_count": 2
        }
      ]
    },
    "language": {
      "doc_count": 8,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 2
        },
        {
          "key": "french",
          "doc_count": 2
        },
        {
          "key": "german",
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
    "total_count": 8,
    "links": {
      "self": "http://example.org/letters?end_date=1985-08-13&page=1&start_date=1979-09-11"
    }
  }
}
~~~

