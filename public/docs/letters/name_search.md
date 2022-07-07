# Letters API

## Name search

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

<pre>GET /letters?recipients=Bunny+Lebowski%2CJesus+Quintana</pre>

#### Query Parameters

<pre>recipients: Bunny Lebowski,Jesus Quintana</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;recipients=Bunny+Lebowski%2CJesus+Quintana&gt;; rel=&#39;self&#39;
X-Total-Count: 10
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2e2f5bc7abd1c95a8737a7bef76658cc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 11dca63c-8578-4902-aae6-0aef3ac98f04
X-Runtime: 7.517202
Vary: Origin
Content-Length: 23806</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/cc2d6b21-feec-452c-aecf-40ed94d2612a.json",
      "date": "1958-03-03T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6d947834-312f-46f0-b823-abe8ffa715a0.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1903-1991). Offal pug kale chips cray fingerstache paleo art party waistcoat irony.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/86f9947e-54e5-49d6-8fa3-d52f8bc4e5ae.json",
          "type": "place",
          "label": "Bistro Illegal",
          "description": "<span>Bistro Illegal.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/5cdd7300-b873-4fa4-806c-61b16fc59fbd.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/018c8569-449b-496e-bc65-1a8ff90ce8ff.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/44927575-9425-487b-b3ff-8c509c9d7afa.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/e8729f41-074c-4f89-a981-a1f09526b3fc.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/df2d11fe-ceaf-4191-92f3-fdd0381dddd5.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/f7e1ac9c-b8c7-4f70-b0e0-6bd34c8de3f3.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/3e69b836-6e1b-4bd5-8faf-f5158f310567.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/919cdf0a-cbfb-4764-9f99-fc744727795a.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/eebe153e-7f96-402d-b46e-eebbf2dac11b.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/654caf4d-348f-4545-8d12-4e59194f0206.json",
      "date": "1958-03-22T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/29ac4631-d831-4bff-b3c1-c160358cc59f.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1924-1990). Blue bottle kickstarter fingerstache beard celiac poutine dreamcatcher.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3514bc61-92ea-4a30-affe-b99a691540b5.json",
          "type": "place",
          "label": "Fenchurch Street railway station",
          "description": "<span>Fenchurch Street railway station.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3a4ce5c8-3fa5-4fc5-b916-0bf4173ee9c9.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/dde08945-3c4d-4835-88c1-d2a2a6e5bf99.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/5933b13d-8eb1-49b6-b6d2-29f6bd95e1b0.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/c83eb597-efa9-452f-8f6b-0d4a4e2f9a79.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/c81e6917-71c4-4d51-a180-9ebadaf2040a.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/3932bf91-a9ea-46c4-baeb-391edb1e641b.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/133dde27-ef34-491d-9afa-ffd75a6185ac.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/34b86f51-233b-4a68-8dad-bb3b9b719992.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/6706870d-5185-4e90-b20c-925c3a5d88cc.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Plaid yuccie muggle magic direct trade.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/24f5baef-3891-4c06-ba15-e62f1fbd7455.json",
      "date": "1959-02-12T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/7f98de56-34dd-4e1e-895c-a783ab40938e.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1904-1994). Pop-up thundercats dreamcatcher wayfarers tacos messenger bag.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3b65908d-59c4-4c74-8e65-6c8c68434287.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/be1e72b8-7092-487e-bcb3-4ca4c5e24c68.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/edea8f41-864f-4579-a165-8013be094f0d.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Five dollar toast pug whatever wayfarers sartorial keffiyeh locavore brooklyn.</span>"
          },
          {
            "id": "http://example.org/entities/87252227-cbd4-4513-bb53-73899ff1c9dd.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Kitsch phlogiston tacos vegan blog brunch.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/c6fa4ffd-4263-42a0-8de6-cd1f6b07b54e.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/bcd2392f-6f78-46e7-934f-e842eba36602.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fc715160-f456-44d0-b5e9-1262cd72abc1.json",
      "date": "1959-04-08T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6369a996-b776-49e0-ace5-7d6487b483ab.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1912-1974). Skateboard keytar hoodie pork belly umami kombucha crucifix forage hashtag.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/440e9449-1a90-4956-bfe1-03c1a0d699e9.json",
          "type": "place",
          "label": "Space",
          "description": "<span>Space.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/c7dfab22-3bf7-4e04-9c1e-69b778f1d679.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/776f8cfb-b2c3-4a6d-9e76-ee5900faa081.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/30cf3a0e-506e-42e9-beb4-d672eea43c11.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/0449d2a9-2f64-4036-9829-d697d931f342.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. You probably haven't heard of them skateboard schlitz jean shorts cray loko banh mi +1.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/4f9470b6-9808-4ddb-9a56-7b48f507c678.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/b5555c0d-7cfe-4fb9-85ca-0ca2a4c289fc.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/1178b4fe-afa7-4ce5-a7ee-28d88838f4dc.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1b3223a3-d7d4-4cff-ac48-c2c54bc65350.json",
      "date": "1960-10-03T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/b24a9c07-6b18-4786-9b3c-74112404d065.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1913-1998). Master next level bushwick yuccie street skateboard knausgaard aesthetic ugh.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/48aa4eaa-bda3-4727-ac30-ad85a426f2f6.json",
          "type": "place",
          "label": "Cathedral of Chalesm",
          "description": "<span>Cathedral of Chalesm.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/afd4d775-b664-40b1-b5e1-f5994b9c0014.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Selfies loko muggle magic hoodie pop-up freegan.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/eda59797-d9d4-47aa-a095-425f94e80d53.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/bee49558-7f65-4f27-b994-54038578259f.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/bafbede6-12d3-47f6-8a61-ced2773574b9.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/3d44eaa5-489c-49cf-b83b-4dc7ab9ceca8.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/a57ece8f-2596-4aed-bdb8-778a9c41da29.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/a9fae077-1caf-4ad7-bd43-106bcab1206a.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/9db24ae3-0e89-474e-bc45-dbf9e0240d88.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Put a bird on it knausgaard lo-fi squid.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/e4ac1287-6c49-405d-bddf-e266b7dce1b4.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/eebc32c0-6e4e-4d93-92cf-1309b4dcbf5e.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3c2a32e3-8133-458d-b89e-1601dfda52f6.json",
      "date": "1961-06-18T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/77ef3a6b-aa48-4184-b519-dd1355a610a1.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1925-1974). Flannel roof pabst twee echo post-ironic meditation.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9871e245-99c2-4e75-be0a-45df29dc21ba.json",
          "type": "place",
          "label": "Islington",
          "description": "<span>Islington.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3b820472-3c31-4514-acb1-d747bde0f6e9.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/50bf7687-fe2f-4d9e-ba15-43d08c1bed83.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Drinking next level biodiesel cray wayfarers waistcoat.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/71de4526-8470-45f8-b321-e4fb43dcd047.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/fbc890a5-0705-4e2b-8ce5-4d0da3c59545.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/236cfb35-ddff-46e1-a395-3bd9fbc08061.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/c36fd4b9-9cda-4768-88ea-301cdabfc359.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a728e8f7-33c0-4365-8a33-137b03f8020c.json",
      "date": "1962-02-10T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a19e890b-8083-40ff-992b-0901cf42e9cc.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1907-1981). Single-origin coffee messenger bag pinterest meditation yr umami pbr&b.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/d05d01b6-0bc9-4b46-acf3-51efbb047440.json",
          "type": "place",
          "label": "29 Arlington Avenue",
          "description": "<span>29 Arlington Avenue.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/a894ff20-69eb-4bd9-8abb-cddcb6f2e5fb.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/79109e76-e1a4-4d5c-a541-dec6ca98a294.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/6b65ec38-a333-4874-9368-21b7e00da1e3.json",
            "type": "organization",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/4e0bfd47-7e2b-48cb-b22a-e081f9f9a8fe.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Poutine brooklyn selvage wes anderson blog ugh retro.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/85d734b7-e8d3-408a-9957-f6f1db068ebc.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/c27571b5-b91d-469a-aca1-ea9450bec494.json",
            "type": "reading",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/a02a2171-25c4-4ed7-8a63-b64c48d85181.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/6f357ffa-c043-4c29-9995-db247a265155.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Vinyl venmo post-ironic asymmetrical.</span>"
          },
          {
            "id": "http://example.org/entities/60edb3aa-179a-4bd2-a04f-41141f595369.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Pug chambray austin williamsburg ugh tousled.</span>"
          },
          {
            "id": "http://example.org/entities/8e8988d9-d240-469a-bae9-586c7e01fccc.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Health tilde iphone disrupt chillwave taxidermy.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/76bacb03-46eb-41e3-921a-537962f88190.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4b672c36-78f8-448d-9623-8d055d81086b.json",
      "date": "1962-08-12T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/dc653d0a-fe38-44ce-b5d8-8f12d279b50e.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1928-1984). Kitsch fashion axe polaroid stumptown hashtag tofu cray hammock etsy.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9ec212ff-c250-4585-b5f7-17615577a8a1.json",
          "type": "place",
          "label": "Guildford",
          "description": "<span>Guildford.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/4cf6296b-b653-4c12-a67a-9e61a0a33cbe.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/2c551ae1-af34-4990-b306-7bb3f607fe24.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/d8994bff-2cd3-4e53-b3f1-95e2b95ad52f.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/69e7b6b9-741c-4eb7-b473-db3f2bab1a09.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/6a99f831-96b4-49cb-a6bd-5d2aba42d49e.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a24cbdc1-876b-455b-85ef-e8d50d252208.json",
      "date": "1963-10-23T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/0aece1fe-1490-4390-a8ba-36fe699cce00.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1918-1971). Tousled plaid poutine everyday tilde locavore.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3714470d-5a8f-4a33-ac72-f4b83350969d.json",
          "type": "place",
          "label": "Highgate Cemetery",
          "description": "<span>Highgate Cemetery.</span>"
        }
      ],
      "mentions": {
        "places": [
          {
            "id": "http://example.org/entities/4db309b7-27bd-4021-bda6-920b8b1a5b58.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/557c3b1a-92aa-4c0f-9fdc-59e25bab5264.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/3271820c-6799-4685-aafa-0a219ecc4b3d.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/bb84e8ea-2921-4b76-a169-09cbf6dc7b13.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/b3b12215-a329-423e-8408-2ca0ddda13c8.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/0bcccea9-b2c8-4a75-b36c-a3924e4d44d9.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/b1caef55-b3bc-4283-b277-2afbf9c4d585.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/388b626b-0284-448d-90f5-5e88e77e7498.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/a99601a2-5635-4f9f-8ac8-33bc88ba47b1.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/cb61794d-3e12-42bc-85e5-edec2eb2d89d.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4ca726ff-03bf-416a-837e-7a72b60cf030.json",
      "date": "1964-04-23T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a40cea7f-7096-4bc8-b793-8b5dda2a88a0.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1910-1972). Loko jean shorts godard microdosing locavore diy vinyl polaroid.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9ca5df90-ba0b-4c38-b1f4-1a933a4791a0.json",
          "type": "place",
          "label": "Frogstar World B",
          "description": "<span>Frogstar World B.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/639a7266-8893-487a-a71c-083547bae888.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/4a82480a-c878-4f82-981f-12a41f31e12a.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/0e0ba346-0d7d-4c7b-95ed-fac391beba8e.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/b7572df6-61df-4526-a7d2-18ed4432413d.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/da179f8f-d804-4adf-a46d-4d4d1b651535.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/115a0bc8-65c7-4926-88b5-d12123a04cbc.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/14db7fe0-5ab6-4315-9eb3-df35937b8054.json",
            "type": "reading",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/cffd477d-862c-4032-8f7f-77e7b4f57921.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/1d9e978c-8059-453c-9561-c191dc200cd1.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/41dd3ea8-8dab-4734-843f-327bba6e498d.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 10,
      "buckets": [
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
          "doc_count": 1
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
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 10,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Collins Institute",
          "doc_count": 8
        },
        {
          "key": "Northern Arkansas Academy",
          "doc_count": 7
        },
        {
          "key": "Medhurst University",
          "doc_count": 4
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 10,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 5
        },
        {
          "key": "italian",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 10,
    "links": {
      "self": "http://example.org/letters?page=1&recipients=Bunny+Lebowski%2CJesus+Quintana"
    }
  }
}</pre>
