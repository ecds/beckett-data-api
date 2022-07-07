# Letters API

## All Letters

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| q | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients,mentions,destinations,origins,repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | nil
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | nil
| recipients | Comma seperated list of recipient labels | false | nil
| destinations | Comma seperated list of destination labels | false | nil
| origins | Comma seperated list of origin labels | false | nil
| senders | Comma seperated list of sender labels | false | nil
| repositories | Comma seperated list of repository labels | false | nil
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | nil

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
X-Total-Count: 50
Content-Type: application/json; charset=utf-8
ETag: W/&quot;813d8a60f0000abd83018ef4d8b949ed&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: de10c295-42ab-41a5-929a-1ed35a52839b
X-Runtime: 15.457453
Vary: Origin
Content-Length: 55952</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/42b18157-2f66-4fa8-841a-a56388d52f21.json",
      "date": "1957-01-25T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4f9dc6b7-aae8-4649-93f3-e020586d4111.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1919-1987). Biodiesel single-origin coffee goth etsy church-key distillery vice beard.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f4af8d26-656e-48ce-8c8e-8a76a1dadebe.json",
          "type": "place",
          "label": "Horse and Groom",
          "description": "<span>Horse and Groom.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/03aa961c-f016-4e3b-bca4-6d2754ac20df.json",
            "type": "music",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/2a016847-bc86-44d6-982e-b4355379cf2b.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Ethical lo-fi yr church-key gastropub.</span>"
          },
          {
            "id": "http://example.org/entities/94af9e0c-88db-42cc-81dc-1f5f607c9199.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. You probably haven't heard of them hella brunch stumptown sartorial organic kogi 3 wolf moon before they sold out.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ed04afff-9d14-4c5f-9f6b-f5c5d392e0bb.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/e37697c4-968e-4dfb-809c-a3bc0cafe140.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/902d50f3-7d34-4789-ad09-fd6572cedf3e.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/845a672d-ac17-45c7-9d24-0a964c47257f.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/1e9a29b0-1e64-4fab-9dfe-6c4dd4c591a2.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/cae465a0-0264-4cd1-b481-3f2bd697842a.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Raw denim flexitarian 8-bit tumblr chambray pbr&b salvia lomo everyday.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cffba861-0870-4ba1-810b-f0f906dd81fa.json",
      "date": "1957-05-19T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c07e6931-b4b5-4534-8a46-66a54e0568a8.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1926-1987). Blog meditation hella heirloom neutra fixie.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/89e1dcde-5cf8-4249-bce0-96989daae741.json",
          "type": "place",
          "label": "Oglaroon",
          "description": "<span>Oglaroon.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/c458d757-b0e6-49a8-9820-b04b1cdff7a3.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/21df8535-0676-473f-9d84-70cbdbb66c62.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/0525b5f5-26b1-47b8-9590-426b3fdb1919.json",
            "type": "organization",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/90fe35a5-a3b0-4f33-926f-dd3be5756363.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Raw denim 90's cliche poutine pitchfork.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/81690067-6131-46a5-bf51-182926dbb529.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/a3a901fa-34d0-4642-9178-5d059fe6a710.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/08b195c0-87af-4ff3-8455-ac8f5a8a613c.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/cc75f823-8dbe-4415-9290-ca6905106609.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Five dollar toast vinyl migas tattooed hammock celiac photo booth aesthetic.</span>"
          },
          {
            "id": "http://example.org/entities/24c48ad4-d8d2-4ce0-969b-f15fb3b0e9eb.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Roof listicle hoodie green juice yr.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/35e793e1-3169-417e-80a6-475dd58aa198.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/876ecf1e-6bbd-44ef-898f-16f7ee2aea57.json",
      "date": "1957-06-25T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e3b59fa6-6879-4bac-86b0-f55b475051e4.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1920-1984). Meggings flannel intelligentsia semiotics ethical.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e504fe14-c6a1-4106-b9b6-af01b0c0a919.json",
          "type": "place",
          "label": "Cathedral of Chalesm",
          "description": "<span>Cathedral of Chalesm.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/04934d13-f007-4eb7-8e7c-c0897ec1fe07.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/81b53586-5c97-4838-875f-38fab3209439.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/8e157986-1118-4adb-aedd-329c64373aa9.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/6cf0df8a-061b-47d5-903e-097d82521b28.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/685ef0d6-bff3-4e79-975f-84485e9c073e.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/18bde417-a9cf-4e77-a229-e8884ac21151.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Hammock vinyl dreamcatcher pork belly.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2461554b-5935-460f-9e59-3d1408f16906.json",
      "date": "1957-07-04T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ca736af7-3748-4666-adc7-0ec9545e0b8a.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1920-1995). Ethical tofu freegan neutra hammock kale chips vice goth waistcoat.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/7f4dfe05-d5b8-44ee-8467-2d5be8145c59.json",
          "type": "place",
          "label": "Slim's Throat Emporium",
          "description": "<span>Slim's Throat Emporium.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/1ac3f548-4300-4c24-ab09-a1a4df6b8868.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/3e367d59-2dd9-49c7-9de7-ff25397bd079.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/47cd3223-73d9-48d4-955f-6b4dcbf73f0a.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Microdosing typewriter fingerstache echo.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/987bdca9-92ab-43e5-ba66-c9bb065dc620.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/a176c17b-c5cd-4b6c-9ffd-518e165c55c9.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/22dd562c-7e57-4f96-bb7b-cc28e5adee53.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/51250e70-2631-4ab1-aefc-d5365f9a3a32.json",
            "type": "publication",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/10ccff35-dae3-45f6-8231-c1f4f2269075.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/7cb07664-855a-41b1-be1c-cdb61e154ae2.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Vinegar pug plaid taxidermy ethical pork belly jean shorts art party.</span>"
          },
          {
            "id": "http://example.org/entities/b59cb58f-1811-4265-bb86-65893cbf0a11.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, 3 wolf moon hashtag shabby chic vhs.</span>"
          },
          {
            "id": "http://example.org/entities/14ec0d90-c1d0-4b47-b05c-b7a2977832cb.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Literally pug cray +1 viral kale chips austin.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7ea1afef-16f1-4df8-9c63-5b98a306d994.json",
      "date": "1957-10-03T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/93229a9f-6afb-4bb1-9972-ddc229bf948e.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1928-1986). Literally chartreuse street mlkshk irony.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/2a6ae39b-12f2-4d9f-b6ec-2e37cc0d2efb.json",
          "type": "place",
          "label": "Preliumtarn",
          "description": "<span>Preliumtarn.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/22fae523-93f8-408a-83a1-eae7b2eef9a7.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Fingerstache quinoa fashion axe pork belly mixtape five dollar toast bicycle rights skateboard.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/e70ea824-f6e3-4869-a7bb-2b4d28ed2cf0.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/1fc7f03b-bb25-4938-b825-d74f9fed50ae.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/a7d596fa-40ec-4ee0-8a1f-b95a9d51dd10.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/64064cb8-0527-44ad-9c99-6374a569cb1f.json",
            "type": "publication",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/169478f6-4310-450c-8925-63cb69646ddb.json",
      "date": "1957-10-31T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/bf0c3631-9367-4862-b102-350b317683fd.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1925-1972). Art party swag jean shorts cred.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/d44c378c-bbf7-4f65-80c7-dcdf3d7753cc.json",
          "type": "place",
          "label": "Horsehead Nebula",
          "description": "<span>Horsehead Nebula.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/8d0f728e-4c58-46cc-855f-a2a0e905794b.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/2334857e-1730-4bc7-9191-7a281f34c8bf.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/f0a5694c-ecd8-4f9c-a4c9-a44cf9fd7902.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Biodiesel pitchfork pbr&b roof chia goth pabst wayfarers.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/7c054303-2e07-45e4-9ae5-e83e4f65e748.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/55f5ed9b-cd1a-4fe9-8b99-c6b4396f0eae.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/c0969c46-8e20-4455-a6f0-7c630dead472.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Kickstarter tattooed 3 wolf moon yuccie meditation.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ce1fc323-c40e-4ea5-9533-706404da02d9.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/b46abd4d-adde-45e9-b89e-df28abddbcf9.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/cd0387bc-0311-42b7-bd2c-4897620476d7.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/27437ce8-b121-4f2b-a44c-b6b9a30840c9.json",
      "date": "1957-11-09T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/21035102-7ed0-4607-a3fe-8a39ae4a6e36.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1906-1986). Narwhal franzen pabst photo booth polaroid.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f3551cf7-55e6-4aca-936f-1afeb9cf22b5.json",
          "type": "place",
          "label": "Stavro Mueller Beta",
          "description": "<span>Stavro Mueller Beta.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/be2415ed-32fe-4eb2-8d0e-948bfbca98e1.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/b96217f5-5dc2-4cf8-beda-456081c2bd9a.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/57b125fc-dc12-47ee-94e7-98aca1cb0b83.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/ea6a9297-335b-4550-a32e-673517e61963.json",
            "type": "organization",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/e15d51e8-babe-46a1-a2da-b85743f42a39.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/f62a8a33-6ce5-4c3e-a1df-de6d315b097a.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/bb2878a7-d9c2-4c82-80b4-339854e3f9e1.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/8c40a18a-d07b-4ee0-9292-f0814438bc2c.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/052585b9-1a0b-4d61-a818-4f5c814c3d85.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/12da15ef-5eb0-48da-a60f-62486cede6f8.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Chia iphone waistcoat tilde tacos disrupt gastropub pork belly leggings.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fc4f9b5a-9657-4289-ab9e-63b75d02688b.json",
      "date": "1957-12-29T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/66497a24-e3cd-47a6-b91e-9bf52967f3ea.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1900-1984). Distillery humblebrag pug vinyl occupy whatever.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/abbadffd-f4a2-4ccc-9f35-23ba5cefd9bf.json",
          "type": "place",
          "label": "Slim's Throat Emporium",
          "description": "<span>Slim's Throat Emporium.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/8e7a69ce-8ab5-414b-a8bb-1e4b1f32ac57.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Everyday viral taxidermy yr narwhal etsy bespoke.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/8e326981-a3cf-439a-8206-e4cb9def93e9.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/47d58024-bb28-4578-bad6-906d6c1b19c5.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/ac12d4fd-ea6f-47b2-9a20-543753017c77.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/4178a8f8-cd78-4e2c-99b8-c012e31d0bba.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/a90068d5-9239-4fb6-9a59-5b1c49b0ecf3.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/92de4b28-767e-4da9-8e31-f1533c90fe77.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/140b3b7f-51af-4566-924e-9fffba61268e.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f4413863-dc12-41ed-87f9-cc1b1f7ed53f.json",
      "date": "1958-01-19T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/08ac2d74-0a20-4516-ab7d-ad747b254f90.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1904-1988). Viral chia chicharrones truffaut keffiyeh cliche skateboard actually blue bottle.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/ae37d50a-0911-451e-a149-bda14184844d.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "places": [
          {
            "id": "http://example.org/entities/c5b09d1c-6951-490e-8b28-a9c3ae9d8ccc.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/a428df69-7e0e-444f-81c3-9fb40aee9961.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/3b265b30-44d3-4041-848b-ba66a4e271f1.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/4dc155bc-9d6a-4150-8a04-cb95458999c5.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/bc9daef1-ed14-4af7-a4d3-e82ac323c840.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Readymade kitsch narwhal tacos seitan.</span>"
          },
          {
            "id": "http://example.org/entities/f17aeba7-62b2-4a97-9ea5-7d11bf68b1f5.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Tattooed mumblecore craft beer actually.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b83f210a-bd5c-4964-a572-7eb91eba7edd.json",
      "date": "1958-05-14T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/304b6ef6-b3eb-4db9-b4d2-23eba3a525f7.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1907-1992). Crucifix phlogiston locavore cold-pressed dreamcatcher readymade taxidermy narwhal.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/875162c8-af6f-4d09-9d54-570d04ec092c.json",
          "type": "place",
          "label": "Islington",
          "description": "<span>Islington.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/36203b91-db39-462b-96ef-36a135aee3c1.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/a11ca71e-0051-4eeb-9675-eea178c8ca75.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/988df977-3a29-48ec-9f7e-3a75dae3c71d.json",
            "type": "person",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski. Vegan leggings cleanse asymmetrical vinegar.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/914848b7-823c-436e-96e9-78a5cae4da9b.json",
            "type": "place",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/5acfcd90-3923-4062-a191-f8485104f52e.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/e260b443-9134-4a71-be96-315a69dc5d0c.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/245e0647-b9e4-4a04-a0c6-ed3bbcfa458b.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/5407793a-6c18-4675-866d-1d329cf6eace.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/8408b82f-2675-4e5b-989e-7c9d9223b44f.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/6ab1bc3d-a569-4f0d-807f-9129256d30f8.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/826941dc-a9eb-4e31-93bc-cd78e3d07ce6.json",
      "date": "1959-03-09T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5601ae2d-a1e2-4554-a97c-7c3ffa2992dc.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1910-1977). Lo-fi you probably haven't heard of them fingerstache dreamcatcher swag five dollar toast loko ethical.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/1e5551e3-8b6d-40d6-be74-7d0bce24ce3e.json",
          "type": "place",
          "label": "Xaxis",
          "description": "<span>Xaxis.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/edafb2c3-d454-4d4a-9246-9e7656b50443.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/b24cf316-1387-43fc-8d31-54da9740d82d.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/a2c1d5df-ba47-41ab-9021-1aaf51bb3405.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/f0eb25c9-95ea-4fc5-9e0c-0b4e7c7a952c.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/484ab66b-3a1e-4d67-bc66-94a4c0d14c08.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/36e631cd-f34c-4759-9209-73253f5ce456.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/7e783563-e5d0-4679-a390-bb96a6dadf15.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/46728941-ded9-4775-abc0-05d3fa4f564a.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/0f18c727-265a-4b3f-9f5a-718cdeb6d577.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Taxidermy bushwick poutine pitchfork 8-bit sriracha blue bottle.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/45e5eb5e-01ed-44fc-8448-682423d31509.json",
      "date": "1959-10-04T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/cb3cd99a-892a-4938-ad94-15a3a19fa384.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1902-1996). Blue bottle tumblr gluten-free pabst post-ironic phlogiston.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/29a85173-dd26-4825-9e46-84f75c75755b.json",
          "type": "place",
          "label": "Western Spiral Arm",
          "description": "<span>Western Spiral Arm.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/a9682a56-38a9-46d8-a2b7-2f75fc7e7a17.json",
            "type": "organization",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/8fc51178-3eed-42b4-9a64-d9f6ae1d32d9.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/71c9725c-40bf-42fb-b5fe-d757302888e3.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Migas brooklyn meditation pickled offal.</span>"
          },
          {
            "id": "http://example.org/entities/389a4f70-68da-4d54-9476-39f382edf0b4.json",
            "type": "person",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski. Stumptown swag asymmetrical readymade williamsburg hella yolo selfies.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/a860183c-6f2a-4505-8a02-cb3ef39b19ab.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/6a93c1d6-d49f-4039-8927-ca71bee8e8d4.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/b78b7108-b8e8-4607-85fb-393306c8c680.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/8d99c8eb-5043-4e3a-8300-97513943fff4.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Hoodie pabst gluten-free keytar.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/e0e072f3-0bb2-4b01-9289-7f8e897c31b3.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/2416108d-108c-4c12-9250-c453af3ed122.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ef74139e-d821-48b7-80b1-154102d836ab.json",
      "date": "1960-02-05T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/340f6ee8-b242-428a-93a0-fc9c1001edbd.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1914-1977). Skateboard hammock ugh knausgaard letterpress forage meggings mustache.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/ce400b61-22c0-495c-ac75-34da43cb916e.json",
          "type": "place",
          "label": "Han Dold City",
          "description": "<span>Han Dold City.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/dd4e721a-15b4-4144-aa30-742e5cc217ac.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/4c71b242-458f-43b7-a70e-7d27397e9398.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/a77ba7b9-d4a3-4083-be78-8aba8e410fd5.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/19651752-75d4-4176-aac1-b421df1f59ff.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/b19d8fc4-86bd-46ee-9e87-f2aca9fb66fa.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/7f1a8230-0ff8-46e5-b0d4-c04df8639227.json",
            "type": "writing",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/7072c6ed-9192-4c34-9388-f448bb82c099.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/c0eb90af-a517-4624-9cf3-59c663635b11.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7d27df2f-314d-4dd6-ba2d-36dff5f0c449.json",
      "date": "1960-08-06T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6ce052ec-6e7a-4c41-96ad-08a60292cdc5.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1925-1980). Listicle neutra ramps five dollar toast poutine pitchfork.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/bb95fd4a-4386-40d0-894c-a3342bea8eec.json",
          "type": "place",
          "label": "Pleiades system",
          "description": "<span>Pleiades system.</span>"
        }
      ],
      "mentions": {
        "publications": [
          {
            "id": "http://example.org/entities/964f15c1-e03f-4758-b30c-01a25c1075c2.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/7ef4020e-8dc4-4175-891b-ac73a70d8f16.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/a14f4a4e-173e-46f8-aa9a-cb0d7f1e608b.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/61d61d74-4c19-4522-ad5c-4099fefb2780.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fa65358c-228c-428d-b872-8c96ee516e72.json",
      "date": "1960-08-19T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6d67178a-742f-4105-9852-2855c27c3579.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1916-1984). Williamsburg godard plaid mumblecore retro biodiesel.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e1783bf1-6564-4377-ad43-4be5e5fee582.json",
          "type": "place",
          "label": "Frogstar World B",
          "description": "<span>Frogstar World B.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/4c46c77b-2cb5-4d60-9d32-8bb7bb81e980.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/fda1a45c-a8c9-46ce-87d5-de3cd9c2b6ba.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/7ded55dd-12e1-4abe-9f0f-cfa1afdb2438.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/d7b03889-27b1-4738-992f-df089e12d3f5.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/dd19c669-9f23-47f9-88e5-a82352bbedbd.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/8b3428f9-2cb9-4c8a-b40f-6cf01d2547df.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Pop-up lumbersexual kombucha 90's whatever.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/98b5b32d-1b0d-4360-acd5-dcaf92b0b96c.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/55ea148d-74d1-4303-b71b-0739a369de55.json",
      "date": "1960-08-24T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/747c4bbd-82b5-4fb2-805a-6ec929f55229.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1902-1983). Hella umami letterpress cleanse artisan five dollar toast messenger bag hashtag brunch.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3d2d938e-593b-410c-9b0c-95bf71d6cc5f.json",
          "type": "place",
          "label": "Slim's Throat Emporium",
          "description": "<span>Slim's Throat Emporium.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/a6ab8a9a-7c46-4f4f-b353-3f2fd777759a.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/9c4555ff-b2d4-41de-a8f6-41cad4978a7d.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/8269b8f0-fd19-4671-84b0-ec4e65dbcdc4.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Phlogiston drinking polaroid roof.</span>"
          },
          {
            "id": "http://example.org/entities/27e0a5e7-80b1-46df-8cd1-62ee0bbcaccd.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Pour-over quinoa humblebrag loko flexitarian bicycle rights.</span>"
          },
          {
            "id": "http://example.org/entities/9eda9c17-41f7-4d15-9a0f-57297605a747.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Brooklyn letterpress lomo five dollar toast.</span>"
          },
          {
            "id": "http://example.org/entities/489d63fd-e03e-40a7-a920-e6cac703b0e8.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Vice polaroid biodiesel pinterest church-key distillery.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/f5142b07-db25-4cc7-81a5-b84ab793ed05.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/48cbfdff-d15c-4141-995c-3aa0863a359c.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ed9a156e-6f5f-4958-9b4a-92b753152f8c.json",
      "date": "1960-11-10T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4342dff4-dc27-4a8f-8715-bffd32dbac84.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1927-1985). Locavore readymade cray craft beer franzen iphone godard.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/d57ff4da-f127-4a72-9555-4c9ca8481c4e.json",
          "type": "place",
          "label": "Madagascar",
          "description": "<span>Madagascar.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/1d446b61-1982-4b51-a4c4-5374be5830c4.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/6ae2b72c-8bc3-471b-923e-38d667ae225e.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/81ae2832-21e9-4800-ab66-7159e15a6870.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/a4976a1e-625e-4c2f-81ae-2139e5117470.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/9b606723-8e00-43d9-9dbd-6690dee64c17.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/3107b98a-01aa-4ae8-969e-73c53bfae1c4.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/5f680315-ab22-4410-8ff3-cbe27fdaec63.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/e804d94c-e650-4b67-954b-e6ae85843d0a.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Cronut lomo typewriter xoxo post-ironic iphone jean shorts chia mlkshk.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/c69b9e49-afe9-4b62-96d2-3d08c3a4d104.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/49ee76aa-41cd-4fe0-b2a6-b83c8ef1a107.json",
      "date": "1960-11-23T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/0e1a8957-18f3-4f04-89ca-57a2023f6561.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1910-1993). Art party wes anderson helvetica roof cornhole carry fanny pack gluten-free readymade.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3361cf9b-19c7-4ce3-8d4c-28406870aec8.json",
          "type": "place",
          "label": "Sector ZZ9 Plural Z Alpha",
          "description": "<span>Sector ZZ9 Plural Z Alpha.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3a31ab8a-14cb-4f1e-8ad1-7b0eb3711989.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/fcac2274-256b-4515-8ace-7ad76cb6e361.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/a9a58b22-76a8-4b76-9e19-1a4681b05ba0.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/bced7af4-31d4-43ec-a471-cc316354469f.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/eec40834-c512-4695-9b56-059a99df1b09.json",
      "date": "1961-01-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/35506dd5-e1f1-4c13-9e0d-eeb5e371b65c.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1908-1979). Celiac salvia poutine bushwick small batch hammock health actually art party.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/4c4e8f95-f3b4-4af9-a462-0c9d541e1f45.json",
          "type": "place",
          "label": "Bournemouth",
          "description": "<span>Bournemouth.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/2604a74b-dcad-487a-81c8-68f9169ec630.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/5ebcd7be-273d-4b2b-8fff-f2139856720b.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/5d6f3870-20c2-4459-884b-dc60a8c81219.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/0017f651-4bfb-4720-a55c-706200de0f1d.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/b60dd95b-d260-415a-98b8-e529ecc83a64.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/a740e066-392f-450d-b9da-5d630273b9f8.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/89854477-6e5a-4c15-aa59-bc9659d484e4.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/c4752f31-740c-48e6-a04b-a546de87d1b2.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/9174f2d0-33ce-4aaf-9a85-ef4a8d371593.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/a1cfc1d3-dc3e-40c1-8694-7e7d4da186c7.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Truffaut mlkshk banjo echo seitan diy 8-bit hoodie.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ba304236-06aa-459a-afde-d6ca3a82da6c.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/946f495e-88c5-4ace-99c6-eb3726e65cbd.json",
      "date": "1961-03-11T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/b4d087d0-ff62-4da1-a5c7-34bdfd6ab4ab.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1912-1971). Flexitarian tilde 3 wolf moon keytar quinoa leggings ethical art party.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/88b87af2-0d1d-46b1-a9d4-f35165367c56.json",
          "type": "place",
          "label": "Pleiades system",
          "description": "<span>Pleiades system.</span>"
        }
      ],
      "mentions": {
        "productions": [
          {
            "id": "http://example.org/entities/7760cd21-7d11-457e-9509-af9ca1e436c2.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/7b1bded5-5fca-4631-a648-cd7205d0bf1e.json",
            "type": "reading",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/19be5747-a164-477f-8f02-01af0c0d1744.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/c1fc8b41-3e34-4e97-bcd6-c9045bc1fe05.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Kale chips aesthetic franzen kickstarter street.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ca84ef64-43dc-49fa-8ab9-83feeb11a9f4.json",
      "date": "1961-03-17T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5969364f-40d9-4334-b8fc-b098a3010686.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1901-1987). Gentrify synth truffaut flannel knausgaard normcore fingerstache.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/189bded1-381a-4dbf-9795-b4e4d583e540.json",
          "type": "place",
          "label": "North West Ripple",
          "description": "<span>North West Ripple.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/30417e3b-c337-4b16-ae61-24033ba4589e.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/9be77346-5f44-40da-a271-79cb13e2c549.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/84c23b2c-0760-463d-ac54-7bfc47f0a0e2.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Sriracha quinoa slow-carb irony chartreuse meh cornhole.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/fc450ee0-6b3b-4802-9222-959ef6f82b72.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/0762c345-9e29-4d78-8bc4-9c762af53aac.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/5133cd27-0ab5-44eb-a27b-eefeef191c95.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b4594bbb-882c-4ccf-b0cd-1e76b4bd3d85.json",
      "date": "1961-04-04T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/b3836d59-0ccb-4c70-a742-9635de8c099e.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1904-1971). Humblebrag meditation photo booth messenger bag swag bushwick thundercats.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/038ff95f-eae8-44e4-a254-01a10782ee0d.json",
          "type": "place",
          "label": "North West Ripple",
          "description": "<span>North West Ripple.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/64453324-84f0-4d9a-a7f4-159b9a9707b4.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/0a00e219-a403-4045-8ae5-8a48d241b9f7.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/c1968e3d-fada-4f67-ad5a-d3bd6fb56f8f.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/b4fcea9f-d85b-4f26-ac02-625efa997c9f.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/5fc9584b-8377-4acf-9bb2-6c7b4e40db8f.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/042ff09f-2ed4-4a95-8dc4-9f11cbc5ea2b.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/13d6c617-1fb2-4567-9015-7e487b890886.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/6d803510-6ae8-42b2-b0d0-3c66b8457c21.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/70ae1f9e-6605-46ac-afc1-86d2da5037c4.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Photo booth selvage kale chips gluten-free asymmetrical before they sold out thundercats.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/cdb7c8b8-c9c7-435b-9600-43c987715d6b.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/09abb473-6c14-4446-9475-a22eb946ee02.json",
      "date": "1961-04-27T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/97225487-cd05-4494-a9c9-a380e966db1d.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1911-1985). Occupy mustache church-key tattooed chia jean shorts.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/82f8834b-4360-4303-91f6-5451cb1500d2.json",
          "type": "place",
          "label": "Stavromula Beta",
          "description": "<span>Stavromula Beta.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/4e10009a-aaae-4ec8-b2b6-9951aebd1d97.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/13b083bb-5ba3-4550-b773-6ab816ab7854.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/c7d7beb7-5188-4c0e-9a94-0de97550aac3.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Bespoke whatever cornhole typewriter.</span>"
          },
          {
            "id": "http://example.org/entities/9ffc8c29-2f76-4e93-95b3-627d301d8de0.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Tumblr kombucha slow-carb fixie mustache actually helvetica quinoa gluten-free.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/b961c3f6-ec11-44f2-a90a-471fd128df83.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/45ad71b1-2cbb-434c-9b9e-7d00e0aefd8d.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/c51d93a3-efb3-4916-b23a-4851bb0d092a.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/b8fe6a9d-6dfe-4965-8605-39b43c9b7af0.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7906cad9-ef71-43dc-b791-5d4ab2fbcc89.json",
      "date": "1961-05-15T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/7043c7fe-0056-4ca0-9901-c33b169a2ef7.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1906-1993). Artisan narwhal irony distillery normcore wes anderson meh.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/1fe72e28-556d-48bf-b64b-23a3c58ec0d2.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/c32fa71f-c32f-463c-a838-dcfb62f8af58.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/df8ae2ec-15af-45fa-9e3c-e4b46a6842a8.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/90995413-9a6f-4693-91c5-ad43e632e5ef.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/67dae309-9ce0-447e-9465-e1cba3a1c6b0.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/077642ea-d718-44f6-91fb-09afc50fa347.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0319b025-9c19-4425-8cc8-8220987d3522.json",
      "date": "1961-05-17T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/67c1287e-5824-4781-9954-c93471c0d05c.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1925-1972). Keffiyeh chicharrones carry health literally +1 pop-up.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/76daabff-82b6-4ce8-8c80-11bb08a37a96.json",
          "type": "place",
          "label": "Lamuella",
          "description": "<span>Lamuella.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/65025173-7dcd-4560-b0e9-9130f02de339.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/3cf70cf2-355e-46fa-bfca-b8b1e6aff409.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/0a0c1c36-d1d8-40d3-84e1-08dac3710eea.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/22e49bb3-bf1a-4359-a4bb-704ecdb69bd6.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/f3e63bb0-f72e-4a40-99be-79acbfd15485.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/9fdbf6bd-62f0-41cf-9d57-1583b835220c.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Roof cronut distillery taxidermy cardigan.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 50,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 8
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 6
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 11
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 6
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 7
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 50,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Vermont College",
          "doc_count": 23
        },
        {
          "key": "Ziemann College",
          "doc_count": 21
        },
        {
          "key": "North Illinois Academy",
          "doc_count": 20
        },
        {
          "key": "West Alabama University",
          "doc_count": 17
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 50,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 16
        },
        {
          "key": "german",
          "doc_count": 14
        },
        {
          "key": "french",
          "doc_count": 11
        },
        {
          "key": "english",
          "doc_count": 9
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 50,
    "links": {
      "self": "http://example.org/letters?page=1",
      "last": "http://example.org/letters?page=2",
      "next": "http://example.org/letters?page=2"
    }
  }
}</pre>
