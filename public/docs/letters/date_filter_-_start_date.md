# Letters API

## Date filter - start_date

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

<pre>GET /letters?start_date=1963-05-26</pre>

#### Query Parameters

<pre>start_date: 1963-05-26</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1963-05-26&gt;; rel=&#39;self&#39;
X-Total-Count: 13
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c0de33e8114ac03ba92285f25e760c3f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 14d3408b-80f2-4327-87b8-9e5353815d9f
X-Runtime: 3.539200
Vary: Origin
Content-Length: 27314</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/cbde8e21-8d37-47a2-ad24-713981689373.json",
      "date": "1963-05-26T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/515f3692-85fc-4936-af37-eb7ef313ee4e.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1918-1975). Yr health disrupt echo gluten-free.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9daa5552-7c4a-4a00-ab36-ea74cae9e650.json",
          "type": "place",
          "label": "Fenchurch Street railway station",
          "description": "<span>Fenchurch Street railway station.</span>"
        }
      ],
      "mentions": {
        "productions": [
          {
            "id": "http://example.org/entities/32add2b1-6e5d-4c7c-a702-6c973854a853.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/c42a9579-a70a-44cc-a480-17655a9469a2.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/1db23ffd-3c74-45cc-8202-dc1562cb1b30.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/bd74502f-2791-45e1-a2e0-89b1ab7ff49a.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/1ed1f433-d0f7-4e29-a9d9-341e80e5fb45.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/053abcae-baf4-479c-9a1e-76a266a9e423.json",
      "date": "1963-08-23T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/d0b96fa2-3458-40bb-990f-fda02a797b3f.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1907-1975). Hashtag flannel flexitarian fashion axe shoreditch yuccie bitters.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/87ae41d3-3937-4bdf-99c8-e3098e51e758.json",
          "type": "place",
          "label": "Ysllodins",
          "description": "<span>Ysllodins.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/afef0a5e-de24-4011-b6a8-53c5853817e2.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/37c84e1d-5c9b-4d90-a7cc-e8530ec8e00d.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Mustache pork belly 90's slow-carb banjo.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/d016b9b1-d77b-4f78-abc6-d18127b33918.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/4a2ae430-5331-4545-a62b-35b9bcda9c74.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/61897ca8-dfe7-48cd-8a99-bbb22cd9c17b.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/d1b978cf-cd37-40f0-b441-816a1335be46.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/15d5cd47-4c7a-46cd-b905-d668fac82fc8.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Pour-over fingerstache post-ironic truffaut craft beer roof.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2e5c8fd0-07db-4ee4-ba92-3eadd2130ffb.json",
      "date": "1963-09-28T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/2cef1b34-d618-454e-89c7-58d9f84117a8.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1927-1981). Irony asymmetrical gluten-free +1 single-origin coffee tacos.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/79318be7-d240-4431-88ec-35386ae7f55c.json",
          "type": "place",
          "label": "Denmark",
          "description": "<span>Denmark.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/b4885845-9501-44b0-bff8-1ef6e1c9761d.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9624d784-8ec2-4234-98c4-d1ecc7b0bef1.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Wolf loko sustainable seitan aesthetic hammock vice microdosing.</span>"
          },
          {
            "id": "http://example.org/entities/2e3c313c-55b5-440c-b040-ffacff8ac5d0.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Hella meggings godard shoreditch lomo gastropub biodiesel pork belly mumblecore.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/9d1357c4-fbe4-4315-bb0b-3dc07bbc9024.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/f3a094ec-c97a-48fd-83ba-a45022d284f9.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d514131a-5388-4300-b4d9-0ae932dbe094.json",
      "date": "1963-12-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/56d4b3c6-b90b-4211-bd69-fe15517b9ac4.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1921-1984). Flexitarian cardigan gluten-free readymade dreamcatcher.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e98ca318-37bd-4df6-b3f8-76316c4f84d8.json",
          "type": "place",
          "label": "Belgium",
          "description": "<span>Belgium.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/b7d3bebc-3c65-49e6-b8f5-3ea18bd8c486.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/e4cd152b-ec84-4b52-9f6d-30f6ead40918.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/6747f4f8-d8b8-482e-b5de-65eaa7e499ab.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/e9857327-b221-42c4-8df3-aa21be9d9090.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/bf8340ba-fcdb-4edb-a109-b1d4cfb6f645.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/6cf5adc7-f37a-44b8-8239-ee60e075e4a6.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/91e4864e-49af-47c0-81d0-a5f407e01eb8.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Cold-pressed ramps messenger bag next level mlkshk pitchfork banh mi xoxo scenester.</span>"
          },
          {
            "id": "http://example.org/entities/5e1d7b2d-e9e7-4a3b-a2db-c5db7190baee.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Pour-over cornhole gastropub tousled mlkshk wolf schlitz.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/80b46368-e777-44ba-9fca-3fc14e929210.json",
      "date": "1964-04-02T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/352dff2e-4f46-4816-8eba-4ccc08ea3032.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1903-1971). Kombucha mustache authentic selvage banjo 90's health food truck lomo.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a6308a8f-908e-4af5-a078-af2fd55abb56.json",
          "type": "place",
          "label": "Han Dold City",
          "description": "<span>Han Dold City.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/b9b40f43-169f-4df0-9535-c6496d87515e.json",
            "type": "organization",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/c4f5ced0-be75-4f94-843a-fc2979ac7daf.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/92a544b1-2df2-46b2-bba4-f535defd3d9a.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/2abcfc82-dad3-4efa-ae80-68dd8f31fa58.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/aa48aed3-5b69-40c1-9fa0-7414dd127868.json",
      "date": "1964-08-22T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ebeddf4b-2282-4635-840c-295988244b89.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1925-1974). Banh mi hella blue bottle lo-fi vinegar deep v banjo trust fund venmo.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/85a0b511-c70b-43c3-9765-a863b981e1b2.json",
          "type": "place",
          "label": "Guildford",
          "description": "<span>Guildford.</span>"
        }
      ],
      "mentions": {
        "public_events": [
          {
            "id": "http://example.org/entities/c1f45fe7-5889-47df-8a7a-b104bc5d11d5.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/f9809be5-8566-4028-aa4f-43ea8a5f5a54.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/ddf1e390-f9a5-4fb1-8567-00511b555f66.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Meh tattooed put a bird on it gentrify photo booth.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/fc042186-5d9e-4767-b401-4e8ff6112d1d.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fdb09c34-6501-4a0e-8633-431be1096ff6.json",
      "date": "1964-08-28T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/3f5325cf-ba27-42e9-b26a-76050764d40a.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1915-1984). Quinoa dreamcatcher mixtape next level yr chicharrones loko beard health.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/77137bfe-5f48-4671-b2db-b9e8b2c5c5d5.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/3cf5faba-b275-4c51-904c-66eb9b505f7f.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Food truck cardigan lumbersexual craft beer hella shabby chic.</span>"
          },
          {
            "id": "http://example.org/entities/3d9c2e51-deee-4337-b144-119d76569edf.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Seitan try-hard yolo sriracha cray mixtape pour-over.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/da21f5bf-558c-4c53-ad59-f8bc5abecd4e.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/cba847ad-dcd1-47cf-aad8-088f243bfef4.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/acad5001-19d7-4ea0-a01e-b5e8cb07e713.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/39bca17d-ea59-4e29-8d9f-ec26e21f51fe.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/f6e3e72a-3a87-4340-b75a-54072bd0fe32.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/743109c7-74c9-452c-8305-bef7bad955a9.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/704986f6-cf6d-4d5c-87a4-ca08817f40f6.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/4bab17f2-60fe-4a8f-9519-76d0e8b62828.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/54af18ac-3b4c-4b58-a3c8-671ff9e09721.json",
      "date": "1965-02-07T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/36d7a6bd-c0cb-4998-8f1c-be900794cda4.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1915-1976). Distillery letterpress shoreditch iphone wolf.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a4a826fb-08cd-4432-950a-296285847894.json",
          "type": "place",
          "label": "Ibiza",
          "description": "<span>Ibiza.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/91ed1100-b168-423a-ae5f-ca7cb562e960.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/c1ae9209-8a94-4bdf-9d8f-029de238795c.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/38c45589-bb85-4a90-a2eb-fbef8909ee0f.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Fingerstache brunch try-hard typewriter keytar swag cornhole flannel.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/6477abc8-335f-4ff8-b5e1-cedccd1a2562.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/ade2694b-8ccb-4ba6-8d5b-61e7e4d537a2.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/518a517f-68e8-45d7-8f15-94dac99a0f63.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/c54377d0-25da-47c7-a282-cc544713cced.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/c729cc6d-a247-495c-a730-bcec3b177d9c.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/14c9dc83-cf4e-45c9-bb9c-2d3e54863369.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8e783c32-c4ce-4cd4-b30e-90b7fbb447df.json",
      "date": "1965-04-17T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/83515d85-e618-44a4-8feb-a6d6702f81ac.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1916-1976). Chartreuse loko brooklyn slow-carb hashtag master.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c93bd93e-d706-4872-9660-f3dc4dbc19d7.json",
          "type": "place",
          "label": "Bournemouth",
          "description": "<span>Bournemouth.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/c631b631-3876-4273-b473-621afc0c9aa5.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/cc54970c-96bb-4bf5-8eb9-839ac424fa04.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Beard cliche master before they sold out viral schlitz.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/91d16c7f-a4a8-41b8-9300-1b3a1d65b9d4.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/90cd35c7-e22c-4880-9901-cdd1d00e86c8.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/5ab3b976-c90c-4b6a-8c42-cea1202002ad.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/066f3fa9-04eb-4016-92fc-a8afc099a1f9.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Meh gluten-free next level tattooed cred post-ironic tote bag.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/768b34f7-cf69-461c-a873-efdc2d9e313d.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0049a9e4-924e-4151-8237-9aed11602285.json",
      "date": "1965-05-23T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ac000aa0-c73f-4ded-8a58-671d9bc0e8f4.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1908-1989). Lomo cray plaid portland.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/5870d38e-1792-459e-ba8b-c99ce85abcca.json",
          "type": "place",
          "label": "Islington",
          "description": "<span>Islington.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3e6dc46d-2512-46b7-bd09-f54d343b6b0a.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/8aa78252-12ed-452b-aad2-5f067b6e6f07.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Cornhole migas meditation 3 wolf moon irony mustache taxidermy authentic.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/74d7d24a-0319-4bdf-8d88-a994ffc7a155.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/86bba606-5b3c-4c15-9ad7-6f0d8377a5b3.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/b97da221-86ae-4767-9c5c-a8c45e2cf448.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/fdb34eff-89ab-4939-920f-2be29ad9b700.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/80a54fc3-de51-4133-8c31-916f881e11db.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/b060e8a8-e541-4748-83ff-92b07a7dcb7a.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/a770071b-7bdb-418f-b299-fd148e1e4785.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Drinking park lomo marfa.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/25b08cb6-271b-4b34-953b-6d23cb7b3338.json",
            "type": "writing",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/67506bf2-0f45-4e74-84c3-688c33521599.json",
            "type": "writing",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/79cb9ba2-2c73-41f1-b8d2-4e53c1a04427.json",
      "date": "1965-05-26T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/474a70f4-9cea-45c1-ad76-5bdfcc14131d.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1901-1996). Tacos tofu squid wolf deep v bitters diy tattooed kombucha.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/ec25c227-100d-4528-a98c-b32579ea72f8.json",
          "type": "place",
          "label": "Café Lou",
          "description": "<span>Café Lou.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/d190c425-605f-4beb-802e-cef7d923fb32.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/3b7fcbe6-4d75-42e3-9add-e722501f77cd.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/1c8c0d95-f966-425b-928b-5397d39eff0f.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Distillery migas synth keytar five dollar toast.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/a35dd9ad-089a-4df6-9c92-9ac30a95a9ea.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/b2bee4f6-f1d8-49ca-85c3-8df1b146bbe8.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/0fa55771-4c36-4c6a-be86-30c644afa2ed.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/aabf3651-c3ba-4e23-8bc1-646737ba12da.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/6202c053-f8b6-4968-bd10-ae37a477ace9.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/31deade8-8adf-4622-a6d8-3e34e848153b.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/d338bca1-9de3-43ed-b381-8883bbd553f6.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, 3 wolf moon gastropub craft beer narwhal leggings.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ef2679f5-4fd1-4656-ab7a-d60efe05d7c1.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ece30dfe-bfc7-4ed5-96af-4f9819bfeb33.json",
      "date": "1965-08-25T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4c4ab288-9cb5-4128-9dc5-a86b2b63ff9d.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1908-1987). Cronut vegan mumblecore knausgaard.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/64eccdde-caaa-4ee6-a84c-b909e220d158.json",
          "type": "place",
          "label": "Betelgeuse",
          "description": "<span>Betelgeuse.</span>"
        }
      ],
      "mentions": {
        "places": [
          {
            "id": "http://example.org/entities/01aebd8d-32d6-4b53-a7ef-719d94a70eb8.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/d722e92e-3e1e-4518-9186-09aae94fb323.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/4d9fa540-4ec9-4153-b6d5-64ea1f615c0b.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/3dfbd3ee-3a46-46cd-b6ff-36c38567e31c.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/aec24bae-7f55-492d-97fe-f26418573015.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/ab4794f7-7679-4065-9a76-857dcf7b734f.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7a2e59a7-af77-4328-9a29-6e298487099c.json",
      "date": "1965-08-27T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/17296dd1-2a11-46d1-9c9f-a4c9b97ef260.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1901-1994). Kinfolk bushwick chia flexitarian.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/7b588ecf-80c4-4e36-bc1a-13366adbbf69.json",
          "type": "place",
          "label": "Slim's Throat Emporium",
          "description": "<span>Slim's Throat Emporium.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/303cd4b3-d199-458a-bff5-05d3f729563b.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/8b2eba7e-c0a3-4918-858b-cc8071301a92.json",
            "type": "organization",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9bf73873-9131-436d-bbcc-f743daacc40d.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Fanny pack schlitz next level iphone fashion axe poutine.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/917519f8-cc58-4d73-8d33-2b27bc94879e.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 13,
      "buckets": [
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
          "doc_count": 6
        }
      ]
    },
    "repositories": {
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "South Will College",
          "doc_count": 8
        },
        {
          "key": "Southern Hessel",
          "doc_count": 8
        },
        {
          "key": "Padberg Academy",
          "doc_count": 7
        },
        {
          "key": "Western Spencer",
          "doc_count": 3
        }
      ]
    },
    "language": {
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 3
        },
        {
          "key": "italian",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 13,
    "links": {
      "self": "http://example.org/letters?page=1&start_date=1963-05-26"
    }
  }
}</pre>
