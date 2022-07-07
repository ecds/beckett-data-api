# Letters API

## Paginated Letters

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

<pre>GET /letters?page=2&amp;per_page=10</pre>

#### Query Parameters

<pre>page: 2
per_page: 10</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=2&amp;per_page=10&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;first&#39;, &lt;http://example.org/letters?page=5&amp;per_page=10&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;next&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;prev&#39;
X-Total-Count: 50
Content-Type: application/json; charset=utf-8
ETag: W/&quot;016f57cb9800930db5e7bb6de506abbd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 950ebc6c-0ff1-4d1e-a32a-cb4c3ca71b67
X-Runtime: 2.924165
Vary: Origin
Content-Length: 19785</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/fa61a002-284e-433f-a986-aaf9009b3a33.json",
      "date": "1959-04-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4a92efa1-d737-42d4-abc0-247cc174b597.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1911-1991). Disrupt waistcoat typewriter forage.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/de1766e9-2240-4833-bfd8-224c7f49b459.json",
          "type": "place",
          "label": "Ziggie's Den of Iniquity",
          "description": "<span>Ziggie's Den of Iniquity.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/30eda954-00ab-4151-ae23-fc78bf114d35.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/f3ed3be2-9960-4821-b7f0-0cfc3050f7ec.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/c384f579-a12f-436c-a358-5f64e7d531c9.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/06b77e20-cd70-4fe5-a404-cd0a74119d13.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/50f269dd-a2fa-4cfd-88b2-3d252d104dd0.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/b575d281-80a4-41a1-b9eb-07ed931f53ea.json",
            "type": "reading",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/e06aa59e-a602-46b5-ab64-8af581704ee1.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Whatever normcore typewriter park seitan pinterest.</span>"
          },
          {
            "id": "http://example.org/entities/dc3358ff-e330-4a1a-a45d-c4b293c1c0a6.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Cronut hella neutra shabby chic kale chips.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/715e2599-30cf-4601-8031-138bd403dd27.json",
      "date": "1959-04-28T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/b0c8a3f3-7fed-478b-8f0f-26d4828ff88c.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1922-1993). Flexitarian meggings 3 wolf moon 90's.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/b312c5e0-8ef2-43f3-9b29-bdbf0f9a778a.json",
          "type": "place",
          "label": "Megabrantis cluster",
          "description": "<span>Megabrantis cluster.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/96948717-c8c0-4218-be04-4e6089a2c2c4.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/7f784f63-1241-4f88-a78b-6649ea5a3db8.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/47a7284c-597a-4b11-91dd-8303b1882ea7.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/d90a7a11-44c3-4843-b0a0-dbc7fdf6de70.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cadc573d-90d1-4654-aae2-d8bece0d44f4.json",
      "date": "1959-07-30T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/333fa0d4-4de8-41f5-aa8f-63a4169445c3.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1913-1995). Deep v pinterest lomo kogi kombucha roof disrupt.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/776719da-2c34-48fa-9922-f0cc5589b785.json",
          "type": "place",
          "label": "Ibiza",
          "description": "<span>Ibiza.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/587cf2d4-bed3-47d9-9039-5b7e65a7df06.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/39034b41-ccde-412f-93a2-63c610523f2a.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Gentrify ethical fingerstache beard poutine disrupt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/d561e092-3faf-4361-a0af-a3b45f703c96.json",
            "type": "reading",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/40f5a465-0933-4965-8e14-4b2a22d0ab3f.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/62cc048b-df92-4404-84d5-a5fb5c114583.json",
      "date": "1959-08-24T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6741acb5-62c6-401e-988c-2da214922adb.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1911-1971). Green juice brooklyn narwhal celiac hoodie 8-bit.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/b08aa364-d8a2-409e-8e25-ff9cb87bff78.json",
          "type": "place",
          "label": "France",
          "description": "<span>France.</span>"
        }
      ],
      "mentions": {
        "publications": [
          {
            "id": "http://example.org/entities/243f916c-9cd7-4b8d-a0ca-fff4f54060ad.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/b4ec996e-c397-4085-ab32-c77f75c7b959.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/3ab37770-46ac-4908-9799-024db98f1a8e.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Synth distillery drinking meh mumblecore pickled viral locavore.</span>"
          },
          {
            "id": "http://example.org/entities/0464243e-9049-480a-96ed-7aa6b93e33e1.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Taxidermy heirloom mlkshk gluten-free knausgaard bushwick shabby chic.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ceda006f-b6b8-4a98-9370-06ce0d5fc158.json",
      "date": "1959-10-02T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/aca7856e-f7b6-4414-8011-06ee577cf1bc.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1929-1997). Photo booth truffaut umami sustainable before they sold out waistcoat cronut.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e33dda6b-fed3-47f2-bba3-486839a98774.json",
          "type": "place",
          "label": "Madagascar",
          "description": "<span>Madagascar.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3866ec14-08e7-4859-a760-77761b0a7346.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/581a1ebd-4462-4145-874a-8f8ec076f443.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/c3fe4411-1df6-4705-9ecc-16ee4f15cf7c.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/04d921f7-2701-479a-8697-c991209f7302.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/eed68cda-e309-4e93-83e4-a778d0719f76.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/44ddf519-db11-49e6-a10f-8d3920584b23.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/2c33a91b-dd3d-4480-a847-a2af03641d4d.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/ceda0acd-2dda-43f6-8f5b-8dabb5a6585d.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/6d0028a4-d251-4cbb-87f9-c21aece85ceb.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9c3c1673-0a45-4fdb-8455-55f73a93437d.json",
      "date": "1959-10-06T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4e07bb1f-515d-4912-837a-ea30bc15986d.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1905-1997). Stumptown dreamcatcher beard cold-pressed aesthetic pickled.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f6e37f43-ad58-46c4-8957-184cad290e82.json",
          "type": "place",
          "label": "Frogstar World B",
          "description": "<span>Frogstar World B.</span>"
        }
      ],
      "mentions": {
        "public_events": [
          {
            "id": "http://example.org/entities/82fc719e-71c7-4205-9f04-c8bf4e7bc314.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/0c768996-7816-41c5-b190-f2d3e150b97a.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/e3ac7bc9-6913-455d-b796-a3799731d235.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/ab48252e-0c44-439e-b5d9-398956235665.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/0cbf1283-2fff-49a0-834e-b8bb6604cbec.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/f335e481-57be-46a0-a0df-d572af95076a.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/629b33cc-2506-42e6-b6fe-f59d8b8df00d.json",
      "date": "1959-11-08T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/d3987b5d-c684-4b5a-97ac-f9def04e7403.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1906-1983). Quinoa flannel vhs muggle magic gastropub thundercats keffiyeh yr.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/0722be4c-c504-44b6-9d5f-9387f1927239.json",
          "type": "place",
          "label": "Café Lou",
          "description": "<span>Café Lou.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/a871d2f8-4e7d-4003-be8f-757f22c37095.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ec82b071-0eec-461d-81bb-bad3e88da2d3.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/cde73522-8886-407d-a63b-091fdd995058.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/87c9df8e-150f-4b34-bc81-64afc4ba45ea.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/2cd78981-3860-4125-9875-8f23b20f0373.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ca9ff2c4-4f4f-4ddc-b349-3ed9935db204.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1cd1ea90-241f-46aa-89d5-7e0f396d1663.json",
      "date": "1960-01-29T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/b150b8c3-257c-4464-a604-bb5ac6ceaced.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1917-1996). Vinyl beard wolf truffaut butcher selfies helvetica asymmetrical.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/6f1f7147-3399-4685-82f5-391676318350.json",
          "type": "place",
          "label": "Zarss",
          "description": "<span>Zarss.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/a5378db1-278e-4de4-9d92-6dfe1e3001bf.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/118f5b47-91fc-4950-b37e-4f2862d2250b.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/6627a792-a859-4266-b7ca-0b4c697f9e5f.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/8e953788-0dc4-4747-a078-2aea693290a3.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/4374a5ee-7c70-44b7-ab99-7f66cfaaf5c7.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/7b6ae0fe-9465-4764-acf0-20389471c5b0.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/a512ba50-5d89-48e8-9f8b-8fe5ad07b7c8.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/9ae6b4f5-53c9-453d-9379-42ff14088bdb.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/2a3aebe2-db74-4fb3-a11b-b2d8a48bdaa5.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/3366b1c6-2049-405e-9345-5822b32fad82.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2a7563d7-1f81-4927-8557-604edcefc8f5.json",
      "date": "1960-03-14T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ed8ce27d-2db8-464b-aef2-62bb4256197f.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1924-1985). Vinyl banh mi celiac portland.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c138606e-15e0-4f4a-a399-cfd8bf651960.json",
          "type": "place",
          "label": "Rupert",
          "description": "<span>Rupert.</span>"
        }
      ],
      "mentions": {
        "places": [
          {
            "id": "http://example.org/entities/53c332fb-bad1-4506-9ef2-91efad1eae41.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/cb5a73e4-b4df-4a2d-a7b3-673afb78f204.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/a4dbb18f-db37-4d21-b5c3-d12a89d50dd4.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/1929c083-1789-4083-a075-5b9eb5e15211.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/c3f55a1f-4613-46db-8b2d-e76ec52090ac.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/db28b0ab-c935-4014-97e8-573642eeac31.json",
      "date": "1960-03-31T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5ece3708-e821-4b15-98be-3aabc4a8a9de.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1925-1993). You probably haven't heard of them pickled 90's pour-over flexitarian.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3f49d632-5967-44e1-8ac5-b18154dec706.json",
          "type": "place",
          "label": "Lord's Cricket Ground",
          "description": "<span>Lord's Cricket Ground.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/a0d32bbd-eadd-4fec-b0f6-41e3ede8c238.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Pop-up ugh wes anderson ethical hella chia green juice portland fingerstache.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/25714f73-e18d-46f0-86a5-109937e32fa6.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/b6da7b2b-b8b9-4226-a404-9a4ef1ff8704.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/f6c49da2-9883-4ee2-b53f-a6ea1eb76369.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/eb368f46-0700-4b8a-96c2-1bdc246aeeaa.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
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
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 6
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 8
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 9
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 5
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
          "key": "West Institute",
          "doc_count": 29
        },
        {
          "key": "Jerde University",
          "doc_count": 21
        },
        {
          "key": "South Rau",
          "doc_count": 20
        },
        {
          "key": "West Ondricka Institute",
          "doc_count": 15
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
          "doc_count": 17
        },
        {
          "key": "german",
          "doc_count": 16
        },
        {
          "key": "english",
          "doc_count": 12
        },
        {
          "key": "french",
          "doc_count": 5
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 10,
    "page_count": 5,
    "total_count": 50,
    "links": {
      "self": "http://example.org/letters?page=2&per_page=10",
      "first": "http://example.org/letters?page=1&per_page=10",
      "last": "http://example.org/letters?page=5&per_page=10",
      "next": "http://example.org/letters?page=3&per_page=10",
      "prev": "http://example.org/letters?page=1&per_page=10"
    }
  }
}</pre>
