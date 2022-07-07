# Letters API

## Date filter - end_date

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

<pre>GET /letters?end_date=1965-02-11</pre>

#### Query Parameters

<pre>end_date: 1965-02-11</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1965-02-11&amp;page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?end_date=1965-02-11&amp;page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?end_date=1965-02-11&amp;page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 46
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cbbe85946ddd53a1c48c8579685ac351&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9f769c76-3799-4f21-9c3d-9e399e7e1d41
X-Runtime: 8.161814
Vary: Origin
Content-Length: 54318</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/65f06666-b745-4eeb-8a94-9aad0e6383f9.json",
      "date": "1957-01-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a339fe50-d58c-4be7-9ced-6ceaec3e0441.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1908-1998). Twee pabst farm-to-table flexitarian narwhal shoreditch venmo wes anderson.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/46a066de-8c97-4463-ade9-62aeb7ad9a14.json",
          "type": "place",
          "label": "Asbleg",
          "description": "<span>Asbleg.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/261451e4-4f7c-4c51-afb1-230b76e403b2.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/4d7baade-763f-49f8-a050-8ac4711ddfd7.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/5624c8a3-a3a6-41a0-89f9-5210c3e038f0.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Raw denim chartreuse kogi seitan deep v shabby chic skateboard.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/90c9af92-2cfe-4781-8650-fb88ac376e39.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/64046fd1-a178-40cd-8840-9b4c387cb6a7.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/5e3e51c3-16e0-41bc-8f3c-7a2621c88322.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/23fe5eff-21f8-4bb0-892e-eb1adfe8d212.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Dreamcatcher pickled poutine kickstarter fixie.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d356ced5-04de-44d0-ac1d-d38d4639ccb1.json",
      "date": "1957-04-06T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4ab07e7d-70a9-49ae-ac1f-0a0991b8d660.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1927-1981). Kinfolk pabst vinyl lumbersexual normcore sartorial carry schlitz dreamcatcher.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/0f7d6103-f2bd-4717-9163-4239720c7ac4.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/912cd36c-ca13-40ad-89d8-e82914b001d4.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/b643229b-ca48-4de2-adba-566a09b5469f.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Helvetica five dollar toast 3 wolf moon lumbersexual vinyl sartorial asymmetrical.</span>"
          },
          {
            "id": "http://example.org/entities/30a30c72-9726-47f6-abec-5190547123c4.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Put a bird on it farm-to-table letterpress mumblecore poutine williamsburg phlogiston butcher.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/c7afd540-c6f8-40f8-a6f9-c2924b6e790a.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/889f342d-0043-425e-80c0-a9cc0738ccb2.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/b3d696c3-7dc3-4c68-a669-358bdb8b077e.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/c022c3d2-79bc-4298-bd17-0bee74508969.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Vinegar plaid fingerstache brunch gastropub listicle vice aesthetic.</span>"
          },
          {
            "id": "http://example.org/entities/4647d0ca-4582-4eac-85a8-8b0870784876.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Readymade forage celiac tousled master wayfarers knausgaard.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/1b8de977-b2f7-4ab2-9c24-5ea8f1e564c9.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/57d2f898-b60f-45c2-b1c9-0234ff31a97c.json",
      "date": "1957-05-07T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/d74a8ec7-e659-45b5-a528-12267871e45c.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1914-1986). Occupy wolf 3 wolf moon waistcoat.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/579db869-1374-4ef8-9fc4-166c50108024.json",
          "type": "place",
          "label": "The Domain of The King",
          "description": "<span>The Domain of The King.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/6d082214-2779-4fef-87c7-8a5aedb24d58.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/07d6c087-61d2-4b99-a001-da0adf7dff5f.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/d91d0724-8a93-44ac-ad94-62fdeddff8a0.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/8fb72382-32e9-4b47-ba6e-c1fb1460a178.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/345c4766-cae3-4a77-b9cf-a9ebe65d9487.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/63572107-b375-48ad-8ea6-f04916e7d387.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/7ff53752-7411-40ea-9e36-04c69b15896b.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/9863ad57-6fca-4922-9b20-25c882a55681.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a6ae89e3-f7c6-495e-8ff9-ecd5d8afbecd.json",
      "date": "1957-05-07T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/aaf20afd-427d-4797-a4c9-715a54bfc612.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1918-1991). Artisan synth blue bottle gastropub.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f7e5afc8-9228-4528-8ce2-a1abd5006046.json",
          "type": "place",
          "label": "France",
          "description": "<span>France.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/8e1c5b04-e245-4fdb-b2d2-a7bd64de782a.json",
            "type": "person",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski. Cray messenger bag vhs street ugh before they sold out deep v gastropub.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/39f18b41-8313-4426-a0bf-b18d15946ee4.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/882b9d09-e032-4a08-a9b1-94b709ae1229.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/454ea6f6-b42e-4103-8c7a-1bc58e1e4bad.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5894ba89-3695-48f4-b695-08a4c876d782.json",
      "date": "1957-05-11T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/19b6c9e5-be7e-42b2-9a5c-2cd2cbea36da.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1912-1991). You probably haven't heard of them flexitarian seitan try-hard bushwick aesthetic austin.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/85328d7a-fd7b-421a-9118-dd87d484294e.json",
          "type": "place",
          "label": "Stavromula Beta",
          "description": "<span>Stavromula Beta.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/2b780411-c715-4dd9-b02a-78a20c53bd74.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/07f63f99-42b5-44d0-af58-282dd2d254b1.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Wes anderson you probably haven't heard of them cold-pressed photo booth gastropub.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/d215b5cb-de45-48cf-b1e1-9fcb44f381fb.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/441bab6c-d70e-4075-bc0d-b4dbd8d99885.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/6b6cec1b-9a05-4bc8-b283-9689797609e1.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/7c5234ad-a395-4562-89a0-09c0f7c2a43d.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/e93dd9f5-dbba-4f89-bf49-264bf6af0622.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/05a8aa86-1f79-4603-91d2-b094846f5594.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/fb504e0d-198f-445d-a8bd-2b641dfe1ab9.json",
            "type": "publication",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/9d3253c1-02fd-4fef-8195-9279fc10b52f.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/a08cf7f9-20f1-49fc-9855-a037cc51e15c.json",
            "type": "writing",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/092cb8d8-7b53-482e-9057-bf1009678125.json",
      "date": "1957-10-02T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/34b67f73-8c43-4b1d-9764-be90bc2b89fc.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1915-1997). Gentrify fingerstache before they sold out try-hard aesthetic you probably haven't heard of them offal celiac.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/493d2297-6b17-4a02-bd42-10c0b0d57b36.json",
          "type": "place",
          "label": "North West Ripple",
          "description": "<span>North West Ripple.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/29a4d14a-94e4-4b47-b95f-535c3e68fbd1.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/13a34ddd-bc27-473e-a650-75c8a884d4b9.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/7052da5a-96b4-46a4-97f2-062aed1e0753.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Ethical muggle magic synth 8-bit.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/d8c0458a-3be7-4da6-9e44-97fbc90f39b6.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/fc9cb62c-e7af-46be-8f47-da87949b162b.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/87756cc7-0fae-47b6-be58-bf174b051863.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/29a4a09d-f35e-4322-af8e-6a5d1fb56e5c.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Cronut bicycle rights literally swag selvage sustainable food truck pbr&b biodiesel.</span>"
          },
          {
            "id": "http://example.org/entities/6219fc42-9ac4-4180-9b18-83a91bb455dd.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Squid locavore pbr&b food truck forage goth five dollar toast.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/998fa520-1cd8-4d3e-8be3-50718d85d953.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0749d6db-4db2-4d9c-b989-a300a225ea93.json",
      "date": "1957-11-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/716a5815-1ac4-4092-ac41-1872749abc4a.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1905-1976). Meh tilde iphone neutra lumbersexual swag fanny pack.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/102e6048-b6fd-4d39-94ce-9401afbeab09.json",
          "type": "place",
          "label": "Rickmansworth",
          "description": "<span>Rickmansworth.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/45c52e11-8be4-4055-a07c-81854de6df14.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/3f45eb8b-dae7-4295-a95d-1fc2a94a249e.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/fd7f1b57-c346-45a8-9221-db35ac844fc7.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/e2767782-2e2d-4c12-9dd8-be470abdb30b.json",
            "type": "place",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/4d713a8a-1418-4fd5-a63d-23864d69b728.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/f86f74cb-8bd3-4a25-9130-c9f766105e76.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/65bfe5a6-e50d-46f4-8d01-b0ec84d76633.json",
      "date": "1958-06-09T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ac03351f-e0a1-4329-84ac-ca7270b354e3.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1919-1992). Fashion axe keffiyeh quinoa cold-pressed butcher disrupt brooklyn.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/d8f937ca-6a08-4c17-9066-f4ebd36c11e8.json",
          "type": "place",
          "label": "Kakrafoon Kappa",
          "description": "<span>Kakrafoon Kappa.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/15e4345f-050d-4abc-9cab-d3eb574c4a92.json",
            "type": "organization",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/e4ace917-dcc4-4d23-a059-d99914602816.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Chicharrones bitters quinoa narwhal brooklyn tofu neutra typewriter godard.</span>"
          },
          {
            "id": "http://example.org/entities/8d76c62e-cf1d-44f7-abd8-ee3fb9934204.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Plaid quinoa hammock ugh synth.</span>"
          },
          {
            "id": "http://example.org/entities/d5f534d6-def2-4f2e-8c74-b09d335a02c9.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Cleanse cliche flexitarian chicharrones cray.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/ef1428e6-225a-49bd-bc36-30fc97d954e6.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/576ef84f-8a84-4c3c-acbd-b26baa37b452.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/97e809bc-4553-4f9a-824c-fd3228906085.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/3f153695-2970-4fb4-ad4e-86723d1379b2.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/5d8977c1-a095-4555-b893-25523e434b89.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/987ec90a-4249-4dac-8991-e2087f267854.json",
      "date": "1958-12-05T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/3c912aa7-9fc7-48e2-8b41-9695219aca13.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1929-1994). Pop-up readymade helvetica phlogiston franzen.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/aa133fa7-daee-4805-bde5-835371f210fe.json",
          "type": "place",
          "label": "Seventh Galaxy of Light and Ingenuity",
          "description": "<span>Seventh Galaxy of Light and Ingenuity.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/c1bb8614-2d83-497a-b64b-4cf858ab739e.json",
            "type": "music",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/be1b9a5a-c23d-4c93-88ba-34bdbd1ca072.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/46f57cf5-2924-4e71-adc3-638a2e5c7a76.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/e75a4b5f-4db0-4249-94a0-e0c9361a45ed.json",
            "type": "production",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/ae29a89f-8256-4622-a893-218cfb6f08ec.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/bf52ba10-32e1-4268-a21e-661b9089ead6.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/2e6d8f7a-315e-4edd-a353-3cb20759137f.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Hoodie carry swag kickstarter meggings everyday hella tote bag deep v.</span>"
          },
          {
            "id": "http://example.org/entities/fdd8144c-86a3-49f9-9974-5148bfe7d1a5.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Echo master kinfolk chambray blog gastropub goth chillwave literally.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/9850f897-fb0a-4d41-9b5b-ebaf94170048.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/21762d18-f2d4-461f-b237-d5afff15e9f8.json",
      "date": "1958-12-26T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/0d2d49ca-c766-4e63-ac44-a76af090b65a.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1903-1971). Blog single-origin coffee venmo shoreditch keytar you probably haven't heard of them.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/6c07e869-eb16-4f6b-924e-59e449ab3f5e.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/7f2b07e3-bf9f-4193-b222-043a86fff156.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Godard bespoke goth messenger bag put a bird on it actually shoreditch poutine cornhole.</span>"
          },
          {
            "id": "http://example.org/entities/92f4d0bf-97b4-4473-bb1f-d838923499a0.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Yr retro sustainable brunch ennui gastropub everyday butcher muggle magic.</span>"
          },
          {
            "id": "http://example.org/entities/3d16b414-23f3-48e0-ac60-12f3affbe886.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Health chartreuse schlitz flexitarian sriracha.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/3afa7ee1-6827-47b5-93b8-347ab491160c.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/3c7ee6eb-4b4e-400e-8e77-41f6f4aa165c.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/2637dd50-db2b-4f6e-a111-080aa07dee1a.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/27c664cb-f59a-46fd-a1ad-3cca0fcdc147.json",
            "type": "reading",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/41997ab7-8442-484c-87f1-ce371312a956.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/1f5ee9e8-9b50-4095-9aa2-1e54efb2beac.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/6d8662ba-137d-4458-8c2f-10862498390a.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Iphone letterpress fanny pack leggings pickled try-hard umami lumbersexual mumblecore.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/096e7a9c-5dbf-4c84-b524-0ac0b39d8715.json",
      "date": "1959-01-01T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e5016ad3-ab2d-4ba2-84e9-102422376653.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1912-1977). Xoxo tilde banh mi iphone slow-carb umami.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9bf6fd13-d25a-4a56-96ad-c9c6dff9bdfc.json",
          "type": "place",
          "label": "Pleiades system",
          "description": "<span>Pleiades system.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/d8f00fea-f013-4be7-802d-9293b8364279.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/92734169-0a80-43fa-8f20-7b4b1971e1e2.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/fe290a14-00ec-47ec-891f-180e685c8a29.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/aa0fce0a-fbce-417c-ad1c-ea831cf71b71.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f871adf3-8ce6-4337-9630-bc98290d330a.json",
      "date": "1959-01-13T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/66f97735-34f4-48f0-a8c9-8c057d397613.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1904-1979). Literally gastropub quinoa viral gentrify five dollar toast.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/bf9fe72c-d053-465e-9c9d-8bcaf9d891b8.json",
          "type": "place",
          "label": "Western Spiral Arm",
          "description": "<span>Western Spiral Arm.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/56b05196-cece-417a-a410-1b9f86f543c7.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/a543b99e-3e4a-4e23-89a5-c227fc2d8049.json",
            "type": "organization",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/5827bb1d-2d06-454b-b3bd-675da9981792.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Diy park vegan flexitarian sriracha wayfarers etsy.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/04d95469-3d9d-4481-9458-f393b5e18797.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/1eb16886-509c-4bbb-a3e2-810bd6286879.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/17134bb6-f020-4ae3-aca9-7a98f3e73236.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Celiac iphone loko chia you probably haven't heard of them butcher kitsch cold-pressed pug.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/e9cb53b4-a349-4d11-81d4-abfd5e09e750.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/5cbabcee-3539-4a83-9b03-4e456c3737e2.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dbc28750-6c5c-4e10-a3b1-6b4faa8af1c7.json",
      "date": "1959-03-29T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/fb3ca255-1299-4f63-b157-ebe1311ff8ce.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1908-1970). Fixie narwhal intelligentsia whatever tofu cleanse.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/80cf9637-f51e-4eb6-a644-9a3d794fdc29.json",
          "type": "place",
          "label": "Denmark",
          "description": "<span>Denmark.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/8c327317-d619-4c11-b78a-27ef6675b105.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/148465fd-dafb-4785-8d81-a79b2e21313a.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/20464706-da5b-4008-b04a-61e27a5ef544.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/3eabc933-ea66-43c7-90f0-d27679001582.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Blue bottle dreamcatcher helvetica mumblecore wes anderson.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/33f84585-81b3-4385-9a3a-ac2a7d8bba86.json",
      "date": "1959-05-08T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/27962097-45a1-4a2f-89d0-4d457cf58ce4.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1925-1989). Quinoa gluten-free synth jean shorts gentrify.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/7922f807-ddba-42c2-b0a5-512918825d1e.json",
          "type": "place",
          "label": "The Domain of The King",
          "description": "<span>The Domain of The King.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/ef68a17a-7631-425f-bb96-6bc4ea8066b9.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/e3a67d90-8b3e-458c-a4a7-a15b5023ec97.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/7c03eff7-c226-41ec-8bf5-c90e47812371.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Waistcoat intelligentsia hella hammock squid jean shorts schlitz.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/f0e03f84-b203-4690-ba3b-e5a6f29eba42.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/83a6d21c-d9b7-48c1-b5fd-9246135cc9f5.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Ugh 8-bit five dollar toast cleanse.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/86ac8f10-187e-44ff-a5ed-574e74246f34.json",
      "date": "1959-11-23T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/f662e85a-af15-4302-996e-aacf62fcc22e.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1918-1970). Craft beer kitsch kogi narwhal post-ironic deep v brunch.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c5ba428f-8c5f-4c53-97a9-5a79ad8109e5.json",
          "type": "place",
          "label": "Bistro Illegal",
          "description": "<span>Bistro Illegal.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/80bbd5c9-b3b9-43ec-93ba-b0e285bf9e6c.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/9d5bd717-973e-421a-b219-464efd0c76c6.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/55b10f56-5a23-4e98-9eef-85ff9411c4c8.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/8eb3d105-56bd-401d-b38a-4445105c00aa.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/3f7cb9de-dcd3-409d-8ab6-63e0ac08d5a3.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Kombucha drinking goth deep v.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/00284b28-0599-4d67-a1f8-7bbf31a765d2.json",
      "date": "1960-02-16T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/88c0bce0-738e-4349-9522-5c5ac8d25f95.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1916-1990). Fingerstache artisan sustainable small batch bespoke normcore venmo microdosing.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/d9f46423-a5ff-488e-9425-c83ea23304d6.json",
          "type": "place",
          "label": "Han Dold City",
          "description": "<span>Han Dold City.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3ee1daa5-64a9-4c09-b7ed-06d48e5578d0.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/63c1ce33-b06e-4a3e-b404-125f7ce23a66.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/9e5ef2bb-0c4a-4310-bcf8-6578aa6598f8.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/f62ae86e-0074-4d6d-9e5a-1b8daa867cff.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/9958491a-30bf-418d-a392-ca0095ed495b.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/57b4bfbd-da62-4cb3-9ce9-c56d079755eb.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/bec6e4a2-2801-474d-b4f8-a6f83cf5523b.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/e1092f07-afa3-4c5a-8235-0cce93a7aed4.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/86329c1e-df76-4248-98c8-587c931d35f3.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/3ebf5734-1b03-4ba6-9b4f-ebaa71103c69.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/44a7014c-6f2f-42ab-8d0a-47d23f9d688f.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1f9bb375-4434-4816-8dce-9b8d3d22ac03.json",
      "date": "1960-06-29T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/26375196-2348-4c90-9039-589deba47048.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1911-1973). Small batch biodiesel waistcoat scenester butcher gluten-free distillery.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/0a47f5a3-a113-4f7e-83d6-62b77d8da555.json",
          "type": "place",
          "label": "Horse and Groom",
          "description": "<span>Horse and Groom.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/b364efc6-8b02-47fa-aeeb-bff9e79d1e0c.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/c840e979-4f37-4020-9add-15de5d3f0c5c.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/e3a2d954-b7a3-4c1a-9e79-5caf124cfb5b.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/b6bf8725-3b8b-425f-b72c-f9a49c45bb62.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/80eb1d01-047b-4162-bb4c-7af64a62d43b.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/2df6d334-7283-4c53-8d6c-f9e8ed8e3374.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Everyday before they sold out pour-over gentrify distillery phlogiston.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/5958d5e3-fb8d-4c3d-9df9-d7bd582e1a11.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4509da2c-5b00-4482-916d-aa01e522d673.json",
      "date": "1960-08-29T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/2b91f5a8-0334-4dec-9729-b32ffc9e4ccb.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1920-1980). Dreamcatcher banjo readymade cornhole jean shorts trust fund selfies godard flannel.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/8d2b3a9e-9303-4cee-9a1c-249d5a2eecec.json",
          "type": "place",
          "label": "Ziggie's Den of Iniquity",
          "description": "<span>Ziggie's Den of Iniquity.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/12f3fa38-3b7f-497b-a6c9-97466e6317d6.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/5166cd78-fbe5-4e5b-9a64-28ab66b95fb7.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/c868be51-59f0-4b39-9793-96b0def09fe4.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/ad09f4a3-8a2f-409a-b2e9-3529124941fb.json",
            "type": "place",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/71b02969-f47c-4f87-93fe-fd0933b528a3.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/23c51197-8974-4470-9d51-a8f821f8152c.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/8f1731a4-b877-4458-b0e2-e6317f140594.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/86e27853-9dfe-4d8f-8fe6-57f25d883186.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/9f5d7c86-7bfa-4d50-baa1-72eab9df97de.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Gentrify crucifix letterpress butcher intelligentsia etsy austin loko.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/5ecb1143-d180-46af-9fef-6fa6e5a6c8dc.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ebc55442-d859-4678-9bd8-7c7e31737055.json",
      "date": "1960-10-20T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c30fe35b-795d-463e-96a5-2ef51a0656a2.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1919-1979). Kombucha flannel butcher meh banh mi migas pork belly master intelligentsia.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/0ebefc36-618c-48ab-b461-1a97646cff91.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/2b6c696e-5348-4d8f-b912-79e0b431d9b6.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/8f17bb2b-b5ec-4646-a43c-c3b6cfd11443.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Wes anderson narwhal before they sold out banh mi viral blog iphone.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/2edd19fe-34db-4f9e-80db-3271bdb3176c.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/4a7bea63-e448-4554-aa86-a601311324e3.json",
            "type": "publication",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/1b2ecd8b-cb4e-47a8-894f-6915557291e0.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/d076dbc1-4246-4a22-8c1a-157f0ff9f4ad.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2eabcc1f-96e5-4659-b0eb-83fd2ac5b7d6.json",
      "date": "1960-12-08T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a426afd8-08f7-4200-9b30-c1633cafce7f.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1904-1991). Chia everyday meggings shoreditch freegan.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/057ea6e1-2f1e-4a27-9045-f6e75db6c39c.json",
          "type": "place",
          "label": "Bistro Illegal",
          "description": "<span>Bistro Illegal.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/02543a38-066a-4a22-b906-7af7681ecba6.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Blog drinking chambray marfa.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/7abe790d-4180-4256-b2a9-156602e3030d.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/4ab207b4-8f2d-487d-9d25-e670a26b9bff.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/2e214215-bc92-475a-a66e-d5d2eb83c4e4.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/e4908a41-159b-4a86-9a97-bb308565ff1d.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1884cd70-6076-4a1e-8c51-12f48fde00aa.json",
      "date": "1960-12-20T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c477cb2f-1fe0-461c-a4c1-5d3a4b74df9a.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1911-1989). Polaroid bicycle rights wes anderson echo chambray.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/002d6081-bfbf-48cf-85c5-47326c386fa2.json",
          "type": "place",
          "label": "Preliumtarn",
          "description": "<span>Preliumtarn.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/5b00a996-bebf-4a3d-8435-7dca2b1eec9d.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/7bc488a3-f948-41b6-bf6d-6d6c7e9f5b32.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/26eeb38b-489b-4254-a05b-606404911aba.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/638c7d07-8c35-41fb-97fb-849ab5a6bf34.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/aa4a945b-934b-4fcd-b4b2-6c1034572224.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/39335560-238b-45cc-a9d4-170d6479ced1.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/97b2db27-f0f2-4c89-8e7f-2b7b99adc269.json",
      "date": "1961-01-12T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/822ba2ac-2544-4a1e-a02c-f3837e226c15.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1909-1991). Blog lumbersexual food truck stumptown street green juice letterpress sustainable.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f273311e-ab5e-4741-887e-a970b53af200.json",
          "type": "place",
          "label": "Preliumtarn",
          "description": "<span>Preliumtarn.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/333eafcd-83b8-4441-af29-f996608476ef.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/ac41b355-a7e5-46bb-825b-3bf243f772ac.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/16712090-7837-4125-8fc1-390490557e9e.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/e1b71e91-f4cd-4e46-80b7-98a3627d4898.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/02bc8524-8790-4d12-aae3-5f0d8f714d35.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/937ad447-e81c-4d49-8e2b-f69f8b05b879.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Meggings banh mi meditation selfies.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9405a1f1-e51f-4a2d-b78d-b9e701e0d9e5.json",
      "date": "1961-01-22T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/2223e08a-d6c5-46ad-b6e7-d9877638e929.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1929-1994). Roof irony squid messenger bag cronut mumblecore.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/22309078-f54f-40d9-a9a5-7373821ce6c2.json",
          "type": "place",
          "label": "France",
          "description": "<span>France.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/6ab1eca8-49f7-4f6a-a6d5-b7fe63d11831.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/90a5ea34-a35e-48ce-8920-48eee56b6a44.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/de1cd028-7dcc-464c-bac0-abb6975f3ac4.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/3fc66e31-a8f2-46c8-8ceb-f4d231653e1d.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/adf6e789-a3a5-46c1-8558-47d56cfe9080.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Artisan pour-over hoodie skateboard schlitz gluten-free microdosing.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/d5c34e6f-5df4-41ad-ac8a-89442702ee98.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/8f7757cf-863d-47a9-a8df-2c619456530e.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/bdd90bb2-d47e-4939-bafc-1855db63f024.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Sartorial roof paleo pbr&b.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/eb110cf6-6656-4510-8272-bac65967383c.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3fb8820e-ecb6-43fc-a13a-71a66543836e.json",
      "date": "1961-04-21T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e3b44cf7-91d8-413b-8692-2cacb601c79c.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1909-1987). Next level squid muggle magic gentrify jean shorts.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/b2f6a0cb-7704-458c-8ce0-264c4cc26944.json",
          "type": "place",
          "label": "Western Spiral Arm",
          "description": "<span>Western Spiral Arm.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/12158ff9-3a8b-4b7a-a6d4-8819833ac14b.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/c149beb9-ed95-436d-a972-d7ab86a69580.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/c6c25f8d-daf7-4d99-a911-7f6731269a29.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/2f62cc5c-f53e-4770-9a92-a09b5a090dc0.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Yuccie readymade mustache ennui.</span>"
          },
          {
            "id": "http://example.org/entities/c3421ad2-ec82-4eeb-8d3b-77f29bf312fe.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Pop-up carry marfa cronut tousled godard.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/002f394f-b266-4f39-af5a-74b3e8eccbd8.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/7fc10289-c0b4-45ab-8288-236cc30228ff.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/1ad42f5f-386e-479a-878d-94ec7b9d1467.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/a11c1577-4401-428c-be3f-0eaf6670bdf7.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Asymmetrical occupy tumblr stumptown.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/47635624-bc02-455a-973c-38e4c11eb110.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/637358b9-9888-4e96-9734-3903e1e73131.json",
      "date": "1961-06-28T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/672cfa77-df9f-43f9-be64-f830bea90b0e.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1923-1970). Wayfarers bespoke cleanse sartorial.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/4356c628-fa1e-4423-89ae-3e88aa7ab888.json",
          "type": "place",
          "label": "Arthur Dent's house",
          "description": "<span>Arthur Dent's house.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/019877e8-320a-4f23-a21b-feafb4d94fb2.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/64ed6f21-3b72-4e35-8d1f-ebb3bf759834.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/f68b9d56-b8a3-4cf4-bb87-92f8af18716c.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/7167509c-803e-426a-adbc-b4afecf13386.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Skateboard wes anderson cleanse leggings.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 46,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 7
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
          "doc_count": 6
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 8
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 6
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
          "doc_count": 2
        }
      ]
    },
    "repositories": {
      "doc_count": 46,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "East Florida Academy",
          "doc_count": 26
        },
        {
          "key": "Grant Institute",
          "doc_count": 22
        },
        {
          "key": "Southern Nevada University",
          "doc_count": 19
        },
        {
          "key": "Western Nicolas Institute",
          "doc_count": 14
        }
      ]
    },
    "language": {
      "doc_count": 46,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 14
        },
        {
          "key": "english",
          "doc_count": 12
        },
        {
          "key": "french",
          "doc_count": 10
        },
        {
          "key": "german",
          "doc_count": 10
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 46,
    "links": {
      "self": "http://example.org/letters?end_date=1965-02-11&page=1",
      "last": "http://example.org/letters?end_date=1965-02-11&page=2",
      "next": "http://example.org/letters?end_date=1965-02-11&page=2"
    }
  }
}</pre>
