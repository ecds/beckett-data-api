# Letters API

## GET /letters?languages=:list_of_languages

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
ETag: W/&quot;0d9fbd4884ed8db37d2fd119f25d30ea&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 45010844-4f3c-4878-af65-cfe37da5f5e9
X-Runtime: 2.960827
Vary: Origin
Content-Length: 27831</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/7e1affe3-86d9-452f-b2d1-184aace895d5",
      "date": "1957-01-08T00:00:00.000-05:00",
      "label": "08 January 1957 - Rau, Myrta",
      "recipients": [
        "Rau, Myrta"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/63e67447-fe9c-4c3a-bd62-1ed6542faa2e",
            "display": "<b>Hills, Morton 1918-1997</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/75b67fc6-ff97-4455-9bea-aa22fe6bf094",
            "display": "<b>McKenzie, Lacy 1910-1993</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/64bb1598-be1c-49d0-95f9-c2a955c9521e",
            "display": "<b><i>Oglaroon</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b7a9ac25-a8c1-413f-8475-0422803a35ae",
            "display": "<b>The Domain of The King</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/9d15f7da-d4c8-4a41-8458-9231c7bafac4",
            "display": "<b>Croydon</b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/12ba4b5c-e350-4dce-bb6e-03bac0f2f5f2",
            "display": "Grunthos the Flatulent, <i>And God Created Woman</i>, Taxidermy banjo tousled knausgaard waistcoat literally kogi."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8ef3c808-ac4f-4789-84e3-d864cc07283a",
            "display": "Max Quordlepleen, <i>Black Sweat</i>, Chicharrones cliche austin yuccie umami hashtag narwhal."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bf859a48-e939-4c9b-8c1f-34c3c8b71df8",
            "display": "Frankie and Benjy, <i>Do It All Night</i>, Hashtag <i>butcher master tacos</i> 8-bit."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4c1a73bc-aa08-4f18-ae44-4b1c7ccbacf2",
            "display": "<b><i>Death Be Not Proud</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a1d0df11-13a2-4faa-8fae-bafa374c7f05",
      "date": "1957-01-23T00:00:00.000-05:00",
      "label": "23 January 1957 - McClure, Leatha",
      "recipients": [
        "McClure, Leatha"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c5d8cb7c-6f3b-4bbb-b500-85d032336fbc",
            "display": "<strong>radio_broadcast</strong> Rush"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/24b7f28b-9163-4c4f-825b-6b4a4c395e91",
            "display": "<i>The General</i>, dir. Brandt, Heart of Gold, Dickinsonshire, 1966-11-05"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/06d1e4e4-e4fa-4b51-9091-bb0079f1d26c",
            "display": "Stand by Me, dir. The Dude, RW6, Lehnerbury, 1947-08-13"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f04ef039-64e9-4170-84ce-069de7a6e8db",
            "display": "Jaws, dir. Karl Hungus, Vogon Constructor Fleet, Jonesborough, 1955-07-12"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7e81bced-0032-42f2-a2d8-fbfee27387d3",
            "display": "<b>Gemini</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ba2d6755-dab0-46fa-82de-914f6576ce6b",
            "display": "<b>Gemini</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a0fbc486-1dea-4baa-a260-6e4960e03f42",
            "display": "<i>Pavilion Books</i>, Colin the Security Robot Mlkshk art party wolf yolo."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/0f5eeec8-db28-4033-af03-e935f341081b",
            "display": "<i>Victor Gollancz Ltd</i>, Pizpot Gargravarr Mustache knausgaard wayfarers polaroid health iphone selvage."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cbc1d608-f09c-4880-be11-1bef616361d9",
      "date": "1957-12-15T00:00:00.000-05:00",
      "label": "15 December 1957 - Grant, Earle",
      "recipients": [
        "Grant, Earle"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a107338e-d386-4b79-8db7-2b20961c45ce",
            "display": "Frankie and Benjy, <i>Superfunkycalifragisexy</i> [Raven]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e667b7b3-1de0-4ac4-83d5-bb038e9f824a",
            "display": "<b>Fay, Lee 1902-1978</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6d3f40f6-5224-4594-883a-53ef399ea3fd",
            "display": "<b><i>Megabrantis cluster</i></b>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e3aa0a03-799f-407e-bbe5-1c7672fe08f9",
            "display": "<b>The Green Bay Tree</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/21a19c82-b3aa-4004-958c-a3bddebb37e2",
      "date": "1958-04-10T00:00:00.000-05:00",
      "label": "10 April 1958 - Kiehn, Janell",
      "recipients": [
        "Kiehn, Janell"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/868ef74b-0c57-42af-b747-47e5e6093675",
            "display": "<strong>_reading</strong> <i>Alien</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/26d65288-49ba-47fa-854d-0b3231bfb9e1",
            "display": "<strong>rehearsal</strong> <i>All About Eve</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/7e21c846-d79d-4bb2-8ecb-7f987b4ea20f",
            "display": "<strong>radio_broadcast</strong> <i>A Beautiful Mind</i>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f7a35461-1bd3-4369-8610-6febed45e898",
            "display": "<b><i>Asbleg</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/48ab5c28-27f4-49df-9a41-9b8f092b15cc",
            "display": "<i>Book Works</i>, Arthur Philip Deodat Thundercats chillwave paleo chicharrones xoxo distillery mumblecore."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/74436e38-1167-4a4f-ace2-2f58810adfbc",
            "display": "Bloodaxe Books, Pasta Fasta Church-key sustainable lo-fi yuccie meditation listicle."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c974e830-97c8-498b-8852-c6463419b701",
            "display": "Wilson Metz I, <i>Moab Is My Washpot</i>, Blackwell Publishing"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f0d58ca6-ce63-4ee2-84eb-17ad0b92107c",
      "date": "1958-11-10T00:00:00.000-05:00",
      "label": "10 November 1958 - Yundt, Maribeth",
      "recipients": [
        "Yundt, Maribeth"
      ],
      "destinations": [
        "<i>Rupert</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2fb8a1e5-73e8-42d0-af1a-05cbf8d1d3c7",
            "display": "Max Quordlepleen, Anotherloverholenyohead [Alexis Mateo]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5d0d8345-5488-4de2-ae27-7d8e8b3aa865",
            "display": "JinJenz, Housequake [Alaska]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/dc8fba0b-92d7-4058-b87f-0a0aef62c3c5",
            "display": "Garkbit, Mountains [Tyra Sanchez]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/862d2dd3-cd6e-49b5-95ea-667eae67abed",
            "display": "<b>Frogstar World C</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/be43ff35-91fb-45bb-9529-430468864032",
            "display": "<b><i>Flargathon</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c9e87196-3fa5-4d89-a617-5ef81bbf2b1b",
            "display": "<b>Nano</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/eba734bc-083e-45a6-b6a2-8d5d3d9fcdd5",
            "display": "<b><i>Denmark</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0db1294a-982a-45ba-b603-38cfa24458f3",
            "display": "Saving Private Ryan, dir. Brandt, Billion Year Bunker, Eldenfurt, 1925-03-09"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/d59e258e-ad41-474f-b59c-fc824bd8e7cc",
            "display": "<i>Chinatown</i>, dir. Jackie Treehorn, Vogon Constructor Fleet, Walshburgh, 1932-05-05"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/34e8df8c-8712-4415-92b9-aa2c54f7dc2a",
            "display": "<i>The Lion King</i>, dir. Brandt, Krikkit One, Lake Dudley, 1942-03-12"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/696628ae-56f8-43e2-ad73-1ebeff54f3ce",
      "date": "1960-02-19T00:00:00.000-05:00",
      "label": "19 February 1960 - O'Keefe, Maida",
      "recipients": [
        "O'Keefe, Maida"
      ],
      "destinations": [
        "<i>Ysllodins</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9835d6aa-dc51-4b84-9541-b23eab43c27a",
            "display": "Eccentrica Gallumbits, When We're Dancing Close And Slow [Ariel Versace]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6715fa7b-4da1-41ee-9b08-2c6227bc920f",
            "display": "<b>Traal</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/7536bc96-3437-4cea-a4c3-370cce88962a",
            "display": "<b>Eroticon VI</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/2b63c45e-fe7f-4921-8a34-021d6404ad33",
            "display": "<b><i>Kakrafoon Kappa</i></b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8df7ea58-3afb-4758-a182-6138b25e1cdc",
            "display": "Floria Collier LLD, Jacob Have I Loved, Pantheon Books at Random House"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/828297fc-cd67-4de1-aece-014b8ad2098c",
            "display": "<b>Endless Night</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0461cc36-6c66-40bb-ad03-21fb33ae0dc5",
      "date": "1960-07-24T00:00:00.000-04:00",
      "label": "24 July 1960 - Lynch, Marylouise",
      "recipients": [
        "Lynch, Marylouise"
      ],
      "destinations": [
        "Frogstar World B"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5b2e1168-d4df-42f9-b0cc-9a16cb719c05",
            "display": "<strong>_reading</strong> <i>3 Idiots</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4018d649-28ff-4867-86a7-f2d1cfaaaa03",
            "display": "<strong>radio_broadcast</strong> Toy Story 3"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c2a946dd-7838-49ee-89f0-09d47191a881",
            "display": "Orchard Books, Agda Letterpress selvage ramps 8-bit tattooed normcore keytar."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/01f9c1ce-23f3-4490-af60-000dcfa93499",
            "display": "Frankie and Benjy, The Daffodil Sky, Translated into japanese by Bowerick Wowbagger"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/866a6be7-19b3-4579-9d10-90a4fa491a0f",
            "display": "Colin the Security Robot, Postern of Fate, Translated into flemish by Colin the Security Robot"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/637091fa-dad8-435f-b754-a593a0a55eb7",
            "display": "Max Quordlepleen, O Jerusalem!, Translated into hungarian by Pizpot Gargravarr"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/520a2463-e4a0-4f99-83b6-5fa3fbb14ac2",
            "display": "<b>Some Buried Caesar</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/07efa6b7-888a-419f-a996-846cffc51814",
            "display": "<b>Bury My Heart at Wounded Knee</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/836c8b75-6a94-41aa-9f4b-ba236573256e",
            "display": "<b>Sleep the Brave</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/67bd00f6-f13f-40b7-95ac-59e5e5b770c1",
      "date": "1960-09-13T00:00:00.000-04:00",
      "label": "13 September 1960 - Bradtke, Walker",
      "recipients": [
        "Bradtke, Walker"
      ],
      "destinations": [
        "Betelgeuse"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1d2be2c9-4a06-4cb4-850f-e285ec059260",
            "display": "Humma Kavula, Anotherloverholenyohead [Asia O'Hara]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ba67e9f8-4bad-489c-aaf4-e96219f0885e",
            "display": "<b>Hawalius</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f184fc04-f676-4e66-88b4-9ccf654d3e26",
            "display": "<b><i>Han Wavel</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/7b990c80-884c-47e0-8e92-a7fccaf01223",
            "display": "<b><i>Jajazikstak</i></b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/bd4e7ddc-8eea-4d32-9037-0ba7f308f260",
            "display": "<b>Hodkiewicz, Maximo 1913-1980</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/743debb9-9ab4-4367-a891-be19b25d06bc",
            "display": "<b>Graham, Mason 1911-1975</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/68c46186-a851-4b08-8938-8381ee1d11d3",
            "display": "Deep Thought, Dying of the Light, Translated into italian by Majikthise"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/495bd215-c879-4133-a9bb-f8b30fd71d48",
            "display": "Colin the Security Robot, If I Forget Thee Jerusalem, Translated into marathi by Zarquon"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/4998b808-4e01-4ae6-ab5c-fd60b83d6c31",
            "display": "Wonko the Sane, The Proper Study, Translated into braille by Grunthos the Flatulent"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e0065a41-4404-4a75-abb2-d5802ba3821b",
      "date": "1961-08-17T00:00:00.000-04:00",
      "label": "17 August 1961 - Medhurst, Glenn",
      "recipients": [
        "Medhurst, Glenn"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c1eedd35-9eb6-4d72-a692-a565a975ad61",
            "display": "<strong>rehearsal</strong> <i>Intouchables</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/299c4d5c-be38-4edd-9432-09e79d006bf9",
            "display": "<strong>radio_broadcast</strong> <i>Star Wars: Episode VIII – The Last Jedi</i>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4e525897-7daa-4ba7-8b01-5963e00ffe90",
            "display": "<b>Frogstar World C</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ca77a89a-c38b-49df-b057-bb0eb3fca96c",
            "display": "<b>Brontitall</b>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1812071e-9f5b-4254-917c-53cfb173a47d",
            "display": "<b>McDermott, Jimmie 1902-1986</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/5d427086-4ad9-457c-ab58-59f09b5da0f1",
            "display": "Agrajag, Nectar in a Sieve, Translated into braille by Eccentrica Gallumbits"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a236cf37-ecf8-4ce6-a3b6-3eb6b15956f8",
            "display": "Mella, <i>The Last Temptation</i>, Translated into spanish by Mr. Prosser"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/13005382-cb16-4b11-90c3-ed95fa6db22d",
            "display": "Oolon Colluphid, <i>Of Mice and Men</i>, Translated into rumanian by Charles Darwin"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fd73cd93-5c77-45f9-8d58-248ef58adce3",
      "date": "1962-03-03T00:00:00.000-05:00",
      "label": "03 March 1962 - Jacobs, Josue",
      "recipients": [
        "Jacobs, Josue"
      ],
      "destinations": [
        "29 Arlington Avenue"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/599c70e6-effe-4010-8e4c-9fab84f438c7",
            "display": "<strong>radio_broadcast</strong> <i>Full Metal Jacket</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/fd94fcbb-097d-428a-a540-755d78e3ea39",
            "display": "<strong>theatre</strong> <i>Witness for the Prosecution</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cece270f-228d-4a7a-990e-905e8b25bea5",
            "display": "<strong>_reading</strong> <i>Hacksaw Ridge</i>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/34371188-eaf7-4a08-bcc2-c647bd3417a8",
            "display": "<b>Mohr, Candi 1900-1982</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c0df32e3-4ef0-47cc-bd2c-6d4c6bbace84",
            "display": "<b>Lemke, Tony 1915-1996</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1d2f09f4-08bb-49bb-ac3b-baa1fb74dfd3",
            "display": "<b><i>Oglaroon</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/6c557324-e80a-4bf6-a507-2a5a376bac4f",
            "display": "<b>Horse and Groom</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/eaaec0df-d1cd-446f-8da6-b1c2b7449c24",
            "display": "<b><i>Belgium</i></b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b60ecb6d-7f46-40b5-add1-db715fd3f263",
            "display": "Random Dent, <i>When Doves Cry</i>, Chillwave <i>bicycle rights pork belly trust</i> fund."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/55d9c031-b800-425e-8048-d72ce26c7943",
      "date": "1962-11-26T00:00:00.000-05:00",
      "label": "26 November 1962 - Kohler, Lennie",
      "recipients": [
        "Kohler, Lennie"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/59f0a8c5-563b-4d53-9608-b25cf722558e",
            "display": "Hay House, JinJenz 90's swag seitan fingerstache wolf xoxo."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0fc90505-7645-4c4f-8475-d81d33d5c89d",
            "display": "Rachell Kertzmann, <i>It's a Battlefield</i>, Canongate Books"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1f83654c-c2d8-4610-b0ae-70382d29ebd1",
            "display": "Elmer Greenholt Jr., A Time of Gifts, Ellora's Cave"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/844d6cb0-cd4a-405f-8ea2-559f87c03cbf",
            "display": "Gail Andrews, A Time to Kill, Translated into finnish by Paula Nancy Millstone Jennings"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/445e7a1f-517d-4a7f-8521-dbab7fe9ed91",
            "display": "Slartibartfast, <i>Breakfast Can Wait</i>, Everyday thundercats hammock tacos."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/952d3b98-5ea5-4f89-8f5e-94c4b37f48f0",
            "display": "Deep Thought, Still Waiting, Synth pour-over photo booth chia fingerstache banjo."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7686d1b9-24e6-4d7b-be99-c2d775d448ce",
      "date": "1963-07-10T00:00:00.000-04:00",
      "label": "10 July 1963 - Yundt, Su",
      "recipients": [
        "Yundt, Su"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/584df404-9832-45a5-ad45-7095543438b7",
            "display": "<strong>_reading</strong> <i>The Elephant Man</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/a4887dde-2588-464b-9ae9-42f1ff1ca2d6",
            "display": "<strong>radio_broadcast</strong> The Departed"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cf4c68f9-49b6-47a4-8352-537791c652fe",
            "display": "<strong>radio_broadcast</strong> V for Vendetta"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6e681baa-e660-4526-8454-cbd7cafabd5b",
            "display": "<b>Dach, Jeni 1912-1996</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/6a1a1150-f7ee-4ea1-9fa5-0cc1ef1cd50b",
            "display": "Beckie Turcotte DC, <i>Recalled to Life</i>, McGraw Hill Financial"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/19d69d13-c328-42d6-9dd0-35ced17e2b95",
            "display": "<b><i>A Time to Kill</i></b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/91d2dac8-2732-424d-a6ee-1bd77f044d43",
            "display": "<b><i>The Parliament of Man</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d9051540-1add-49d8-a87e-00ac08ef27d1",
      "date": "1964-03-18T00:00:00.000-05:00",
      "label": "18 March 1964 - Heathcote, Luann",
      "recipients": [
        "Heathcote, Luann"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0b7f7a08-7fce-4d9d-a869-b77b8b0ca9d6",
            "display": "<b>Total Perspective Vortex</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/19d49c8d-2e2b-4bdc-8907-0b5855b08d00",
            "display": "Allen Ltd, Yooden Vranx Tilde shoreditch 90's beard."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/b93e9606-3dec-4d9a-828c-ca739299e2c2",
            "display": "Kamilah Effertz, Down to a Sunless Sea, G. P. Putnam's Sons"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8155d676-b33c-4c4f-b32f-fc3770736c18",
            "display": "<b>Tender Is the Night</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d6234272-69d5-4d9a-b1c6-7a758bf7e2e8",
            "display": "<b><i>Look to Windward</i></b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ca52d548-d37e-4446-b3e3-a379ce7cc958",
            "display": "<b><i>Carrion Comfort</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3d608c0e-4cc6-4f1a-99c0-73370418241a",
      "date": "1964-09-16T00:00:00.000-04:00",
      "label": "16 September 1964 - Fay, Jessie",
      "recipients": [
        "Fay, Jessie"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/963a0f12-da83-4f41-8c40-a7af8ecc353a",
            "display": "<strong>theatre</strong> A Beautiful Mind"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/bc04d0f2-ede0-4b58-b164-3ab1d926f8a1",
            "display": "<strong>radio_broadcast</strong> <i>Gone with the Wind</i>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/00730e00-b27c-44d9-9601-f55203b2b8f4",
            "display": "Eddie the Computer, <i>Can't Stop This Feeling I Got</i> [Alyssa Edwards]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/44cf9a0a-e119-4751-b042-65284c6d620d",
            "display": "Wonko the Sane, Kiss [Sahara Davenport]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fa84af56-d5e6-4877-94a5-20cf8e0a15a8",
            "display": "Agrajag, U Got The Look [Ra'jah O'Hara]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/150d4d02-8c7b-42ee-92b9-76c29e7cc0e3",
            "display": "<b>Vogsphere</b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ed08ba63-0a08-4a95-93b8-735a317b950a",
            "display": "Bowerick Wowbagger, <i>Thunder</i>, Literally food truck master godard loko."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/fdca89e6-2b7f-43be-bb8e-4bcae8cf389e",
            "display": "Trillian, <i>Kiss</i>, Slow-carb listicle keffiyeh gastropub."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f403b2b7-26b0-4e16-84f4-669aa296f9a7",
      "date": "1965-06-11T00:00:00.000-04:00",
      "label": "11 June 1965 - Casper, Gerard",
      "recipients": [
        "Casper, Gerard"
      ],
      "destinations": [
        "Denmark"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c2d2a770-6a5b-43d6-85bd-ce5d89006094",
            "display": "Charles Darwin, Alphabet St. [Yvie Oddly]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c00ee919-d98f-4cc3-b30d-3cc2a28d6010",
            "display": "Eddie the Computer, <i>Can't Stop This Feeling I Got</i> [Aquaria]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c54ecd28-48f7-49f3-af84-016cf7b46e0e",
            "display": "Hotblack Desiato's bodyguard, Eye No [Jujubee]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/4e19106d-2cdd-4144-b114-58b77ccff8a4",
            "display": "<b>McDermott, Boyce 1906-1973</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/e4f6a819-428e-4bdf-a284-a2eafcd28dbf",
            "display": "<i>Manor House Publishing</i>, Dan Streetmentioner Sustainable cornhole shabby chic aesthetic iphone thundercats."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d6b6f170-5891-475e-a30f-5a6c3c76226b",
            "display": "Virgin Publishing, Loonquawl and Phouchg Messenger bag vhs lomo crucifix pour-over 90's carry portland."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e8e17fa6-5510-486b-b2ab-e77bf732f990",
            "display": "Hillman Hunter, Number the Stars, Translated into schweizerdeutsche by Questular Rontok"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8956ef6b-19ea-4fd2-9fc0-44fd08e5e8cd",
      "date": "1965-10-29T00:00:00.000-04:00",
      "label": "29 October 1965 - Cole, Lilian",
      "recipients": [
        "Cole, Lilian"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c630c9f0-683f-4a97-8071-21a4090b968f",
            "display": "<b>Abernathy, Reta 1907-1977</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5d687358-4b40-4aba-a5a9-9a7031c58869",
            "display": "<b>Ryan, Mohamed 1914-1990</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f7c07c87-833f-40f5-8375-dacc144b8fc5",
            "display": "<b>Parisian, Erin 1919-1997</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e8f192c6-2dad-4781-9e17-a937e66d18d5",
            "display": "<b><i>Sector XXXZ5QZX</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cc9c18b0-6bbb-4504-b0ee-f0b74e5e2532",
            "display": "<b><i>Asbleg</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/99faf8bf-14c4-4404-b2c2-db4c0a3e8b6d",
            "display": "<i>Fight Club</i>, dir. Maude Lebowski, RW6, South Antonyport, 1945-10-18"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/342dba77-1904-4bf5-8e1e-d7c3a2b1ef29",
            "display": "Prostetnic Vogon Kwaltz, <i>(There'll Never B) Another Like Me</i>, Health celiac post-ironic fingerstache mlkshk."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/21461267-8667-4ef2-b52e-6443879877f8",
            "display": "Magrathean sperm whale, Joy In Repetition, Green <i>juice trust fund chambray authentic single-origin coffee iphone viral hammock craft</i> beer."
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 16,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 2
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
          "key": "Donnelly University",
          "doc_count": 8
        },
        {
          "key": "The Hansen College",
          "doc_count": 8
        },
        {
          "key": "Northern Hawaii Institute",
          "doc_count": 7
        },
        {
          "key": "Northern Connecticut University",
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
