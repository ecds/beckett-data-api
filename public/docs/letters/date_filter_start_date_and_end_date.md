# Letters API

## Date filter start_date and end_date

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

<pre>GET /letters?start_date=1958-10-28&amp;end_date=1964-04-11</pre>

#### Query Parameters

<pre>start_date: 1958-10-28
end_date: 1964-04-11</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1964-04-11&amp;page=1&amp;start_date=1958-10-28&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?end_date=1964-04-11&amp;page=2&amp;start_date=1958-10-28&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?end_date=1964-04-11&amp;page=2&amp;start_date=1958-10-28&gt;; rel=&#39;next&#39;
X-Total-Count: 33
Content-Type: application/json; charset=utf-8
ETag: W/&quot;3cd8a84bc68d7552072b0ab0f4f90478&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0c1e4088-5f6b-4947-be77-0bb4eef772fa
X-Runtime: 7.021552
Vary: Origin
Content-Length: 51870</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/bf3f2d7a-ec35-45f8-ae9b-c965d22c0f3a.json",
      "date": "1958-10-28T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/d3cd679f-b914-4851-8cb5-1d15b785dda3.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1927-1982). Fashion axe butcher paleo food truck disrupt pbr&b.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c67e52a0-b1fa-4dba-996f-89c12390a741.json",
          "type": "place",
          "label": "Seventh Galaxy of Light and Ingenuity",
          "description": "<span>Seventh Galaxy of Light and Ingenuity.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/a93d3131-1a1a-4230-afa9-9621e2be2bed.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/cfd3e57b-adf3-41ea-a647-271f4b920e35.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/a4b350e9-adeb-44f1-8f32-072357ce739b.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Yolo listicle kombucha slow-carb humblebrag.</span>"
          },
          {
            "id": "http://example.org/entities/8b1f1381-356d-4227-817e-431d221c2912.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Raw denim forage roof tousled keytar franzen aesthetic freegan.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/2fa66915-cc5a-49cb-ad00-95e4b5e4a89f.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/d97effac-b0fb-432c-8040-ea45bfa9c3d2.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fbec93a1-cbc7-4b5f-a723-bac82fe9f6fa.json",
      "date": "1958-11-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4182307a-c3d4-454d-8cc3-39c6c1912f7e.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1901-1992). Tousled diy church-key lo-fi organic before they sold out meditation thundercats.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/86532c30-29b7-46f4-9eea-93e6f8b05926.json",
          "type": "place",
          "label": "Zarss",
          "description": "<span>Zarss.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/73585990-2f79-4bda-822f-015b4ec40668.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/c065e227-4a5b-48e9-89a9-4a246bb9eb07.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/0e079f10-76c9-4c01-ace2-0c8c2c7039c5.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/370337c7-9826-4ddc-99f8-4799590acbef.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/eb50f9b0-f4af-49e1-9e9e-ba3650c01983.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/9fa1940b-a0ca-42ba-b1f5-3efb28526d6e.json",
            "type": "reading",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/41f4d6a6-d2eb-4719-86d0-af7f4f5f3802.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/5b24316c-bc7e-4fc6-b817-977068bf53f1.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Keytar tilde poutine cornhole cred.</span>"
          },
          {
            "id": "http://example.org/entities/17faee6c-dfaf-45dd-a5a2-ce713cff3c2d.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Cred vinyl iphone seitan gluten-free.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c54ed434-bc9b-46f6-a7d7-5bfd9eaa641f.json",
      "date": "1958-12-31T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/fb42cda9-096f-4c20-b95f-e46ab98e66da.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1929-1991). Gastropub literally aesthetic messenger bag.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/042c667c-5c90-4758-a9ed-38843e89bb5c.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/059d2e99-d9a8-4103-af83-95563c138ffe.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/feb0793f-25ab-4dd1-8749-974977984f9d.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/c5c06ac6-faac-4edd-94fe-fdb291353ea8.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/6f5b0075-3f41-4e30-ae2e-a8887162a333.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/b718e137-5ab5-469b-a1ec-c6d7e6715f6e.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Franzen tofu wes anderson shabby chic pabst pour-over kale chips green juice.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/34595940-cff2-4282-aed3-3502c80ad43d.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/761513bd-a925-44b7-9be5-338c277a3b8a.json",
      "date": "1959-01-02T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/04f90691-e384-409a-ba59-721a959c83ab.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1916-1995). Fingerstache leggings franzen yr master slow-carb truffaut tattooed.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/7480a1cf-c407-431f-af98-872b74e0da67.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/a8778671-8a96-490d-aa61-3233d62f805d.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Vegan microdosing forage yr godard umami.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/7186b357-e109-4b70-9caf-06d42f3125aa.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/95566239-442e-4ce5-85d7-10146bf8a26a.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/e1ba8606-4b73-44ed-b24a-96c6315592f8.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/20373fcf-1407-4f31-bec5-88331982519d.json",
      "date": "1959-03-19T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/18e7fd7e-a41f-4c2b-91ac-7d5967ee2b16.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1918-1993). Ennui thundercats blue bottle hella occupy cold-pressed mustache cliche wes anderson.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a7acf832-cf92-43d1-8cca-63834c4ff2de.json",
          "type": "place",
          "label": "Space",
          "description": "<span>Space.</span>"
        }
      ],
      "mentions": {
        "readings": [
          {
            "id": "http://example.org/entities/5693b888-0f8e-4a73-8d1a-7d436c6ae5f5.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/3bc0ed01-4f74-47de-acb1-0037e1355a36.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Franzen venmo organic pour-over chambray sartorial actually.</span>"
          },
          {
            "id": "http://example.org/entities/b42950e3-cc6e-40ef-bba7-72b0e75a1025.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Banjo schlitz asymmetrical put a bird on it forage selvage post-ironic.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/c13b7b2c-2009-42fd-a6a9-d9dc81aaf75d.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2de0633f-3883-4bb4-8796-d0b03ae83ee2.json",
      "date": "1959-05-07T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/25887a62-e5b7-4c50-b9c1-38be80f90959.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1919-1993). Slow-carb waistcoat tattooed post-ironic intelligentsia cronut butcher offal.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/09c302ed-3cec-43dd-be42-96332c089f8d.json",
          "type": "place",
          "label": "Barnard's Star",
          "description": "<span>Barnard's Star.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/148fd6f4-a7f4-46f1-b0ec-678d4fde2500.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/bff23406-ccbc-4d1b-b21e-18c73f3ce9dd.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/4195b9e8-ac01-4edf-933f-043a9df00a48.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/8a6bae0e-29cc-4477-950a-dcd81721b9d9.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/98310715-184f-4319-af93-c7278ffee93f.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/11660b69-3247-4270-aa4b-f0d4ab01e380.json",
      "date": "1959-06-03T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/8ead9478-7d6f-4703-9f59-0bc7321e05bf.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1918-1985). Carry plaid park biodiesel post-ironic neutra +1 salvia.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/36010e18-3a80-4055-acf8-72da0b1d3ec9.json",
          "type": "place",
          "label": "Norway",
          "description": "<span>Norway.</span>"
        }
      ],
      "mentions": {
        "public_events": [
          {
            "id": "http://example.org/entities/0716bb3f-5e90-4deb-a9fc-449d952b9695.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/5d1103fb-b7d7-4c02-817e-f19664d14603.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/e0293455-ed5d-48db-94da-2fb009d2cfb6.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/fd87f009-f020-4317-8094-619dd20146be.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d3013a53-e46d-49c9-bdb0-6078f21242e8.json",
      "date": "1959-10-08T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/1f192150-589d-4ea5-b535-d506179e54a0.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1909-1995). Godard loko locavore fanny pack gastropub chicharrones mustache.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c10ed218-f8b8-43bf-b4a0-84685564cdf0.json",
          "type": "place",
          "label": "Total Perspective Vortex",
          "description": "<span>Total Perspective Vortex.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/ced636ca-949d-48dd-9e9e-7d0c60d4e25e.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/8bb8b585-465d-4684-bf51-377c01bb6ac3.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/3b1dcd8f-0164-4167-b7d2-30e3ab2a2e60.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/53e81955-165e-42e5-b23f-7c56f38c5b74.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/1a19f908-07a0-4924-a3d4-8d992c956f56.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/076a9ce9-1c97-42bc-b895-a97730a5b457.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Organic locavore hashtag bicycle rights.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/cf3040f3-249a-4d49-9e45-c011a0bb1138.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/0a46b469-d19a-40a0-9f29-3f0d65462388.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/177f3b16-396c-436f-a15c-6a0bd461892c.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Tousled vegan fixie microdosing.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ce3b2e59-dd3c-414f-8bbb-26fe4bf15105.json",
      "date": "1959-11-30T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/861a1849-bd74-4e61-b04d-07094d271347.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1904-1979). Food truck crucifix art party readymade knausgaard tousled fingerstache.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/dd4d973d-149d-484f-88b7-cc32a3cad7e3.json",
          "type": "place",
          "label": "Ziggie's Den of Iniquity",
          "description": "<span>Ziggie's Den of Iniquity.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/efc0f76d-0124-4e3f-b847-43f336e306ef.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Cleanse whatever authentic brooklyn literally wolf ugh schlitz.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/9410f072-0206-4675-939a-551ea9531d4d.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/32cebe18-46c5-4c4c-8e18-3cd424a53a18.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/e5c91660-8d51-4bd0-89ea-36612c3e27fb.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/b7111ad5-6f72-463a-91d5-6c34084dc382.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/baec27a4-bed6-4a9b-b91b-dfda6ac236b2.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/e8c8bb8d-571e-4afa-88c3-c7e8b9d1d37c.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/281aa3cc-dbf3-490e-8643-372cf81e8783.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/063225b5-93eb-4451-841f-e230d9c896c3.json",
      "date": "1960-04-28T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/92eb64f0-a936-4737-a279-fe4040960787.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1910-1979). Green juice biodiesel mixtape gentrify venmo.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e5ef235b-3c9d-4fee-bf48-7dd6af61144b.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/f7ca806e-74bb-43c7-8391-0369da65d317.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/efbd1040-6e5d-4bf7-9432-2ecd468f00a1.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Vice wes anderson leggings blog yolo iphone seitan.</span>"
          },
          {
            "id": "http://example.org/entities/eed8d018-3099-40c3-8877-0cf5695d8229.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Master bitters pbr&b you probably haven't heard of them ugh loko tousled.</span>"
          },
          {
            "id": "http://example.org/entities/a5c0d938-d859-440a-b8ae-cd79fd72fea0.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Lomo five dollar toast muggle magic small batch brooklyn carry hashtag.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/f5f21e7a-cd1c-4a1c-8d4c-38f20cde767e.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/ca36f759-faf5-43a3-ad2e-9d3b1cf70fa9.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/a417871d-ccaa-401f-8dad-da2ec2c3c261.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/f36039a0-b12e-4481-aba3-ae71524ad8e8.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/f4104ff5-fc18-4253-8c9b-ccc87c90bf89.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Whatever farm-to-table wes anderson skateboard quinoa forage muggle magic small batch mustache.</span>"
          },
          {
            "id": "http://example.org/entities/c9832549-37ce-4bd1-8d3b-1d3d2f99750d.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, You probably haven't heard of them letterpress disrupt flexitarian tumblr.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/5298c5b9-7dd9-4183-a758-99dcb9de62bb.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0f04b8c4-c0c7-41d2-99e5-3ca903a390fc.json",
      "date": "1960-10-05T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/bcad998f-f02d-44a3-a0d2-2cef4f3a7445.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1918-1973). Health kickstarter fanny pack lomo kinfolk meggings.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/5f162936-93c7-4c93-8980-5ec2d9e2dff8.json",
          "type": "place",
          "label": "Bournemouth",
          "description": "<span>Bournemouth.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/30525afd-d551-4d0d-acc2-ab8d6d75db3c.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/2216a545-88f0-49c7-b4b4-670a640a6d6b.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/21143585-9d78-44aa-8f56-1a6fa0bf7f49.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/16f37e8d-f165-4f7d-b0fa-b6a2c545e2c9.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/0e473039-1ab8-44d9-865b-9ebd3adbcddb.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Gastropub helvetica chambray intelligentsia sustainable butcher heirloom vice art party.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/250252db-ec04-4720-8948-e217bd51a111.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/8e9fd222-a6d3-438a-af7e-2e5a78878a10.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/aeabbae8-a2f1-442b-8225-69cc0292b67b.json",
      "date": "1960-11-24T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e9b94d0d-54f7-4b32-b3c6-43862626d40f.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1900-1985). Tilde mustache vinyl pickled austin cliche bushwick gluten-free.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/46995b8b-3064-4fd4-bb69-ed5481e33a5a.json",
          "type": "place",
          "label": "Barnard's Star",
          "description": "<span>Barnard's Star.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/f9821e85-1a0a-4807-9639-4afb8d2ed23a.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/30419652-0171-4c3f-953c-b5cdfbe6c74a.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/d22c3776-0c03-43b5-96d0-59556e49d700.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/135ce50e-147a-49f2-9ab7-918c51a5a702.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Farm-to-table fingerstache tote bag typewriter shabby chic green juice lomo keytar freegan.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/81b73757-be24-435e-ab0f-46efe8a5f157.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/49a51ae9-49ae-47fc-a56e-9fe93ab50e0e.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/4403a34f-90e6-410e-a1e7-de260a9ade7a.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Stumptown skateboard plaid tumblr.</span>"
          },
          {
            "id": "http://example.org/entities/6e4ec2cc-c1c1-46e2-91ae-b9387452955b.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Tofu marfa aesthetic yuccie salvia.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9af0d410-86e3-4383-a4cf-22a06c60b3c3.json",
      "date": "1961-04-05T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a0457e1a-8c69-45a1-8df5-f6f111e633ce.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1910-1990). Portland mustache cardigan street beard neutra.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/4404185c-a383-4ea1-a49c-fa598f32656f.json",
          "type": "place",
          "label": "Oglaroon",
          "description": "<span>Oglaroon.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/88c525ef-f3a5-447c-817e-86fc1d8e274d.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/c2f248b8-e0a8-4647-980c-d3f8bc675ca1.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/90a903eb-5600-4312-b632-bb8e9b450f61.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/13628625-ee3e-400f-b2f3-4ada8f4dca11.json",
            "type": "person",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski. Slow-carb biodiesel banjo tofu humblebrag meditation post-ironic farm-to-table.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ae80dd91-0f2c-4c15-beee-9bf6dfc937b4.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/97f4fb8d-95c3-4270-83fa-f94363515487.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/dd570f05-03e4-41a4-9627-4a3da6a352de.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/aff2c9c3-624d-405b-aad8-2f201735f589.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/df341907-1a96-4337-b728-f7bad235614b.json",
      "date": "1961-04-27T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/954dbfee-dbef-4a86-9323-50c226e483d8.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1917-1975). Aesthetic narwhal salvia small batch.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/59cba880-f25a-405a-bb31-2f9978622951.json",
          "type": "place",
          "label": "Horsehead Nebula",
          "description": "<span>Horsehead Nebula.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/21ff9682-5a2b-4405-8d46-e6d2d0ddc0d9.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/4e5c7601-8a2f-4752-b213-f1c1d9b01659.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/12b53aef-01d6-4501-a15c-3c69c1bb68d2.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Pork belly kickstarter trust fund helvetica art party tofu.</span>"
          },
          {
            "id": "http://example.org/entities/603a3b23-a6c3-4729-b1e3-5dbfdf55b71d.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Kombucha schlitz meditation actually.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/d9fe4579-c47a-4384-aaca-3d8e63fd14c4.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/e07a25d0-2471-43f1-8d2d-2e65935f470d.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/0f48b204-76eb-4320-a0b0-9874c1510f81.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/864facdc-0992-4426-9dc1-cee5e888213d.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/d47ef25e-2cc1-42c9-a4d5-36fd39cfa374.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Master humblebrag viral ethical ugh banjo pinterest stumptown.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f2d3847b-c5c9-40a4-9d87-5f65bc264c71.json",
      "date": "1961-06-24T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e2ae4e0b-6f77-41a9-b6fe-ebb9cc343087.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1918-1972). Ennui vinyl vinegar shabby chic squid.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c006bee5-9c6e-490a-8a27-8151d173e0c0.json",
          "type": "place",
          "label": "Croydon",
          "description": "<span>Croydon.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/e66f61d3-3bf4-43f8-a376-2518cb272a23.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Seitan neutra polaroid master health asymmetrical intelligentsia hoodie wes anderson.</span>"
          },
          {
            "id": "http://example.org/entities/d30b0aaf-9a55-4af3-9f70-877f3196e15e.json",
            "type": "person",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski. Letterpress quinoa taxidermy try-hard gastropub tacos.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/e7727cab-a41e-49d2-8c3b-06f997eec288.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/004be93d-3067-4d46-a9ce-781310b4343e.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/374b1832-240b-4cff-a73b-7e63d4984ea5.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/ca3d2cf4-6fdc-4e71-a3c9-647d4bd5d0bd.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Actually marfa disrupt master kickstarter seitan flannel.</span>"
          },
          {
            "id": "http://example.org/entities/56300c6e-b0ea-4647-8f52-5ffa4abe2244.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Kitsch gastropub meggings intelligentsia taxidermy lo-fi.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b45c323d-73a9-41f6-a7f7-ddf0584e2722.json",
      "date": "1961-08-13T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5ed6636c-e844-469d-a41d-ba744cbc64cf.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1926-1975). Twee you probably haven't heard of them diy whatever.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/1b471229-f7ce-4df4-8786-053c76a7c70e.json",
          "type": "place",
          "label": "Sector ZZ9 Plural Z Alpha",
          "description": "<span>Sector ZZ9 Plural Z Alpha.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/ccef08b8-524d-4255-a7b2-53d74ebef96a.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Intelligentsia vhs mustache selfies.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/f09fb42c-2f7f-41e1-a6e0-108a7c62d0a8.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/3452bf7f-7704-45c8-bc0a-415b74533400.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/d699e537-a3d4-43bf-a02f-9680f8cc39a1.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/63ac89ed-97c3-4583-981f-c991824b300e.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/8d1af585-4f77-41ad-947d-2498c99eace3.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c21a0263-5066-43cf-953d-2557deea7dc3.json",
      "date": "1961-09-15T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/9293a536-88e4-4e41-bdc3-9fb32d6d0e51.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1926-1991). Cray roof vinegar lomo flexitarian hella.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e5b5a09c-327e-4e99-a642-986fa4fc3858.json",
          "type": "place",
          "label": "Betelgeuse",
          "description": "<span>Betelgeuse.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/28afc0f4-936e-4d09-9894-8a3403d3e174.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/7e397606-0fde-4b58-9421-38b3a21133e7.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ec657e0a-2bbd-4679-94f2-9e576859a555.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/f8e7bba1-1e85-441f-a173-a0fa4cc64a33.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/67aba078-bdae-4169-a73d-ef6e75630eb9.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/c6bf78ec-a526-4722-b831-2924d0192bdc.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/1dd089c2-3880-46d2-a450-0088df8b2438.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/acdc67f0-7f9d-40db-b665-4fd97beff4d4.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/9b89acbb-079c-49aa-b0c6-2a02625205dd.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c5b992f8-1055-4db0-99bf-7ee8e21a33c0.json",
      "date": "1961-09-23T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/cdf8f59b-c4d6-4a8a-b82c-010e4dfdd445.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1919-1978). Vice kitsch selfies helvetica food truck.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e9391099-f131-4b1b-bf60-37312230ced8.json",
          "type": "place",
          "label": "Milliways",
          "description": "<span>Milliways.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/3d5dd9bc-c99a-4e76-945d-99c831680ca2.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/0e4a57ff-f6ed-4ddc-abb9-3c98fd16b71e.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/d24f0f60-e7f4-4ddb-98e3-f41ef1739b34.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/b31f2479-11ca-4d9a-8852-94717a08ca0a.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Occupy you probably haven't heard of them tousled intelligentsia trust fund health ennui.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/737cc18f-c7fc-4509-a619-1324baee7596.json",
      "date": "1962-03-02T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/2e289cd7-8384-4209-8558-0273284a5e97.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1918-1977). Lomo lumbersexual brooklyn park.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a8ad9ece-ae42-4a06-963b-6f7c4ad41b8c.json",
          "type": "place",
          "label": "Arthur Dent's house",
          "description": "<span>Arthur Dent's house.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/b74d3b23-dbd1-4c91-a2da-d018721432d5.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/c30854bb-50db-40af-bad2-8c3733624ee5.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/10acc79e-00e7-4b9a-8081-1a1a30c0a6d3.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/fe447f3f-d614-45eb-abc7-c1cf769fc5db.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/de3791ca-29b6-445c-8c92-4a2124927e47.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/d0baefd0-3d5b-4fbc-961e-9d10e7ea97ba.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/1017e701-5e7e-4625-b88a-43f83c72b13c.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/4ff245bc-39a6-4760-bae9-cf0c336f8e22.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/cd7a7883-0956-4b0d-b726-2bf4f486bd96.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Cliche intelligentsia fanny pack locavore readymade pabst heirloom lumbersexual ramps.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ab4c995d-db54-41f1-9caa-17f643fa83d5.json",
      "date": "1962-04-21T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e3a59886-f4af-4ba1-b458-7cc6483b9f5a.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1909-1976). Distillery crucifix small batch schlitz meh yr.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/432fcd9f-4f59-48b1-a33d-901338e52dcf.json",
          "type": "place",
          "label": "Fenchurch Street railway station",
          "description": "<span>Fenchurch Street railway station.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/dd7f1b89-535f-4c53-b4bb-cd9d6975938a.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/1403bb05-63da-4389-846e-6716748ae6ed.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/cec94fc2-d76c-4a54-a670-c66fba0b1cfe.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Stumptown authentic mixtape try-hard green juice chambray tumblr knausgaard.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/4bd54903-1864-4868-985d-e38e9e3037ab.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/c64c7317-d753-4b62-8df2-4f103e5ded34.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/db67ffbd-1a01-4ed1-881c-4792999a0063.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/a12cd391-d8cf-4c35-8560-6582d8ddeff9.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/c593b138-a303-40de-b2ff-d076583b61ea.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Chartreuse artisan gastropub ugh narwhal keffiyeh muggle magic truffaut.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/b63b7c07-f597-407e-a718-62588932a8e7.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/722d3710-03ea-4536-a816-4e2478c58240.json",
      "date": "1962-10-22T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6acd562b-8657-488e-a86e-fa1a85996d98.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1921-1991). Forage loko hammock knausgaard marfa brunch wolf taxidermy.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/fc5d1d41-104f-4583-ad74-d23fb068f15e.json",
          "type": "place",
          "label": "Croydon",
          "description": "<span>Croydon.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/af8ce1b7-9c9b-4ac8-a795-a8b0896ddbed.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/87705774-842e-478e-a7a6-e2ec863c5cfb.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/8a4737a2-6305-404c-9cdb-7ea110de61cf.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/77e00a5f-a129-4c0c-81ec-5cbb24e993fc.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/307e064c-9904-4122-ad74-6b02b5948c84.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/aa74d962-3713-4ed9-a6a6-8f5cc97919ee.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/bef3f931-50d2-4f27-9840-ff9f837b0fd0.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b5939f7e-90c3-444f-8de1-4e5207187069.json",
      "date": "1962-11-05T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/40cfa3e5-f8cc-4496-ac82-6a07a6a96e65.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1922-1976). Cold-pressed yolo venmo echo.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/bb5fe49d-5d5e-4677-83d4-ccd15f7ea60c.json",
          "type": "place",
          "label": "Guildford",
          "description": "<span>Guildford.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/b4e75ffa-16e2-4f22-8e13-335ca846ebeb.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/aa258dbd-0fe2-4876-8eca-835a7f1b424a.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/3b727e05-8088-4ae0-bab2-a9ef8016f2ac.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/81cf6e7c-bb67-4962-a931-b6eb8eb51fde.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/1cd00cc7-ab95-4cbb-97df-1197ac9ffc87.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4baaf912-19e2-4504-a652-4003e807fc1c.json",
      "date": "1963-01-22T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5dc6b734-e768-4e21-86db-b0338209c648.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1928-1986). Helvetica pickled gastropub pinterest.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/8a968ba5-9939-489f-ab6e-591b03698a28.json",
          "type": "place",
          "label": "Seventh Galaxy of Light and Ingenuity",
          "description": "<span>Seventh Galaxy of Light and Ingenuity.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/46fe46c1-1405-42c1-bf62-f1f9b7925ee0.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/455a4fa6-082f-4dba-9d7a-01ddb0c383de.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Asymmetrical kinfolk mumblecore tumblr 3 wolf moon meditation.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/abb00aa5-3fa4-4212-946a-d6eaa7ed37e6.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/baa325e5-21a4-4df3-8966-d34cb112dc84.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2949bbe0-7772-4f80-9236-e3611f7df561.json",
      "date": "1963-05-19T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ccc6e8bd-3834-4b61-96d7-55d585a1459e.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1921-1975). Locavore you probably haven't heard of them polaroid carry gentrify five dollar toast ennui thundercats.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/04d0a01e-c594-48fa-b560-3935dfbcc51c.json",
          "type": "place",
          "label": "Oglaroon",
          "description": "<span>Oglaroon.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/57e24a42-628f-48d3-bd36-9b1040cb8349.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9a2ae358-6793-417d-88d7-0eabb5deed08.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Jean shorts chartreuse diy cred.</span>"
          },
          {
            "id": "http://example.org/entities/de6dce89-36f1-41c0-ad10-9b7e6d3c05ab.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Pbr&b humblebrag jean shorts loko pug beard semiotics selvage.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/ffe311b2-6b73-4780-b234-d1dfc01cf96b.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/5175236f-79f8-4ed8-9f51-039f212bd63a.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/d48428b5-f6ee-49db-a38b-a415eb4db50e.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Raw denim lomo cred blog synth iphone salvia.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/7674ae8b-a960-4924-b39f-03973e593ff4.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/f65905ae-a89d-43b1-a591-9df284d8f4d9.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a64729d6-ed5f-42f2-91e4-5104da27d753.json",
      "date": "1963-06-26T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/d0c32296-6156-4937-bc35-a088a2207ad8.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1905-1989). Trust fund pitchfork flexitarian brooklyn iphone seitan bushwick ramps actually.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9acd73c5-d8e8-412f-900d-50938d4b9d88.json",
          "type": "place",
          "label": "Highgate Cemetery",
          "description": "<span>Highgate Cemetery.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/9dbc705b-46b1-4190-adbe-2d9e57133f3e.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/95e2a8ae-c60f-4577-b09d-3cbcc597569b.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/fa51b48e-7b7e-406e-98f2-cad69f2084eb.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/cbea5515-9825-43cb-9a64-fe22283fb638.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 33,
      "buckets": [
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 6
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 6
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 8
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 3
        }
      ]
    },
    "repositories": {
      "doc_count": 33,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Eastern Schmidt",
          "doc_count": 15
        },
        {
          "key": "Northern Illinois College",
          "doc_count": 14
        },
        {
          "key": "East Schuppe",
          "doc_count": 13
        },
        {
          "key": "Farrell Institute",
          "doc_count": 11
        }
      ]
    },
    "language": {
      "doc_count": 33,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 12
        },
        {
          "key": "english",
          "doc_count": 10
        },
        {
          "key": "german",
          "doc_count": 8
        },
        {
          "key": "french",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 33,
    "links": {
      "self": "http://example.org/letters?end_date=1964-04-11&page=1&start_date=1958-10-28",
      "last": "http://example.org/letters?end_date=1964-04-11&page=2&start_date=1958-10-28",
      "next": "http://example.org/letters?end_date=1964-04-11&page=2&start_date=1958-10-28"
    }
  }
}</pre>
