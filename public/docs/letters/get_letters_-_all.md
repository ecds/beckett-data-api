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
ETag: W/&quot;ef66d9cd35a3f7ed5ed90f8027c56164&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 97e315e5-b8e1-488f-a5ab-d9b1444a030e
X-Runtime: 2.646660
Vary: Origin
Content-Length: 46705</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/fb2efa3c-b2f4-49bd-8a86-478dc32fe75d",
      "date": "1957-09-05T00:00:00.000-04:00",
      "label": "05 September 1957 - Wiegand, Jung",
      "recipients": [
        "Wiegand, Jung"
      ],
      "destinations": [
        "Denmark"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e73b525e-53c9-4d8c-b123-d0c22cd833bc",
            "display": "<b>Preliumtarn</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/538ca53c-86ce-4dc3-93f3-4b4882222b92",
            "display": "<b><i>Easter Island</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/cebd9793-b0d6-456f-adfd-e90b54ee1941",
            "display": "<b><i>Belgium</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/86cf1960-8cba-4919-8db5-7d73dc3f0c0d",
            "display": "<b>Seventh Galaxy of Light and Ingenuity</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/f1cfe1a1-3480-42f3-9871-2b48d64d9811",
            "display": "Vertigo, dir. Jesus Quintana, Heart of Gold, Heleneborough, 1945-12-07"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/ca63212c-032b-4540-bcca-ea15b1db35a9",
            "display": "Star Wars: Episode VIII – The Last Jedi, dir. Jackie Treehorn, Krikkit One, Florentinofort, 1924-06-09"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e0d42f7e-f26f-44c6-ae7d-57fe2c3ea2e4",
            "display": "Grunthos the Flatulent, <i>Oh! To be in England</i>, Translated into dutch by Gag Halfrunt"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/18ba73d8-3afe-4e54-87ac-bf918f182d4d",
      "date": "1958-01-07T00:00:00.000-05:00",
      "label": "07 January 1958 - Wehner, Jared",
      "recipients": [
        "Wehner, Jared"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/91ad33ab-b8a2-430f-9e3a-c91dfa80ea6d",
            "display": "Humma Kavula, <i>Alphabet St.</i> [Joslyn Fox]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/44658275-e1dd-48f6-898f-0d9f3d15c38e",
            "display": "Deep Thought, <i>Let's Go Crazy</i> [Darienne Lake]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/42816d2d-242e-44e6-b9ba-23d72c3e67e4",
            "display": "JinJenz, <i>Darling Nikki</i> [Plastique Tiara]"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/698e2de6-1502-4633-b67f-58a4ec102b06",
            "display": "<b><i>Han Wavel</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/88714c78-313e-4bb0-9130-53a95b95823f",
            "display": "<b><i>Oglaroon</i></b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f6ac1113-465f-41e5-9425-3e69c50a7ab4",
            "display": "<b><i>Mercury</i></b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/38e346c4-191c-4905-acd2-db880f756d97",
            "display": "Linwood Orn, Little Hands Clapping, Shoemaker & Hoard Publishers"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7a48dfda-75ec-4820-8339-614625a87de5",
            "display": "Richard Mueller, <i>The World, the Flesh and the Devil</i>, Ellora's Cave"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/983fd7a9-4fbb-4bc2-9ff6-8c949d909a22",
            "display": "Howard Gleichner, Such, Such Were the Joys, Karadi Tales"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/59f8ea48-32f8-4513-aba4-256f7ce6b7a5",
      "date": "1958-05-30T00:00:00.000-04:00",
      "label": "30 May 1958 - Keeling, Joel",
      "recipients": [
        "Keeling, Joel"
      ],
      "destinations": [
        "<i>Frogstar World B</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/84f355fb-d67b-483d-b654-2a4c27052aa2",
            "display": "<strong>rehearsal</strong> <i>The Green Mile</i>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c43d104c-a386-4f11-b69d-25970f057bdf",
            "display": "<b>Stavromula Beta</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2c054767-9c44-4033-971a-99520706cc94",
            "display": "Sammie Brakus, <i>I Know Why the Caged Bird Sings</i>, Bison Books"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/10d2468c-9a88-4e9c-b8d7-af4b184b3103",
            "display": "Lucius Lakin DDS, The Proper Study, Caister Academic Press"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/085c7f38-ea7f-4491-98a2-98b874a6a5b0",
            "display": "<b>Vanity Fair</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1399bcd2-3c56-4196-9ef1-a4f734a516d1",
            "display": "<b>In Dubious Battle</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4d3ca788-5023-4ecc-84ef-858d36555f1e",
      "date": "1958-10-01T00:00:00.000-04:00",
      "label": "01 October 1958 - Cronin, Herta",
      "recipients": [
        "Cronin, Herta"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/73719648-8ef2-449e-b282-c76b470b3ce6",
            "display": "<b>Langworth, Dino 1906-1993</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b1e39bd2-ee7b-4435-9e90-bd5913a39aa6",
            "display": "<b>Feeney, Marie 1905-1988</b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/75755f9d-7d4f-4291-95eb-2f201dacc52f",
            "display": "<b>Barnard's Star</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7a982dc0-8c22-405c-884b-39b4d8c8be79",
            "display": "<b>Pleiades system</b>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/08269619-a301-4635-bc3b-b075e8b248f7",
            "display": "<b><i>Discovery</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d99046d9-10e7-42ae-a61b-6458bef6ac78",
            "display": "<b><i>Discovery</i></b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/99a75e7d-c13d-4e90-8c24-3616c339f0d5",
            "display": "Ramiro Orn, <i>This Lime Tree Bower</i>, Matthias Media"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4a1d2ee8-eb7d-4515-9a70-5bcab660858a",
            "display": "Elisha Bashirian, <i>The Torment of Others</i>, Orchard Books"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/051eb220-f771-49b0-8a99-5a4f49a7cf05",
      "date": "1959-02-04T00:00:00.000-05:00",
      "label": "04 February 1959 - Tremblay, Claud",
      "recipients": [
        "Tremblay, Claud"
      ],
      "destinations": [
        "Cathedral of Chalesm"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/373f88df-0b2b-4e8d-a6cb-4c946ecdf353",
            "display": "Questular Rontok, Bambi [Mercedes Iman Diamond]"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4ed2d1be-c824-4937-a05e-814830d6db75",
            "display": "<i>Barrie & Jenkins</i>, Magrathean sperm whale Leggings salvia fanny pack sustainable."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/00f86866-be8f-43e8-bb49-95f142109960",
            "display": "<i>Penguin Books</i>, Gail Andrews Umami cronut iphone vegan brooklyn goth banh mi keffiyeh."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/5eab588a-94c7-42bb-90a4-2af6396bc155",
            "display": "Imelda Conroy DDS, <i>For Whom the Bell Tolls</i>, Shoemaker & Hoard Publishers"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/13b8bf71-4c30-473e-ab62-70e41eafa0e4",
            "display": "The Hon. Angelica Fritsch, <i>The Wives of Bath</i>, Seagull Books"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b899de25-c08b-4501-ab7f-58720b159851",
            "display": "Barbera Hoeger MD, <i>Surprised by Joy</i>, Tartarus Press"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7b19a6d6-61aa-4c02-b37a-aec84014e4e8",
            "display": "Lintilla, Crimson and Clover, Flexitarian selfies lomo chicharrones."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f9a35bff-4d8e-4279-a0d0-b916d6fa441c",
            "display": "Pasta Fasta, <i>Peach</i>, Yolo <i>cred letterpress street pop-up viral aesthetic migas</i> mustache."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/51d983f0-431f-4af4-b03b-d26514dd3c20",
            "display": "Agrajag, Tamborine, Pabst ennui yr chicharrones paleo schlitz."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd5074e6-46f1-4132-99ec-3a4f30fef973",
      "date": "1959-06-03T00:00:00.000-04:00",
      "label": "03 June 1959 - Sanford, Queenie",
      "recipients": [
        "Sanford, Queenie"
      ],
      "destinations": [
        "<i>Bistro Illegal</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/15b016b6-34d1-4894-9760-081c8f75344e",
            "display": "<b><i>Krikkit</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/033d7d9a-9f3a-498c-b824-a6938142827f",
            "display": "Manor House Publishing, Random Dent Slow-carb polaroid meh neutra."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/ba129120-bdc9-4165-bd80-6aff9c3dfd05",
            "display": "Jamal Parisian, Blithe Spirit, Velazquez Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/818dda67-95e3-41e2-9139-7cf2de154f00",
            "display": "Marcia Ratke Jr., <i>Of Human Bondage</i>, Harry N. Abrams, Inc."
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/22727761-10d7-4a9e-bf76-73ed97d15cd2",
            "display": "Mikel Kunde, <i>The Golden Bowl</i>, Blackie and Son Limited"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d0af6156-7335-4fe4-b083-cfbba5e02bec",
            "display": "Arthur Philip Deodat, Kiss, Kombucha <i>whatever post-ironic plaid mustache gentrify irony synth</i> hella."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/66f36c7c-127c-421c-983a-0389bc6119c2",
            "display": "Loonquawl, Cream, Aesthetic green juice health locavore."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b435d3a0-00d0-4fe7-8b0c-20d17d7923d5",
      "date": "1959-08-13T00:00:00.000-04:00",
      "label": "13 August 1959 - Bailey, Kelley",
      "recipients": [
        "Bailey, Kelley"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ccf1538b-5fa2-4c9a-accb-6023eaa7d8f3",
            "display": "<strong>theatre</strong> The Bourne Ultimatum"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/a6c5a323-1f28-458c-bcdb-25cfef272e87",
            "display": "<strong>_reading</strong> <i>Casablanca</i>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/db2dc74d-a8bd-47e8-b207-8727bd00ce53",
            "display": "<b>Columbia</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/518d18b8-f7f1-472f-9554-3398ae5d3bbf",
            "display": "<b><i>Columbia</i></b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/d623d858-d9a8-4f2d-97f6-980102b39149",
            "display": "Deep Thought, I Wish U Heaven, Celiac park pug tumblr."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/69f6c88c-3a28-415c-b6c4-27c85c4a04c1",
            "display": "<b>Pale Kings and Princes</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/73440087-3207-4209-9ce6-921dd8950e57",
            "display": "<b>Moab Is My Washpot</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/85e874a8-1245-45bf-aad0-d311716c3808",
      "date": "1959-10-03T00:00:00.000-04:00",
      "label": "03 October 1959 - Baumbach, Catheryn",
      "recipients": [
        "Baumbach, Catheryn"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4618d6df-a29d-4573-a724-e38d2d4340ff",
            "display": "<b>Frogstar World B</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e6d619bc-c62d-4182-bdd8-8b699fc8b4ce",
            "display": "<b><i>Fallia</i></b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/4a34ab67-c3f4-49d2-8f7d-f05df6e73418",
            "display": "<b>London</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/375bb93f-adbc-428b-8a23-935a41e00dd6",
            "display": "<b>North West Ripple</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/63864c04-4cb6-4512-b53b-c6d3d359fcfc",
            "display": "<b>Café Lou</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/eafb23e7-7e82-4cdf-98c4-b169929d509e",
            "display": "Garkbit, <i>Look Homeward, Angel</i>, Translated into arabic by Humma Kavula"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/eb7ead4d-214a-4d23-b5bf-ef38916f0e0e",
            "display": "Bowerick Wowbagger, <i>Cream</i>, Jean shorts craft beer vegan letterpress irony literally tumblr pabst schlitz."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/63b0606f-5cdb-43a7-83cc-0b89d52b3968",
      "date": "1959-12-29T00:00:00.000-05:00",
      "label": "29 December 1959 - Turcotte, Georgette",
      "recipients": [
        "Turcotte, Georgette"
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/4ced1005-2396-419c-a628-1ffdf8d957b3",
            "display": "<b>Dangrabad Beta</b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/bdaf02c1-d7a4-49e2-806f-c4d33eb8666d",
            "display": "<b><i>Frogstar World B</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/626badfe-cbe3-4c92-9d85-0e19cedeca7c",
            "display": "<b><i>Hawalius</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/58e1039f-cbdb-4092-b9b6-9135806ff418",
            "display": "<i>Unforgiven</i>, dir. Brandt, Vogon Constructor Fleet, South Bettyeville, 1961-12-08"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/fdf6d74a-5d40-47a9-8311-09cb7f07c9e1",
            "display": "<b>Mercury</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/02f4cebb-440a-45e5-a7c7-84fc29a89faa",
            "display": "<b>Discovery</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/7ec56ce3-7797-42b2-b5f0-4ccd1b2c000c",
            "display": "<b><i>Apollo</i></b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/95bd33a4-9932-41ce-98f9-f0db79794ecc",
            "display": "Agrajag, <i>Tirra Lirra by the River</i>, Translated into japanese by Garkbit"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/47de5bd5-b351-4a92-abf1-5ea4a753e96f",
            "display": "Lunkwill and Fook, The Lathe of Heaven, Translated into rumanian by Prostetnic Vogon Kwaltz"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/41bbecf4-a2fc-420a-b1ad-d0d718462744",
            "display": "Agrajag, <i>Recalled to Life</i>, Translated into norwegian by Phouchg"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e59ebf89-6cb7-4ebb-93c3-2f1b454efac3",
      "date": "1960-06-01T00:00:00.000-04:00",
      "label": "01 June 1960 - Blick, Debbie",
      "recipients": [
        "Blick, Debbie"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3d0df69c-18c9-4cb3-9a7a-7f62e3f78c6f",
            "display": "Emily Saunders, <i>I Hate U</i> [Plastique Tiara]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/444968f2-c634-433c-8eba-75ff715c6ad8",
            "display": "Trin Tragula, <i>Baby I'm A Star</i> [Kenya Michaels]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5063e34e-1156-430f-ab3a-35d00908d4bd",
            "display": "Pasta Fasta, Cindy C. [Nina West]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/083a9307-462b-4309-be3a-2a8602dcc933",
            "display": "<b>Oglaroon</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ca06df4d-717e-4e56-b324-69a90da507c0",
            "display": "<b><i>Ysllodins</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/413952a9-7761-4088-88d7-87fd8f4a2272",
            "display": "<b>The Domain of The King</b>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/5c930fb0-f5d1-4733-966c-ddab119a473f",
            "display": "Prostetnic Vogon Kwaltz, Rosemary Sutcliff, Translated into italian by Lunkwill and Fook"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f9473c14-1ee0-4438-9dd8-1bcb4baf3d38",
            "display": "Tricia McMillan, <i>The Little Foxes</i>, Translated into portuguese by Questular Rontok"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/77c8a015-b958-412f-b056-689eb0f605c5",
            "display": "<b>A Darkling Plain</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f925991b-a61e-4254-b53f-5e14a3bb0644",
            "display": "<b><i>In a Dry Season</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6a124e10-dbbf-4aef-9f52-12902d069a79",
      "date": "1960-07-25T00:00:00.000-04:00",
      "label": "25 July 1960 - Strosin, Latina",
      "recipients": [
        "Strosin, Latina"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c5f093e2-be3d-48e6-b11f-f23183f3d57f",
            "display": "Gail Andrews, <i>Dead On It</i> [Kennedy Davenport]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f2b75d5a-df14-4f72-8bec-487493f8e820",
            "display": "Genghis Khan, <i>When 2 R In Love</i> [A'keria Chanel Davenport]"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/ffc72e1b-859e-441b-a43b-ab90c1d00af8",
            "display": "<i>Boydell & Brewer</i>, Zarniwoop Meggings scenester microdosing fashion axe beard paleo mumblecore literally hashtag."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1c262c32-e2ca-458c-9ba2-93cb3c2b7f40",
            "display": "<i>Emerald Group Publishing</i>, The Allitnils Street echo listicle salvia single-origin coffee."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/897ba9f1-afc7-43b0-84a5-94198bfd95c6",
            "display": "Applewood Books, Eccentrica Gallumbits Poutine taxidermy kogi tumblr trust fund cray."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/35465462-57c4-445a-b099-139252b97a6e",
            "display": "Latrice Rowe, Of Human Bondage, Zondervan"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/54668547-056f-4374-b279-421695c4e81b",
            "display": "Hillman Hunter, Thieves In The Temple, Cornhole <i>retro keytar gentrify phlogiston plaid goth</i> neutra."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/71d36a8c-5085-4d2d-be85-369cb9be9248",
      "date": "1960-12-19T00:00:00.000-05:00",
      "label": "19 December 1960 - Thiel, Morton",
      "recipients": [
        "Thiel, Morton"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/575fc628-2f17-4fae-9899-3e379fdf097d",
            "display": "<strong>theatre</strong> Star Wars: Episode I – The Phantom Menace"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5907b28e-7105-4d4f-9ff4-183d0e5adaea",
            "display": "Rob McKenna, <i>Black Sweat</i> [Aquaria]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9782bace-5d98-485a-b9e7-3e138bfaf457",
            "display": "Mr. Prosser, <i>Under The Cherry Moon</i> [Detox]"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/9da49fd2-1e74-4ae6-ba2e-393b58dcb853",
            "display": "<b>Ratke, Yvette 1910-1980</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2deaf52b-d6e2-4b9a-95e3-e79c88377072",
            "display": "<b>Gutmann, Odis 1929-1979</b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a43b92fd-9460-4d2f-a466-93dfcc36a90c",
            "display": "Prostetnic Vogon Jeltz, Eye No, Yr <i>butcher before they sold out mustache seitan five dollar</i> toast."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/90090e59-f4e9-408e-8088-df6fbde41658",
      "date": "1961-02-17T00:00:00.000-05:00",
      "label": "17 February 1961 - Davis, Delaine",
      "recipients": [
        "Davis, Delaine"
      ],
      "destinations": [
        "Kakrafoon Kappa"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/0a2d9e0a-bf7e-47c0-934f-4b0e99d491bc",
            "display": "<b><i>Stavromula Beta</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6a8df525-8a0c-47f4-a055-dff6f08de90b",
            "display": "Star Wars: Episode V - The Empire Strikes Back, dir. Jackie Treehorn, Krikkit One, Ryanberg, 1952-12-29"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3fbf812f-6513-4d3d-8146-7b75299dfd22",
            "display": "Isidra Davis JD, Great Work of Time, Churchill Livingstone"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/32de50c5-0239-4615-b5e1-4734a0e422ea",
            "display": "Travis Hane, <i>A Monstrous Regiment of Women</i>, Parachute Publishing"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/eb9ec6d6-6302-4839-a062-605a8935e256",
            "display": "Ford Prefect, Do It All Night, Messenger <i>bag williamsburg before they sold out wayfarers raw denim</i> locavore."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/16d20464-b4b5-4299-9e68-389549124597",
            "display": "Questular Rontok, <i>Ol' Skool Company</i>, Austin artisan echo godard."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/328c221c-052e-40fc-9a5f-188f1dc269ee",
      "date": "1961-11-09T00:00:00.000-05:00",
      "label": "09 November 1961 - Lockman, Cristopher",
      "recipients": [
        "Lockman, Cristopher"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9ff937b6-6c74-4132-80ce-c6561189b1b5",
            "display": "JinJenz, <i>200 Balloons</i> [Naomi Smalls]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/264043dc-6512-49d2-bf0d-1ca5133e364a",
            "display": "Tricia McMillan, <i>Little Red Corvette</i> [Mayhem Miller]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9ffa6a6a-5b87-4b20-81fe-6c16ff793de1",
            "display": "The Allitnils, <i>She's Always In My Hair</i> [Raja]"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/145d417d-c54a-4b15-a3e6-7efb251838c6",
            "display": "<i>Kensington Books</i>, Arthur Dent Tumblr typewriter single-origin coffee slow-carb retro."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a3f4e09b-65f5-4859-a01b-75f86bf7cd1b",
            "display": "Mascot Books, Garkbit Blue bottle keytar skateboard godard tote bag gentrify."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/4b3b3c15-1e83-4d86-bb39-2a7a3f9e7061",
            "display": "Prostetnic Vogon Jeltz, I Know Why the Caged Bird Sings, Translated into rumanian by The Allitnils"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0e86fb7d-7e0e-4fe8-a6a0-c52258950367",
            "display": "Bowerick Wowbagger, Paths of Glory, Translated into arabic by Lintilla"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f62cd37b-1462-4103-859b-3dd96a4fc0f2",
            "display": "Trin Tragula, Blue Remembered Earth, Translated into dutch by Questular Rontok"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1a91701f-5f36-45c3-8ba0-f2a9c2991ffe",
            "display": "Lintilla, I Wanna Be Your Lover, Brooklyn blue bottle polaroid literally etsy migas fashion axe tousled."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2f3165c3-d64f-4423-b1d2-925e7b33a5c9",
            "display": "Majikthise, New Position, Mixtape raw denim +1 cardigan gastropub selvage."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c8694461-24b3-47f9-8477-ea6101bbf0d4",
            "display": "Lunkwill and Fook, 319, Tumblr echo food truck pug phlogiston chicharrones."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ae659e2f-ca54-4714-b6e3-0283aa64d7ab",
      "date": "1962-06-05T00:00:00.000-04:00",
      "label": "05 June 1962 - Farrell, Delinda",
      "recipients": [
        "Farrell, Delinda"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8be20f26-f853-4244-b14c-8b4a67d7ca11",
            "display": "<b>Endeavour</b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/e8a074f2-5a47-4b24-882b-244795800796",
            "display": "<b>Orion</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c2812074-2a15-446d-977b-9657b53bf05f",
            "display": "<i>Holt McDougal</i>, Phouchg Crucifix taxidermy flexitarian neutra pour-over chillwave meditation before they sold out."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/860c54f4-2829-44eb-a495-28893d0806cd",
            "display": "George Routledge & Sons, Pasta Fasta Heirloom hashtag craft beer disrupt locavore kinfolk slow-carb pbr&b pop-up."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/eae7895b-f5a9-41a7-b601-4a747582a161",
            "display": "Kieth Erdman Esq., <i>Those Barren Leaves, Thrones, Dominations</i>, Black Sparrow Books"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/6959677e-a3f8-42e7-bd78-8e1f96d7fc71",
            "display": "<b>A Darkling Plain</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ef611c07-1eb2-468b-b899-38bb7c061fb9",
            "display": "<b><i>Taming a Sea Horse</i></b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/7bd05a1e-db6f-4da7-a284-cc7934ab6baf",
            "display": "<b><i>The Wives of Bath</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e379c380-1cf5-48b3-8e64-80572339b289",
      "date": "1962-06-06T00:00:00.000-04:00",
      "label": "06 June 1962 - Schulist, Carmen",
      "recipients": [
        "Schulist, Carmen"
      ],
      "destinations": [
        "<i>Pleiades system</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1505b5ed-23fe-4b5f-998e-cc1281ea44a4",
            "display": "<b><i>Bartledan</i></b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c22b5137-bb48-41be-a065-44bcdbe158a7",
            "display": "<b><i>Asbleg</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/00ee3244-0daa-4b0f-86bc-89aeef158c97",
            "display": "<b>Fenchurch Street railway station</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b61297ee-a643-44f5-991f-806f32b2571e",
            "display": "Star Wars: Episode II – Attack of the Clones, dir. Bunny Lebowski, Bistromath, Christalton, 1951-07-09"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/780bba64-566f-46d2-9e65-41c55aa381eb",
            "display": "<i>The Lord of the Rings: The Two Towers</i>, dir. Jesus Quintana, Golgafrinchan Ark Fleet Ship B, West Jinaview, 1958-04-22"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/821ac4c1-b595-4f74-95f0-839413b9cfc7",
            "display": "<i>Modern Times</i>, dir. Karl Hungus, Vogon Constructor Fleet, West Emeryburgh, 1928-03-21"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1cdeb7fe-fa2e-4cfb-8a25-8eae4aa0f82b",
            "display": "<i>Ten Speed Press</i>, Vroomfondel Tousled organic yr cronut shabby chic pug direct trade."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/dccc5bd3-ed11-42dc-a4bd-b77d4c06b6ff",
            "display": "<i>New Holland Publishers</i>, Trillian You probably haven't heard of them plaid pbr&b muggle magic godard flannel authentic church-key."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d89641a7-83ac-4c3b-a8f8-242c1674f77d",
      "date": "1962-06-07T00:00:00.000-04:00",
      "label": "07 June 1962 - Leannon, Cameron",
      "recipients": [
        "Leannon, Cameron"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d389e38b-5a72-453c-a3c6-157c197345b9",
            "display": "<b>Streich, Synthia 1902-1975</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9524002b-f78e-4715-b309-8beb591e2899",
            "display": "<b>Thiel, Stanley 1910-1994</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/84d03d16-f404-408c-a686-53591a1c0969",
            "display": "Earthscan, The Allitnils Marfa lomo microdosing ramps tofu."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1251cd72-b8b8-49e8-b500-28d98c2ba1f6",
            "display": "Churchill Livingstone, Majikthise Etsy helvetica wayfarers paleo."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7c841e31-f131-4696-a004-b6a89c7672d1",
            "display": "Frankie and Benjy, <i>The Skull Beneath the Skin</i>, Translated into french_and_english by Galaxia Woonbeam"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b319a1d1-6667-44e7-983c-cbd1b697b8b3",
            "display": "Loonquawl and Phouchg, Rosemary Sutcliff, Translated into norwegian by Charles Darwin"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e616b812-dfb7-42ee-9e67-8fe84bb16766",
            "display": "Galaxia Woonbeam, Kiss, Iphone echo leggings 3 wolf moon vinegar."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e76edd61-1f16-452f-ba79-bc15a55d7b4a",
            "display": "Loonquawl and Phouchg, 200 Balloons, Jean shorts messenger bag loko mumblecore."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9f45395c-cc25-43d4-937e-a000cc0a7982",
            "display": "Charles Darwin, <i>The Beautiful Ones</i>, Butcher <i>etsy mixtape shabby</i> chic."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c402d8eb-df05-4e0f-a4f8-03b0bdec7e85",
      "date": "1962-07-07T00:00:00.000-04:00",
      "label": "07 July 1962 - Wehner, Renate",
      "recipients": [
        "Wehner, Renate"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/070efe4e-be54-4699-ac5f-d39a652f9116",
            "display": "<strong>theatre</strong> <i>Scarface</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ae862a6c-e1f7-4baf-8347-23a40d087cda",
            "display": "<strong>rehearsal</strong> <i>Groundhog Day</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/a15f9531-3457-4986-a60c-86a4d9adc4b5",
            "display": "<strong>_reading</strong> <i>Forrest Gump</i>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/bcb20622-d86f-4772-85d8-6e9979d7c68c",
            "display": "<b><i>Discovery</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b4af0d4c-7a05-4ebc-9ee0-f4201afe1638",
            "display": "<b><i>Gemini</i></b>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/b715f486-c8f1-4365-8143-3aa4d5cebc3e",
            "display": "<b>Discovery</b>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/3c8c2a75-31d4-4824-ab2c-7fc3b6886427",
            "display": "Kaila Schaden, <i>The Wings of the Dove</i>, Marshall Pickering"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/0fab501b-d387-485d-8e7f-57c075e60fa2",
            "display": "Winston Homenick, <i>Beyond the Mexique Bay</i>, Candlewick Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b433e784-5811-4afe-b032-0d22f12e056a",
            "display": "Blanche Wehner, Behold the Man, Cengage Learning"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/fb7dffcd-0513-4d05-b151-6f215f306df9",
            "display": "Magrathean sperm whale, The Far-Distant Oxus, Translated into spanish by Barry Manilow"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0750f409-f79e-4fda-9acf-9471d79a509d",
            "display": "Questular Rontok, <i>Stranger in a Strange Land</i>, Translated into italian by Emily Saunders"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/8623b15c-6116-450e-8785-59d41a4e135d",
            "display": "Arthur Dent, Mother Night, Translated into dutch by Gag Halfrunt"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cd057785-b2cc-40e2-8771-3d9e55bfa784",
      "date": "1962-07-12T00:00:00.000-04:00",
      "label": "12 July 1962 - Wiza, Dorthy",
      "recipients": [
        "Wiza, Dorthy"
      ],
      "destinations": [
        "Denmark"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b90b217f-35a5-4d9b-a61f-0e2fff3f62ae",
            "display": "<strong>theatre</strong> The Grand Budapest Hotel"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/33150724-8bc0-4658-a331-343231b133fe",
            "display": "<strong>_reading</strong> <i>The Treasure of the Sierra Madre</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/18d46fa3-178e-41ab-b50c-9e1649bfba38",
            "display": "<strong>rehearsal</strong> Star Wars: Episode VIII – The Last Jedi"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/684bc2d5-f9bc-4a32-a47f-914367278b93",
            "display": "<b><i>Jaglan Beta</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6e3ee8b6-9377-4928-afda-75866a56c699",
            "display": "<b><i>Arkintoofle Minor</i></b>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1d98219f-8b09-4a64-953b-cebd58ad5597",
            "display": "Hillman Hunter, <i>Under The Cherry Moon</i>, Forage single-origin coffee sartorial kickstarter messenger bag master schlitz."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b0a4297b-3a81-4ac6-80d5-af1c5389e859",
            "display": "Hotblack Desiato, When You Were Mine, Knausgaard tousled schlitz bespoke listicle truffaut."
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d55f52df-2df4-4188-b18f-9ee867edd2c8",
            "display": "<b><i>The Moving Toyshop</i></b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/09097cc9-e180-42af-bfc3-5947d96a5659",
            "display": "<b>The Mermaids Singing</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/01a5acb1-bdd3-46f4-bc3c-2aad78b6c128",
            "display": "<b><i>The Glory and the Dream</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a224bc3e-9ff9-4f91-8e02-34ef5c00fef6",
      "date": "1962-09-11T00:00:00.000-04:00",
      "label": "11 September 1962 - Leuschke, Regine",
      "recipients": [
        "Leuschke, Regine"
      ],
      "destinations": [
        "<i>Rupert</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/98c0c4bc-5ece-47ac-aadd-04d4fb9d0a9e",
            "display": "Garkbit, <i>Screwdriver</i> [Farrah Moan]"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5c805182-eaff-44d0-b9bb-d23cefd41f88",
            "display": "Rob McKenna, <i>Can't Stop This Feeling I Got</i> [Chad Michaels]"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/622d9792-5afc-41f8-a4dd-210b31fd0a66",
            "display": "<b>Norway</b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/254b700a-1c4f-4c9b-916c-392bdbe6879e",
            "display": "<b><i>Belgium</i></b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1c6367b7-a439-45b2-a9bd-9deaa95120c8",
            "display": "<i>Heyday Books</i>, Max Quordlepleen Cornhole pitchfork tacos yuccie."
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/17dbd42a-43db-40e7-8e26-c08777f705d8",
            "display": "Hotblack Desiato's bodyguard, <i>Infinite Jest</i>, Translated into english by Grunthos the Flatulent"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c4ccb709-bd3c-4289-81c0-23feb189a41e",
            "display": "Genghis Khan, <i>Fear and Trembling</i>, Translated into schweizerdeutsche by Rob McKenna"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/06dd8014-2e1e-4903-a505-fa9c246eba48",
            "display": "Barry Manilow, <i>Recalled to Life</i>, Translated into flemish by Paula Nancy Millstone Jennings"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/641dc560-ffce-4a3d-9b83-ff93e538fcbf",
      "date": "1962-10-27T00:00:00.000-04:00",
      "label": "27 October 1962 - Kulas, Raymond",
      "recipients": [
        "Kulas, Raymond"
      ],
      "destinations": [
        "Frogstar system"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6dc54ec1-ce7f-4489-8209-07a94bbe8401",
            "display": "<b><i>Argabuthon</i></b>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c1468b58-8393-4a4e-8ae8-5a5ec8117e13",
            "display": "<b><i>Arkintoofle Minor</i></b>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d5dd0cc8-f692-4da0-91b2-814effe351b8",
            "display": "<b><i>Fenchurch Street railway station</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/642b8f47-c0fa-4c6f-804f-fc3e075ae0e2",
            "display": "<b><i>Lamuella</i></b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/6056ca95-3596-4183-af22-7c1b731ca870",
            "display": "<i>The Lord of the Rings: The Two Towers</i>, dir. Brandt, Vogon Constructor Fleet, Port Shonchester, 1946-03-22"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/0eb6fd34-bfbf-45f4-806a-27187964f366",
            "display": "Princess Mononoke, dir. Brandt, Golgafrinchan Ark Fleet Ship B, Watersshire, 1925-03-22"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b99a2374-9712-403d-8021-114c1747bdeb",
            "display": "Phouchg, <i>The Last Temptation</i>, Translated into polish by Colin the Security Robot"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/8b8dcade-e819-44fc-9e2e-9e95012086ee",
            "display": "Elvis, Oh! To be in England, Translated into schweizerdeutsche by Humma Kavula"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6a851ef8-71d8-444a-8af5-0c01b7f19d7f",
      "date": "1963-02-17T00:00:00.000-05:00",
      "label": "17 February 1963 - Leannon, Stevie",
      "recipients": [
        "Leannon, Stevie"
      ],
      "destinations": [
        "<i>Betelgeuse</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f528d9dd-3138-4af4-9da9-38ba0524ddd8",
            "display": "<b><i>Total Perspective Vortex</i></b>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7be69022-97d5-43a0-a93b-0479a6e5be2c",
            "display": "<b>Frogstar system</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/ed3e5aba-965f-4c74-9190-8a679bf9a74f",
            "display": "V for Vendetta, dir. Brandt, Billion Year Bunker, Merlefurt, 1969-12-22"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f0684f5b-df4d-4e46-a0df-8498b484878e",
            "display": "<i>Star Wars: Episode II – Attack of the Clones</i>, dir. Brandt, Heart of Gold, Mathewchester, 1948-08-25"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/978ca5df-a822-4077-9866-b7c29524faa2",
            "display": "Fr. Ocie Spencer, <i>Carrion Comfort</i>, Anvil Press Poetry"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/240c9c8c-6f35-4fe0-ae74-e5e68cc95b86",
            "display": "Deep Thought, Uptown, Roof tofu shabby chic bitters meh aesthetic cronut plaid."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/216cc446-9a16-4b7e-abb8-aae6940f14af",
            "display": "Bowerick Wowbagger, International Lover, Pbr&b tousled lo-fi pickled."
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/61a3f5b3-8385-4181-b2bd-70a1768f4f5b",
            "display": "Prostetnic Vogon Kwaltz, <i>Thunder</i>, Brunch <i>asymmetrical portland godard locavore farm-to-table hammock taxidermy</i> artisan."
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/19d13aa6-3210-474a-bb1e-4f169fd7a1a4",
      "date": "1963-03-24T00:00:00.000-05:00",
      "label": "24 March 1963 - Altenwerth, Royce",
      "recipients": [
        "Altenwerth, Royce"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cfd00c28-b739-46b1-a4ee-a58bc78dd4df",
            "display": "<b>Deckow, Jenifer 1922-1993</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5a947aab-420e-4cf4-9972-1d5274263aa3",
            "display": "<b>Osinski, Lynsey 1922-1995</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f772cdcd-bd00-4c61-9ad0-4de613f59290",
            "display": "<b>Morar, Kevin 1903-1998</b>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1adacd4a-067f-4f74-b013-d12638a3ea9a",
            "display": "The Treasure of the Sierra Madre, dir. Brandt, Starship Titanic, South Toni, 1947-12-06"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7e391641-af63-44a8-bd6d-2068aed39076",
            "display": "Jaws, dir. Donny, Vogon Constructor Fleet, Kassulkeland, 1925-02-02"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/5450d3d3-5537-4828-9555-002b69176b63",
            "display": "<i>Jaws</i>, dir. Donny, Billion Year Bunker, Clintstad, 1924-01-13"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/54248308-6065-4237-9ed9-1f7572cebdfd",
            "display": "Kristen Feest, The Mermaids Singing, Andrews McMeel Publishing"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/259ca5e1-831e-46dd-8bcf-5b4871a8bb2b",
            "display": "<b>Paths of Glory</b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/34eda85e-b3cf-46cb-97e0-3819bc181b92",
      "date": "1964-05-26T00:00:00.000-04:00",
      "label": "26 May 1964 - Kautzer, Rickie",
      "recipients": [
        "Kautzer, Rickie"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/da6f9257-4f3a-4d12-b5eb-ee995b431c03",
            "display": "<b>Hackett, Nicky 1917-1980</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1d3d0a5b-c5f1-49dc-96a4-b7ca803420d2",
            "display": "<b>Rath, Scotty 1918-1977</b>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/331ff678-e5e1-444f-bd9f-46d3ebf6159d",
            "display": "<b>Rempel, Rosario 1913-1998</b>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/db7dec8f-a577-4a1d-8cdb-e2e35dae9de6",
            "display": "<i>Dalkey Archive Press</i>, Mella Trust fund celiac +1 venmo retro yolo franzen."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/aae81fc9-20b9-4940-8464-a941c561e453",
            "display": "Shoemaker & Hoard Publishers, Lintilla Tattooed blog normcore tacos mlkshk."
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a48af4ca-dafc-4c06-bd13-6f76018de887",
            "display": "<i>Nauka</i>, Genghis Khan Quinoa tousled lo-fi echo organic goth fingerstache selfies."
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1ebcc7ee-a05a-4aa3-8d0b-72f37f75c32c",
            "display": "Keenan Carter, <i>His Dark Materials</i>, Bowes & Bowes"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/975529f0-291d-481b-8b89-d4da9c4a4a06",
            "display": "<b>The Skull Beneath the Skin</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/0ed29a14-8edd-4983-bf1f-25b10f880f13",
            "display": "<b>A Time to Kill</b>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/68bc24ea-ad3a-4d87-963b-cc953ffc1a23",
            "display": "<b><i>Beyond the Mexique Bay</i></b>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/41184b41-5b87-4ce3-9230-1a96f54b01c2",
      "date": "1964-06-16T00:00:00.000-04:00",
      "label": "16 June 1964 - Senger, Donnell",
      "recipients": [
        "Senger, Donnell"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/26de4ed6-4c4a-41de-aa50-81e1d13db8ec",
            "display": "<strong>radio_broadcast</strong> <i>Oldeuboi</i>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8b2a5f02-2ffa-420d-8add-548ea21428ac",
            "display": "<strong>radio_broadcast</strong> <i>Bicycle Thieves</i>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/467f04f3-348e-4699-8661-8b8924d285f8",
            "display": "Arthur Dent, <i>I Wish U Heaven</i> [Kenya Michaels]"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e1b73607-ce53-428b-a096-ed1eff786714",
            "display": "Lou Reichel, <i>No Longer at Ease</i>, ECW Press"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/69d87d99-f8d2-4940-a286-cf769991d8b6",
            "display": "Prof. Dwayne Okuneva, Time To Murder And Create, HMSO"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5a263d3d-717e-479b-92ea-3cdedaf38db1",
            "display": "Phouchg, <i>Anotherloverholenyohead</i>, Keytar <i>wes anderson chia master 90's tumblr neutra</i> pug."
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
          "doc_count": 1
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 5
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 7
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
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
          "key": "The Olson Academy",
          "doc_count": 17
        },
        {
          "key": "Eastern Hansen",
          "doc_count": 13
        },
        {
          "key": "South Arkansas Academy",
          "doc_count": 11
        },
        {
          "key": "The Tennessee Institute",
          "doc_count": 10
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
          "doc_count": 13
        },
        {
          "key": "french",
          "doc_count": 7
        },
        {
          "key": "italian",
          "doc_count": 7
        },
        {
          "key": "german",
          "doc_count": 3
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
