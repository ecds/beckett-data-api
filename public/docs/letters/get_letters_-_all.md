# Letters API

## GET /letters - All

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
ETag: W/&quot;c31e1a0bda2efcb78287e6fa6554027d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0eb3e26c-c7fb-49fd-9e4c-a2b938da1186
X-Runtime: 2.116056
Vary: Origin
Content-Length: 50527</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/938765a1-8aae-4214-89a5-f84ba3a52ad7",
      "date": "1957-01-17T00:00:00.000-05:00",
      "label": "17 January 1957 - <i>Brandt</i>",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "<i>Seventh Galaxy of Light and Ingenuity</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6cf27a32-f30b-4c1a-94ae-a9f5e6cae6c2",
            "display": "<span>Homer Simpson (1913-1987). Tattooed <i>knausgaard migas vegan</i> asymmetrical.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e1aafcb5-a81a-4158-9a09-470b1b61c667",
            "display": "<span>Homer Simpson (1922-1993). Gastropub <i>cray banjo trust fund</i> hella.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/20f2b613-1b24-4ea0-b51e-f657312dbebc",
            "display": "<span><i>The Wizard of Oz</i>, dir. Bunny Lebowski, Krikkit One, Mikeberg, 1929-05-04.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/d8026135-5cee-4caa-bc56-7680324a6fdc",
            "display": "<span>Star Wars: Episode III – Revenge of the Sith, dir. The Big Lebowski, Vogon Constructor Fleet, Drewberg, 1950-08-08.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/82cdd76e-85e6-4187-948d-8bc2fbe3eb86",
            "display": "<span>Donny, <i>Brandt</i>, Zarquon Brunch 8-bit truffaut ugh pitchfork cold-pressed slow-carb.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a743a3ce-70f2-4f73-9fd9-b3edb129b580",
            "display": "<span>Jesus Quintana, <i>Brandt</i>, Grunthos the Flatulent Tilde fingerstache sriracha waistcoat gentrify.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b59ec277-9ad5-41c8-8c50-455721c721fe",
            "display": "<span>Jesus Quintana, Butterscotch Horseman, Yooden Vranx Franzen +1 xoxo fixie kombucha try-hard vinyl put a bird on it.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/97b8e195-1e47-4d95-a03c-ac9ff8039def",
            "display": "<span><i>The Green Bay Tree</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a84eaa97-39f3-4fac-aa61-cbefdfbc4975",
            "display": "<span>Have His Carcase.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/45ef8118-f163-49b8-bb97-ed712c9df366",
      "date": "1957-03-17T00:00:00.000-05:00",
      "label": "17 March 1957 - <i>Mario</i>",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "North West Ripple"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/bb45f2b0-7660-4320-b35f-9bbaad22026f",
            "display": "<span>Viltvodle VI, Derrick Barry.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f99c41a2-6f2d-4f79-a9c6-c39e36223e20",
            "display": "<span><i>Xaxis</i>, Aja.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/01948a2d-9792-4079-aeac-14415fdd11ea",
            "display": "<span>Leia Organa (1904-1975). Semiotics meh tacos brooklyn helvetica church-key polaroid flexitarian.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/36de9ecf-6322-42cf-9458-1086f9a6d7e4",
            "display": "<span>Brandt (1928-1988). Butcher flannel trust fund scenester meh tumblr migas.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6c4a87d4-1e6b-4c0c-8d35-d42b2922ecc4",
            "display": "<span>Brandt (1915-1986). Pop-up organic lo-fi cold-pressed swag meggings health kinfolk.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/877810d0-ab4f-4487-bb83-1728acf17a91",
            "display": "<span>Annika Lebsack, <i>The Last Temptation</i>, HarperCollins.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/abbbcfc2-7654-414f-9ee9-44ce0d874db6",
            "display": "<span>Dr. Reagan Gutmann, Of Mice and Men, Bowes & Bowes.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d1cc1ee6-29d1-416e-a9c2-decd7ece4d2f",
            "display": "<span>Shaunte Raynor, <i>Wildfire at Midnight</i>, Bloodaxe Books.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/9921323f-9fe4-49d2-b8ee-575b991b9a5c",
            "display": "<span>Butter In a Lordly Dish.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7382b6f2-d363-4c61-a49c-c6b74d01cd97",
      "date": "1957-07-06T00:00:00.000-04:00",
      "label": "06 July 1957 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Seventh Galaxy of Light and Ingenuity"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3a451604-b6c3-4b04-9f34-c586fa9e25b6",
            "display": "<span>vinyl, The Green Mile, Marcusport, 23 March 1968.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3919e79a-bc50-47ee-b962-a51e6513deff",
            "display": "<span>Vroomfondel, Endorphinmachine [Phi Phi O'Hara].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/42dbf7a6-a1b1-469c-b0f4-91c124b8c16b",
            "display": "<span>Mella, <i>Baltimore</i> [Aquaria].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/db1659f2-7b8d-4dac-87e9-eafa853f65d2",
            "display": "<span>Agrajag, Strange Relationship [Violet Chachki].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/ce1777a6-22ab-466e-9183-d5a0cc9ee991",
            "display": "<span><i>Mario</i> (1917-1986). Skateboard <i>pug franzen carry hashtag lo-fi cred</i> kitsch.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/53dcdb4f-5dd6-4a99-8ef4-46fc4de23eb4",
            "display": "<span><i>Waiting for the Barbarians</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5f82ccb3-bc7c-4a47-bbf6-c34d8ec15411",
            "display": "<span><i>The Needle's Eye</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a9157ad6-0957-49b2-af0a-6bf3adcbc655",
            "display": "<span>The World, the Flesh and the Devil.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3214e396-a0b5-4c63-bdbf-bf291a8f941c",
      "date": "1958-05-26T00:00:00.000-04:00",
      "label": "26 May 1958 - <i>Data</i>",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "Highgate Cemetery"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cb8bddc3-a189-4767-9df6-644009ab910c",
            "display": "<span>Scary Terry (1918-1977). Phlogiston salvia wayfarers viral slow-carb green juice locavore deep v aesthetic.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ea07a486-57df-4c8b-ad88-1cb0f25aca59",
            "display": "<span><i>Brandt</i> (1925-1996). 8-bit blog loko put a bird on it celiac.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0b436295-72da-4ed1-a6f6-42aeb68405f1",
            "display": "<span>Django Unchained, dir. The Dude, Starship Titanic, Rowefurt, 1925-08-20.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/5d9ae153-6cec-49b7-bc60-4710f0729bac",
            "display": "<span>Donny, <i>Emory</i>, Lunkwill and Fook Sriracha swag tote bag aesthetic blog vice craft beer pbr&b.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/7f599ccd-d4fc-4820-b6b9-100bc749f5e7",
            "display": "<span>Maude Lebowski, Mario, Barry Manilow Mixtape green juice hoodie kinfolk austin.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/dc42131d-8226-4a8f-8568-92c83de760d3",
            "display": "<span>The Dude, <i>Miracle Max</i>, Dan Streetmentioner Tacos mlkshk celiac dreamcatcher.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/48a89bf4-3d23-4e8f-a4c2-bcc9d6dec717",
            "display": "<span>Marty Waelchi, A Time to Kill, Heyday Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/499bf883-217b-4095-90b3-e110d2dc450d",
            "display": "<span>Rosenda Kirlin, A Farewell to Arms, Manchester University Press.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d438e516-aecf-40cd-b467-0df3824e539d",
      "date": "1958-07-25T00:00:00.000-04:00",
      "label": "25 July 1958 - <i>Homer Simpson</i>",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/24c66283-c8aa-406b-abfe-fd5dd37b5742",
            "display": "<span>cronut, <i>Pulp Fiction</i>, Port Jaimieton, 24 January 1962.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/555e96e7-51eb-4faf-ac75-81ca57cb20d5",
            "display": "<span>The Allitnils, <i>Jam Of The Year</i> [Aquaria].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/67fbf1bb-7429-40b8-83ee-6f3f9ab4af3d",
            "display": "<span>Paula Nancy Millstone Jennings, Let's Go Crazy [Dida Ritz].</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/16adfc6c-8fa9-468f-9a1d-a87b470ef811",
            "display": "<span><i>Gemini</i> (1942-11-06).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/8a7fd956-d4df-4001-82a5-4a4f5ed233ab",
            "display": "<span>Challenger (1935-06-07).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cfb2254f-0632-4fd0-bb09-b28dbf27d530",
            "display": "<span><i>Apollo</i> (1943-02-12).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b2025bdf-b2b7-4d8e-a233-6a5e6ad021d6",
            "display": "<span>The Way of All Flesh.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e7ead03c-4a8e-45e1-a459-4fbe3ddfabfa",
            "display": "<span><i>Blood's a Rover</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3a11073e-c98a-443f-b895-7827d41970c9",
      "date": "1958-08-13T00:00:00.000-04:00",
      "label": "13 August 1958 - <i>Ned Gerblansky</i>",
      "recipients": [
        "Ned Gerblansky"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0a4b54d6-651e-4642-b562-aebedc5f010c",
            "display": "<span>chicharrones, <i>Princess Mononoke</i>, Gregorioborough, 29 December 1948.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/558610fd-3f66-4b43-aed4-7dba3c6a7581",
            "display": "<span>8-bit, <i>The Treasure of the Sierra Madre</i>, South Harvey, 07 February 1971.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/c83cde04-869a-4807-b47b-92eb9ff799a8",
            "display": "<span>kombucha, A Wednesday, North Philip, 17 July 1957.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/895d4785-0a4a-42d3-8a7a-3a457e37d619",
            "display": "<span><i>Gagrakacka</i>, Alexis Mateo.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/8dbc7f3f-f5e0-4238-8185-abda4b35868c",
            "display": "<span>Norway.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/216fb436-7a9e-4fbb-8a6f-93dde116cf83",
            "display": "<span>Galaxia Woonbeam, New Position, Master godard gluten-free keytar yolo.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/29c789d9-4033-43b4-ac9d-3394ad3301c9",
            "display": "<span>Galaxia Woonbeam, Automatic, Narwhal <i>tousled pickled bicycle rights retro mlkshk</i> austin.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f34b53e7-5088-4fef-b497-eb047815004a",
            "display": "<span>Marvin, <i>Kiss</i>, Leggings <i>schlitz flexitarian gastropub offal letterpress tattooed godard</i> ramps.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1fe80e1f-587f-4937-8647-bf102d2a11a0",
      "date": "1959-08-18T00:00:00.000-04:00",
      "label": "18 August 1959 - <i>Scary Terry</i>",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/67580f77-32c7-45f7-9739-2281cf494392",
            "display": "<span>goth, Paris, Texas, East Jaclyn, 04 April 1930.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/813561c7-fde7-499e-b6c1-bd8590d727e8",
            "display": "<span>readymade, Lock, Stock and Two Smoking Barrels, New Agustinaport, 31 December 1927.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8bccdbf2-68a0-4111-a683-b2f526858c71",
            "display": "<span>slow-carb, <i>The Maltese Falcon</i>, Howestad, 26 January 1954.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2df9d6e6-ccb6-40a8-bb66-7fc4d9c75fb3",
            "display": "<span>Vroomfondel, <i>I Could Never Take The Place Of Your Man</i> [Carmen Carrera].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/62ef5a6c-d87f-4763-a875-9c5e9f45ab57",
            "display": "<span>JinJenz, Take Me With U [Ivy Winters].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c54fc1f6-b4a7-45c0-ad12-e731cf2da2d8",
            "display": "<span>Arthur Dent, <i>A Love Bizarre</i> [Valentina].</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/18b78815-7834-40f8-a1a6-26062ba47ad9",
            "display": "<span>John Kohler, <i>Mother Night</i>, Hodder Headline.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6105206b-dc4e-4fab-ab07-55a63b679746",
            "display": "<span>Majikthise, The Yellow Meads of Asphodel, Translated into Rupert by Magrathean sperm whale.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b4a617a1-91e8-4254-a60a-caad8a8468a7",
            "display": "<span>Garkbit, Françoise Sagan, Translated into Krikkit by Arthur Philip Deodat.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/76f09917-d647-47f6-b09e-8761a21f0177",
      "date": "1960-10-23T00:00:00.000-04:00",
      "label": "23 October 1960 - <i>Scary Terry</i>",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/78952b85-abbb-4335-898a-ee3a676e2a39",
            "display": "<span><i>Brandt</i> (1927-1972). Photo booth loko venmo wolf banjo.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/bda6a5e4-ba74-4a54-9bcd-d5791aad9fcb",
            "display": "<span><i>Raging Bull</i>, dir. Jesus Quintana, Golgafrinchan Ark Fleet Ship B, Norbertshire, 1957-12-20.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/cb23ff51-aa7c-48e2-960a-e4253faeb141",
            "display": "<span>The Matrix, dir. Walter Sobchak, Golgafrinchan Ark Fleet Ship B, O'Connerview, 1925-07-22.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/eb52d1c0-54c3-4cf2-bd12-aae7dcc4972c",
            "display": "<span><i>The Departed</i>, dir. Donny, Billion Year Bunker, Mieshachester, 1939-11-10.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4b0d79f7-058c-492f-91d1-273278bab235",
            "display": "<span>Robbi Ernser, A Handful of Dust, ECW Press.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6f52db07-d4d0-4b29-8029-6550add91f28",
            "display": "<span>Slartibartfast, <i>Thunder</i>, Try-hard <i>ennui park jean shorts food</i> truck.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5b65c906-7fbb-4c58-8544-8f56f0bfbe0f",
      "date": "1960-11-23T00:00:00.000-05:00",
      "label": "23 November 1960 - Colin the Security Robot",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6081c273-db62-443c-9699-abfbd8795a41",
            "display": "<span>cred, <i>Sunrise: A Song of Two Humans</i>, Pedroville, 19 February 1937.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6377f80f-4954-4d6e-963e-4965f0991a82",
            "display": "<span>Reg Nullify, <i>Take Me With U</i> [Chad Michaels].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e64cbd52-210f-4f19-830b-6433a29e7f84",
            "display": "<span>Max Quordlepleen, The Beautiful Ones [Shangela Wadley].</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/01b48861-6f92-479e-b2e7-9b4164e832f7",
            "display": "<span>Hillman Hunter, That Hideous Strength, Translated into Arkintoofle Minor by Lintilla.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/628a7df5-2f2f-484e-9add-7ba544e7df94",
            "display": "<span>Marvin, Oh! To be in England, Translated into Eroticon VI by Vroomfondel.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b5371bbf-6514-4bef-b07e-fe189aea9f4e",
            "display": "<span>Galaxia Woonbeam, Françoise Sagan, Translated into Rupert by Pasta Fasta.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0953e6ec-e18d-48ce-b66c-73d021962b55",
            "display": "<span>Oolon Colluphid, Pop Life, Green <i>juice venmo hella +1 keffiyeh pug pabst</i> letterpress.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1d4ecc31-2f97-4961-a043-40ae41fae37e",
            "display": "<span>Wonko the Sane, I Feel For You, Selvage <i>beard leggings offal gastropub mlkshk</i> chillwave.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7f449617-b468-42f8-8d1b-8442566f86dc",
      "date": "1961-01-03T00:00:00.000-05:00",
      "label": "03 January 1961 - <i>Brandt</i>",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "Milliways"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/151dd564-ca3d-4998-8917-5060ce8b366b",
            "display": "<span>Zarniwoop, Sexy MF [Stacy Layne Matthews].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/44da137b-a488-4c6d-8217-db4033890777",
            "display": "<span>Random Dent, Sometimes It Snows In April [Alaska].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3e9acbb5-7bb0-4a0e-a53b-4caa3a7fa84a",
            "display": "<span>Space.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/811da4a3-4015-4fd9-a878-8c929bc94aa4",
            "display": "<span>Ysllodins.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/86ce13fa-2bcf-45b1-9ae6-f86a4bf7ef18",
            "display": "<span>Mr. Prosser, <i>I Feel For You</i>, Iphone <i>polaroid lumbersexual cliche celiac tilde williamsburg</i> synth.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0b9f9dbb-2ad0-445b-b49f-2b6482664073",
            "display": "<span><i>O Pioneers!</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/4db98cf5-c145-45fa-94c3-8f50bf4e36c2",
            "display": "<span>The Torment of Others.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cdf9bb1f-4001-49a4-963c-945acb102c80",
      "date": "1961-02-27T00:00:00.000-05:00",
      "label": "27 February 1961 - Butterscotch Horseman",
      "recipients": [
        "Butterscotch Horseman"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/7ba0deb8-c75f-4026-bb8f-f7200d140e7c",
            "display": "<span><i>Frogstar system</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/82b2cf6e-9c12-41c6-a370-4057bc9929ee",
            "display": "<span>Café Lou.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/945e2d23-544d-441b-97c6-8b394b6ff7c7",
            "display": "<span>Asbleg.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/03ef5411-bea1-4fe9-b007-601ef97619a8",
            "display": "<span>Eternal Sunshine of the Spotless Mind, dir. Jackie Treehorn, Krikkit One, Williamsonside, 1931-10-25.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/912bce42-3ab0-49c4-9d17-0904ee1366be",
            "display": "<span><i>Challenger</i> (1959-10-27).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/e2c4b7e9-061e-4aae-a0a8-50815146ec32",
            "display": "<span><i>Discovery</i> (1950-10-01).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/41d25d7d-a879-4ef2-94e7-dc781d73589e",
            "display": "<span><i>Taming a Sea Horse</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/af2da907-59e7-4f13-a5f1-a6d349409ae5",
            "display": "<span><i>Those Barren Leaves, Thrones, Dominations</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ea54cb94-fba2-4bef-8939-3e847cab884d",
      "date": "1961-03-04T00:00:00.000-05:00",
      "label": "04 March 1961 - <i>Leia Organa</i>",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/3d60b69c-cf41-449c-8c35-857a6c76d3b9",
            "display": "<span><i>Kria</i>, Sahara Davenport.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/41edd040-1c13-4045-81eb-76b2e6d4cb87",
            "display": "<span>Bartledan, Miss Fame.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e8f0d492-0661-4411-af28-8da52adcc380",
            "display": "<span><i>Santraginus V</i>, Shea Coulee.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ce3eb341-de9e-4166-bc86-64d9d32d471a",
            "display": "<span><i>Lamuella</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/40ea03dd-f7f7-44e2-ad13-72c0dedd3cc6",
            "display": "<span><i>Casino</i>, dir. Maude Lebowski, Krikkit One, Tillmanfort, 1967-10-12.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/402d9645-b7e7-4969-a295-f48e7cca4c77",
            "display": "<span>Brandt, <i>Colin the Security Robot</i>, Majikthise Kitsch hoodie distillery bespoke.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/437480d6-79b4-47b6-ac30-d713dd5028de",
            "display": "<span>Brandt, <i>Ned Gerblansky</i>, Barry Manilow Disrupt artisan tote bag seitan yr.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/97ad5814-1769-47a1-bef8-5a73f1dd34cf",
            "display": "<span>Maude Lebowski, Colin the Security Robot, Hactar Meh goth synth sustainable.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4947f301-e277-463d-8d7e-3ba1d59401ea",
      "date": "1961-03-14T00:00:00.000-05:00",
      "label": "14 March 1961 - Otto Aquarius",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "<i>Denmark</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c2da819d-537b-4d06-b16d-e6d3e34b6053",
            "display": "<span>Eccentrica Gallumbits, Girls & Boys [Silky Nutmeg Ganache].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d200cd61-4987-438a-a3c0-0ee14e28d36a",
            "display": "<span>Majikthise, Alphabet St. [Ginger Minj].</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/3a36cea6-096d-4bbd-a918-6bb2cb092356",
            "display": "<span>Mercury (1971-10-14).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b0ed07bb-79b7-481f-906c-b5b1c98d55d1",
            "display": "<span>Apollo (1957-09-22).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8c802e1a-81fd-4e16-952a-6ae2307a5673",
            "display": "<span>Broderick Barrows, Pale Kings and Princes, Cloverdale Corporation.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/94ea5338-c82f-4313-8cd4-07067aaa2fdf",
            "display": "<span>Yooden Vranx, <i>Waiting for the Barbarians</i>, Translated into Hawalius by Questular Rontok.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5cb3870a-eb18-4473-bf5f-3c918815426f",
      "date": "1961-09-25T00:00:00.000-04:00",
      "label": "25 September 1961 - Scary Terry",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/99cb91c1-3c30-4f87-a492-f6128a569de2",
            "display": "<span><i>Data</i> (1900-1984). Kickstarter <i>you probably haven't heard of them five dollar toast brooklyn</i> typewriter.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/dec71808-7f16-4517-8bba-c55573351e32",
            "display": "<span>Scary Terry (1911-1993). Venmo park bicycle rights brunch pour-over fanny pack seitan yolo.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f91860be-6ddf-45f8-b76b-8fbda899da9e",
            "display": "<span>Mario (1900-1980). Raw denim dreamcatcher 3 wolf moon kombucha bicycle rights iphone post-ironic muggle magic.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0e914cd8-86d9-4416-9521-d87e0f2dc977",
            "display": "<span><i>Discovery</i> (1950-02-02).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d78b75ac-48d3-4c07-bc8d-071e121bb07d",
            "display": "<span><i>Apollo</i> (1942-10-05).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/90757136-d363-47b4-9529-945245405ae1",
            "display": "<span>Brandt, <i>Ned Gerblansky</i>, Effrafax of Wug Occupy mumblecore farm-to-table thundercats hashtag yolo.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c7cda113-3a3c-471c-ba8d-da3da4b77f49",
            "display": "<span>Brandt, Scary Terry, Fenchurch Cold-pressed vinyl tofu lomo chillwave cleanse chicharrones diy.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/11f2d714-1b41-4269-9084-57aada62e943",
            "display": "<span>Kurt Mills, <i>The Wings of the Dove</i>, University of California Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/16663432-5870-4580-aaa6-5dde6d0f419d",
            "display": "<span>Kirby Blick, <i>To Your Scattered Bodies Go</i>, Leaf Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d73388da-b575-4505-943a-c15fff06851d",
            "display": "<span>Gordon Schmidt, The World, the Flesh and the Devil, Addison-Wesley.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dc497d34-f99b-433f-8f81-4761e5c3df1d",
      "date": "1961-10-15T00:00:00.000-04:00",
      "label": "15 October 1961 - Homer Simpson",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "Madagascar"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9a579c7b-a0cd-4173-8ac5-afbb8b5d05d5",
            "display": "<span><i>Rupert</i>, Darienne Lake.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/33d794fd-2531-4053-820d-8595a57fe451",
            "display": "<span>Hacksaw Ridge, dir. Brandt, Starship Titanic, East Jeanett, 1939-12-23.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/53d2e904-6fda-4231-b2b3-6527c60cb69f",
            "display": "<span>Star Wars: Episode VII - The Force Awakens, dir. Donny, Vogon Constructor Fleet, South Emilemouth, 1964-02-14.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/898bce96-4f81-4410-8f3f-f47a9f9caa3f",
            "display": "<span>Arthur Philip Deodat, <i>Time of our Darkness</i>, Translated into Kria by Gag Halfrunt.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a9e8f039-9642-479a-ad73-e82ebf66f472",
            "display": "<span>Colin the Security Robot, Look Homeward, Angel, Translated into Allosimanius Syneca by Galaxia Woonbeam.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9e14b783-98f6-4d5f-875c-4c1cda7e575d",
            "display": "<span>Fenchurch, <i>Alphabet St.</i>, Drinking lomo godard listicle.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bfd99341-3eae-42df-bff6-f652708f8a88",
            "display": "<span>Emily Saunders, <i>Raspberry Beret</i>, Cred chia tacos vhs green juice yuccie lumbersexual brooklyn.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c7722043-8e83-4acc-9691-2972de5933d2",
            "display": "<span>Random Dent, <i>New Position</i>, Pickled <i>swag helvetica brunch kickstarter roof</i> pinterest.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/65d92d88-ca0c-4112-a3b3-080205ee9789",
      "date": "1962-03-12T00:00:00.000-05:00",
      "label": "12 March 1962 - Homer Simpson",
      "recipients": [
        "Homer Simpson"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/417c9ccb-1e6c-4439-b77c-e7ecb7aa642f",
            "display": "<span>Lunkwill and Fook, <i>Delirious</i> [BenDeLaCreme].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/5c377314-436d-40e4-94dc-374dc3937da9",
            "display": "<span><i>Pleiades system</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e608221a-211e-44bf-8c87-e48c3ca4edcb",
            "display": "<span><i>Fenchurch Street railway station</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/fce977b7-f489-48a1-a650-0c95be8e1d61",
            "display": "<span><i>The Dark Knight Rises</i>, dir. The Dude, Billion Year Bunker, Lake Catriceshire, 1934-10-01.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/46c6fe55-5669-4af8-ba3c-72bf40c4e588",
            "display": "<span>Effrafax of Wug, Far From the Madding Crowd, Translated into Burphon XII by Galaxia Woonbeam.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/52114efe-2939-45e2-bb91-2be546077603",
            "display": "<span>Eddie the Computer, In Dubious Battle, Translated into Magrathea by Reg Nullify.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9328bd64-d446-4379-862f-ced0811e0e61",
            "display": "<span>Prak, <i>In a Glass Darkly</i>, Translated into Fallia by Hillman Hunter.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/52f98b3f-6aca-4085-a191-985a84d42858",
      "date": "1962-03-20T00:00:00.000-05:00",
      "label": "20 March 1962 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1bba1743-638f-48ca-8acd-7a9ccbfe53bd",
            "display": "<span>heirloom, <i>Gladiator</i>, Lake Drew, 10 December 1943.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9faae26e-49ab-432b-b25a-d15e06291a5e",
            "display": "<span>distillery, The Intouchables, East Coy, 01 September 1941.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f5af9d57-25c7-49c4-b4ab-214c031aeb8d",
            "display": "<span>meggings, <i>Finding Nemo</i>, Deneseville, 23 February 1942.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/363d1dc9-283f-4f81-ac41-e434dc06cdda",
            "display": "<span>Slartibartfast, <i>The Last Enemy</i>, Translated into Golgafrincham by Yooden Vranx.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b2b5885b-f4ac-4c94-a1fe-0257cffde887",
            "display": "<span>Garkbit, Breakfast Can Wait, Drinking <i>paleo fashion axe bushwick food</i> truck.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d8fa60c8-bdd0-4fe2-a030-ca6325294d24",
            "display": "<span><i>Quo Vadis</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b8821b44-9a1a-4820-9954-9cdd45daf6a4",
      "date": "1962-05-06T00:00:00.000-04:00",
      "label": "06 May 1962 - Data",
      "recipients": [
        "Data"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4f87d6ff-2dd1-49ef-b648-8d6372e4963d",
            "display": "<span>Krikkit, Adore Delano.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d543804c-3a23-48cc-8310-b01e0642fa8e",
            "display": "<span>Xaxis, Pandora Boxx.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/26e6c780-facf-406b-9466-b809bd3f3682",
            "display": "<span><i>Slim's Throat Emporium</i>.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/2548df59-3757-44b3-a15f-fcaf74d6dc25",
            "display": "<span>Judgment at Nuremberg, dir. Karl Hungus, Tanngrisnir, Corwinfort, 1943-08-22.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/26caac48-ab2c-49a7-8745-5601d0c7bb56",
            "display": "<span>Network, dir. The Big Lebowski, Starship Titanic, New Joyce, 1928-03-06.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6c95e252-0594-495a-a5e6-786ca697e997",
            "display": "<span>Lintilla, <i>U Got The Look</i>, Lumbersexual small batch sustainable readymade hammock letterpress dreamcatcher.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/678d89bf-1e2e-462c-8fe2-3c7ac50bea60",
      "date": "1962-07-04T00:00:00.000-04:00",
      "label": "04 July 1962 - Leia Organa",
      "recipients": [
        "Leia Organa"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/615d01d5-0f6e-4524-94af-9e4aff823b4e",
            "display": "<span>Amadeus, dir. Walter Sobchak, RW6, Uptonland, 1933-09-27.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f36bba1b-cea3-41a2-8804-2d16713057ce",
            "display": "<span>The Best Years of Our Lives, dir. Walter Sobchak, Heart of Gold, Lake Renatofort, 1971-11-27.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7affdeae-6549-46db-8a7c-117ee821af77",
            "display": "<span>Alphonso Rau Jr., <i>Paths of Glory</i>, Mandrake Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/92fb1171-e7d3-4a4b-8432-0c6e1a426274",
            "display": "<span>Mara Bayer, <i>The Wealth of Nations</i>, Marion Boyars Publishers.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b106ef63-fa38-47b9-a295-3e25d5cc6fc4",
            "display": "<span>Lenard White, For Whom the Bell Tolls, Harper & Brothers.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/52226324-9971-4bc6-a84f-58da1d5a4b55",
            "display": "<span>Lintilla, <i>A Confederacy of Dunces</i>, Translated into Han Wavel by Hactar.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a6365b73-ba63-4af8-82f4-662d44f64332",
            "display": "<span>Galaxia Woonbeam, <i>Brandy of the Damned</i>, Translated into Santraginus V by Barry Manilow.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bbbab11f-7ce6-4953-88df-4d9f2189a9ca",
            "display": "<span>Loonquawl, <i>The Widening Gyre</i>, Translated into Burphon XII by Oolon Colluphid.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d033556c-b7d3-43bf-9b73-e141307c63e6",
            "display": "<span>Fenchurch, <i>Pop Life</i>, Humblebrag you probably haven't heard of them umami chicharrones salvia mumblecore.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/07378233-5182-43dc-92c0-d7da60bec811",
      "date": "1962-11-20T00:00:00.000-05:00",
      "label": "20 November 1962 - Mario",
      "recipients": [
        "Mario"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/10750d7d-8a79-40db-9ce2-6bca94642e0a",
            "display": "<span>Krikkit, Shuga Cain.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/db5d0f01-8f2e-4c5d-a17c-231adf3975d3",
            "display": "<span>Broop Kidron 13, Trinity Taylor.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/8bdbd762-57b0-4483-b7ca-c9ba61a8acc0",
            "display": "<span>Bunny Lebowski, Data, Elvis Hella carry pitchfork tote bag.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a97061c1-30f8-4f65-a03a-02c0470476e2",
            "display": "<span>The Dude, Brandt, Deep Thought 90's bicycle rights street ennui celiac vegan asymmetrical cardigan chillwave.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/b25b7efc-280f-42e4-ba32-65ec47f9a877",
            "display": "<span>Bunny Lebowski, Scary Terry, Vroomfondel Pork belly blog gluten-free post-ironic pug.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/601d6c32-af26-483c-9c8b-3d96de20fb3c",
            "display": "<span>Gail Andrews, <i>Time To Murder And Create</i>, Translated into Arkintoofle Minor by Zaphod Beeblebrox.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/72ff2f42-c0a4-429d-875b-da0b66683c1f",
            "display": "<span>Phouchg, <i>Cream</i>, Pork belly try-hard williamsburg drinking cronut fixie wolf.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bac309a4-2b35-466e-91bf-f27fe5d5f6f5",
            "display": "<span>Galaxia Woonbeam, I Feel For You, Ennui chartreuse fixie asymmetrical bicycle rights cold-pressed.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/559af925-adac-4661-8787-2dbd81f89f3e",
      "date": "1963-01-07T00:00:00.000-05:00",
      "label": "07 January 1963 - <i>Otto Aquarius</i>",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/50e21974-31af-4b54-b965-d5a743003d14",
            "display": "<span><i>Krikkit</i>, Shuga Cain.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/75955aa2-8f1d-41e6-83d1-c83c9e934e67",
            "display": "<span><i>Sqornshellous Zeta</i>, Delta Work.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cf6fd51c-4cf5-4f5e-89db-f3baf465514c",
            "display": "<span>Allosimanius Syneca, Katya.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/a01847a6-c51a-4b49-a111-ae9d3347da5b",
            "display": "<span>Ned Gerblansky (1920-1988). Five dollar toast banjo kitsch letterpress fashion axe tumblr banh mi single-origin coffee.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/90b43db0-60ea-4640-a9b8-a2269de21b2c",
            "display": "<span>Walter Sobchak, <i>Scary Terry</i>, Deep Thought Paleo pitchfork drinking farm-to-table goth crucifix vhs next level fashion axe.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d70dd216-33f8-4a56-9021-88a8eacaa592",
            "display": "<span>Maude Lebowski, Brandt, Loonquawl and Phouchg Truffaut park vinyl try-hard.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c55fe6fb-44fb-4fc6-bb16-ee31cc934446",
            "display": "<span>Patricia Strosin, <i>Blue Remembered Earth</i>, Open Court Publishing Company.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d9acf1ef-63cb-43b3-8f5d-7ccfdbe9caaa",
            "display": "<span>Amb. Hal Kub, <i>Surprised by Joy</i>, Bantam Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/efd7022a-24f2-42a5-b792-53a94c775c19",
      "date": "1963-01-15T00:00:00.000-05:00",
      "label": "15 January 1963 - Brandt",
      "recipients": [
        "Brandt"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/99623a09-2a36-47e4-998e-f6550b859c24",
            "display": "<span><i>Allosimanius Syneca</i>, Adore Delano.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/5437b71e-cd30-46f3-bd50-14f973d6f986",
            "display": "<span>Bo Pfeffer II, Terrible Swift Sword, Black Sparrow Books.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/71559fba-25c1-44c9-8186-f224d94f485a",
            "display": "<span>Effrafax of Wug, Take Me With U, Selvage food truck beard wolf tilde wayfarers.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/28b6a373-bc1e-4f98-bfd8-e3c64c27ef06",
            "display": "<span>The Road Less Traveled.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5b267372-fe9a-4744-b02c-72ab045062fa",
      "date": "1963-07-11T00:00:00.000-04:00",
      "label": "11 July 1963 - <i>Otto Aquarius</i>",
      "recipients": [
        "Otto Aquarius"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/609c4628-8450-4e20-bc72-36ea3cb2c261",
            "display": "<span>Frankie and Benjy, Head [Joslyn Fox].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9ba168b8-1de6-48c6-a4c1-aba2f438bc6d",
            "display": "<span>Blagulon Kappa, Sahara Davenport.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0aa278b9-333f-4503-b0fc-1ddd79d0b4a9",
            "display": "<span>Maude Lebowski, <i>Miracle Max</i>, Emily Saunders Neutra plaid street typewriter.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/64ec03cb-9d01-406e-ac66-c58805edc4ef",
            "display": "<span>The Dude, Ned Gerblansky, Eccentrica Gallumbits Health green juice gentrify hella tote bag migas 3 wolf moon pork belly brooklyn.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ec146d5e-d795-41b5-8417-66a60c968dbd",
            "display": "<span>The Dude, Butterscotch Horseman, Slartibartfast Kale chips cred tattooed seitan before they sold out pour-over.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e21e7885-dff0-4537-a7bb-aa85ab7afac2",
            "display": "<span>Slartibartfast, <i>The Most Beautiful Girl In The World</i>, Post-ironic distillery beard organic bicycle rights crucifix.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a2a4dbae-0df9-46a3-827d-9de331b92b2c",
      "date": "1963-10-31T00:00:00.000-05:00",
      "label": "31 October 1963 - <i>Scary Terry</i>",
      "recipients": [
        "Scary Terry"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1a5bc977-2361-4b36-8b94-8c6daaced465",
            "display": "<span><i>Ned Gerblansky</i> (1916-1993). 8-bit pour-over forage banh mi meh.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/35a0a629-4c0a-425c-bde8-fe267ff87e77",
            "display": "<span>Butterscotch Horseman (1910-1990). Chambray muggle magic intelligentsia roof.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/4acff925-a14c-45f1-bd2d-e074851611f0",
            "display": "<span>Data (1910-1989). Try-hard bicycle rights heirloom ennui butcher thundercats wayfarers wolf.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0d18dc6c-1a40-4482-9923-8d84d118512a",
            "display": "<span>Preliumtarn.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/968f979d-5f33-4787-8084-835f52b28372",
            "display": "<span>Belgium.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/668788a4-8d34-4e53-8534-05a40dd07c6c",
            "display": "<span>Dalton Bartoletti, <i>Infinite Jest</i>, Vintage Books at Random House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ba0ea9fe-88da-4fb5-b0b6-309acd42f284",
            "display": "<span>Ricardo Schinner, That Hideous Strength, Martinus Nijhoff Publishers.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0919b167-ffa5-40a3-9f31-b15caa000715",
            "display": "<span>The Allitnils, Endless Night, Translated into Frogstar World B by Agrajag.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/99fba17a-8b89-420c-80bd-286c7300bd27",
            "display": "<span>Barry Manilow, Edna O'Brien, Translated into Magrathea by Gail Andrews.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ab94ad6d-b9d3-4f2a-b54f-7663d58e2f0c",
      "date": "1964-06-10T00:00:00.000-04:00",
      "label": "10 June 1964 - <i>Colin the Security Robot</i>",
      "recipients": [
        "Colin the Security Robot"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bc331030-eabc-43d4-963f-23cac2d2370c",
            "display": "<span>intelligentsia, The Bourne Ultimatum, Lake Nubia, 28 June 1953.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f037d5fa-01de-4bd2-8460-8b8eef85e531",
            "display": "<span>marfa, <i>Oldboy</i>, Samiratown, 07 June 1930.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0685d731-1720-4cd7-a7d2-50e8cded72f9",
            "display": "<span><i>Otto Aquarius</i> (1900-1980). Photo booth mumblecore chicharrones diy.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/13453269-d1a5-4335-b153-34f452c61011",
            "display": "<span>Brandt (1927-1980). Food truck wes anderson williamsburg heirloom squid actually cold-pressed trust fund retro.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cae16003-3778-4e05-b5e0-c9ff2c29f3be",
            "display": "<span>Mario (1908-1994). Wayfarers <i>tumblr hashtag before they sold out</i> thundercats.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/590542cf-7511-40e1-938c-14a462a30156",
            "display": "<span><i>It Happened One Night</i>, dir. Bunny Lebowski, Billion Year Bunker, West Arlenmouth, 1933-06-18.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/18699b97-21b0-4652-90d0-7e06d5e7d97e",
            "display": "<span>Pete Hand, Things Fall Apart, Heyday Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2aa0df62-6182-48c2-862a-63655abe7662",
            "display": "<span>Mathilde Schiller, <i>The Man Within</i>, Medknow Publications.</span>"
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
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
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
          "doc_count": 6
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 3
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
          "key": "South Roberts",
          "doc_count": 17
        },
        {
          "key": "Southern Ebert University",
          "doc_count": 15
        },
        {
          "key": "Roob Academy",
          "doc_count": 11
        },
        {
          "key": "Northern Erdman",
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
          "key": "italian",
          "doc_count": 8
        },
        {
          "key": "english",
          "doc_count": 6
        },
        {
          "key": "french",
          "doc_count": 5
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
}</pre>
