# Letters API

## Repository search

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

<pre>GET /letters?repositories=Sawayn+Institute</pre>

#### Query Parameters

<pre>repositories: Sawayn Institute</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=Sawayn+Institute&gt;; rel=&#39;self&#39;
X-Total-Count: 21
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0cbd16931ceeebcf5df2ee69997ba63e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 00e784fe-f83d-4822-89bf-19c930a806c8
X-Runtime: 9.733300
Vary: Origin
Content-Length: 41598</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/52f321e4-846f-4541-810b-d9595375df36.json",
      "date": "1958-06-22T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/370c55e7-56e8-4ff1-b521-4f984e9fa4fa.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1903-1992). Loko butcher banh mi waistcoat artisan craft beer yr semiotics pickled.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/d47760fe-cb28-4bd6-9bcd-869d8864480a.json",
          "type": "place",
          "label": "Guildford",
          "description": "<span>Guildford.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/7a13e9ae-f224-445e-a46b-9ca20f0b0153.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/916a2caf-cb0f-4b18-a367-d086e5034d6a.json",
            "type": "music",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/c1624dce-9d84-49cb-81c2-3368ef61fe96.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/7446dbf8-b4a8-46f4-a4de-ce537daba7b6.json",
            "type": "reading",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/aa0b3368-7177-4514-9e0f-8df5145a4b56.json",
            "type": "translating",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/c764bb54-81d2-41b4-a74d-03955a9cafd3.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Gluten-free chia quinoa intelligentsia mixtape poutine.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/af88c55f-88cc-43fe-b40d-7bd6858aef78.json",
      "date": "1958-09-07T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/8d420480-c93c-4df1-89ff-c23161ed2914.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1910-1993). Goth actually franzen celiac pour-over blog ethical paleo bespoke.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/2754a51d-3b50-43f1-8a3d-4d879d1397e5.json",
          "type": "place",
          "label": "Betelgeuse",
          "description": "<span>Betelgeuse.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/0e602241-dd31-4110-8c41-4a1d6fcf1387.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/8985f242-4bf9-47aa-af0d-b3b6acc7d29e.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/90522808-4199-4213-9f40-81fd6a67fd07.json",
            "type": "organization",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/d1dfa2b7-adfc-4687-ada8-3117e714a018.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Direct trade everyday hashtag banjo.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/5e1288b9-76f5-4e4c-8a77-a6ead26a9af8.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/7da13440-4013-4b4f-be7e-d3dc4eae2d38.json",
            "type": "reading",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/0944f19e-9f11-4591-b82f-ec7a274ebcba.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/72e853e4-c88a-41da-ad3b-e816f936b148.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Loko hashtag raw denim occupy post-ironic craft beer twee seitan cliche.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a891763a-1ba5-4bcb-8b65-abda84cb6279.json",
      "date": "1959-02-06T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/9df3ea06-ccc7-495a-8dd4-46622b4d4062.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1903-1997). Cleanse intelligentsia organic cardigan.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/1d78095d-5bdb-4432-8fa9-6c28df2d0303.json",
          "type": "place",
          "label": "Horsehead Nebula",
          "description": "<span>Horsehead Nebula.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/99cdbd13-bccd-4b32-855e-05f649fa50f7.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/69608df6-2083-4e29-b416-d69f2ef116a9.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Twee neutra selfies pug sustainable blog.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/b2ab7c52-2f37-464d-a998-4ecf5fae3017.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/696fcb8e-9f7d-4d50-81cc-6087aeac9027.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1c018671-f207-4b13-a370-d2f512ccd523.json",
      "date": "1959-10-17T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/58326b7a-3ea9-4683-b433-3ccf169504eb.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1906-1995). Brunch vegan celiac kale chips scenester roof cold-pressed hammock.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/5669a82b-cc55-4650-99b6-b8dc03afbf03.json",
          "type": "place",
          "label": "Evildrome Boozarama",
          "description": "<span>Evildrome Boozarama.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/eeccc785-7853-49ad-bcda-592b97f3f743.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/92eb55f0-ba87-4423-ad73-a06b069c01a5.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/e32fac61-8b66-4628-a906-988a5da4c0a4.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/86eb4b1b-724d-435c-9b1e-73e5290d70ab.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/6016ceb5-2444-4cfc-b9f4-edecdceaacb7.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/983409ea-e0b0-43fc-9ad8-d201b6e2adc6.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Vegan mixtape swag typewriter gastropub.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/43259f95-eb14-4f0d-b9c3-2c7ca038bf88.json",
      "date": "1959-12-12T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/cda02401-0756-4b7a-9358-7db0505bf5ff.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1900-1991). Celiac retro vice kinfolk swag flannel authentic letterpress.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e4b26b23-8cfb-4025-a8c2-665e04c97334.json",
          "type": "place",
          "label": "Megabrantis cluster",
          "description": "<span>Megabrantis cluster.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/95807d3a-f3fd-485c-adda-d165a5182be3.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/5adc56a7-69ea-4f51-90e2-c8868914affa.json",
            "type": "music",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/38d0ec6d-7308-4b3f-8a6a-51ce19ce639f.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/9ad20da8-3edb-4d43-9614-45b53173e9c1.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/4cb7e30e-8780-4533-8949-a950e1476507.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/7e8810e6-1aab-4781-ba35-4cd627d676b8.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/07523cdd-5d8b-4229-a185-63505770a57a.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Wolf farm-to-table brooklyn meh umami.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/9acefafd-a119-41ad-a4e2-680e272d6521.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/198d465a-cbb0-4cdc-bb1d-a2485c5e3e64.json",
      "date": "1960-04-17T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/77813198-16c3-466d-a342-4d1bc7522379.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1914-1985). Polaroid authentic mlkshk selvage cred mixtape.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/b60ef650-31ca-4afd-8cc4-0dfa35f7afc0.json",
          "type": "place",
          "label": "Fenchurch Street railway station",
          "description": "<span>Fenchurch Street railway station.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/15c12905-b818-4d5c-b6b3-8256fb5516d0.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/cf86860e-cd03-42df-a7cf-d36abd639fe4.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Authentic carry squid iphone locavore cardigan put a bird on it slow-carb.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/7f19e217-4d12-4c87-83e2-76a72f788ed5.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/86944301-339a-4b65-9802-ccafb5ece4b7.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Mustache sartorial letterpress fingerstache kombucha kitsch beard banh mi gastropub.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/12ffe942-83f2-4297-b243-52e87f5a5d5f.json",
      "date": "1961-12-14T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/8577b55d-fdc9-4c04-803f-d74cb0f29673.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1907-1990). Flexitarian seitan try-hard next level.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/4dddcc03-17e2-4d14-97cf-cb3e6ec90c41.json",
          "type": "place",
          "label": "Ziggie's Den of Iniquity",
          "description": "<span>Ziggie's Den of Iniquity.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/8bca686c-4caf-4173-a8f8-7d98202daf14.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/1d479ff9-5037-46d8-9394-942de5c5d648.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/89451c88-3b65-408b-8f72-1ea96c4b27d9.json",
            "type": "person",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn. Drinking art party +1 meh chillwave.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/5775c607-201c-4baf-a3c0-744e3bdf97e6.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/96ac6ad6-51b0-4008-9191-f345aecfc18c.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/034a1807-b9fe-4e93-a0c5-88fb2c150622.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/fb42de51-9fd6-46e5-8bca-e986b16db95f.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Helvetica vinegar sustainable flexitarian squid crucifix umami.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3e183551-a9a9-4613-8b87-c25c45025595.json",
      "date": "1961-12-15T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/3107bdc5-a8cc-4c8c-89c9-2d56753816e0.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1917-1991). Salvia irony ethical selfies.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3b422659-ca30-424c-940f-97d0e9acc40f.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/f2e2c73a-06ed-4990-94b6-d3a9ff499c81.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/9de0440a-6d4b-4db7-80f2-d55a1122089e.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/dcadfa27-9394-4560-91e5-42ad73df584b.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Chillwave occupy irony flannel.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/e8082aff-61e6-4901-8f40-70d01e15327e.json",
            "type": "production",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/d6442844-f81e-4725-942c-3e873da4c73b.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/0c497978-8c91-4c21-a3c3-f942d27bcf7c.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Diy lo-fi seitan small batch single-origin coffee bespoke readymade.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2eeae285-bc64-46bc-9898-fd1f0257360c.json",
      "date": "1962-09-01T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/f5ac5084-3183-4cd0-97e8-cf37394121a5.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1926-1983). Five dollar toast kickstarter marfa knausgaard whatever.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/ae5191ba-8eca-49a4-a592-e2e5570e7b7d.json",
          "type": "place",
          "label": "Betelgeuse",
          "description": "<span>Betelgeuse.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/5fbf474c-7065-4192-ba2c-30ef6dc54fa2.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9020e9e2-68e3-47dd-b7be-2d729cc4ed29.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Before they sold out wes anderson single-origin coffee slow-carb shoreditch everyday.</span>"
          },
          {
            "id": "http://example.org/entities/f6100adc-aa90-4ac5-abe6-3604f500c314.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Leggings chambray hella ugh pop-up.</span>"
          },
          {
            "id": "http://example.org/entities/61a35928-3824-40a5-9a4d-c0897301cf14.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Butcher offal actually health microdosing kale chips letterpress helvetica tilde.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/80c376b7-7032-44e6-811c-def364eb7ad2.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/c5fd475b-183a-44bb-ae6f-8a2448a6bbd9.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/5f4b6344-8e40-4ac0-987c-0c9f176c712a.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/546c16cd-f3e9-4ead-bbde-83fff6118df6.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Artisan goth master church-key.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/07312a96-2df6-45dd-b8d7-190b1e8469fb.json",
      "date": "1962-09-12T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/1af4e102-14f0-48f4-90e2-0aa444dcd1b8.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1916-1970). Disrupt viral williamsburg mixtape polaroid.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/4a13fb6b-efc5-4ab9-8d91-7e7d1f87c34c.json",
          "type": "place",
          "label": "Rupert",
          "description": "<span>Rupert.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/207c4847-999f-416f-b7b3-1f674b38d870.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/a7c15c2f-ad5d-4975-a4a2-4dec71c3f898.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/b65401a8-03f2-4c22-b47b-90690d4a24b0.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/6dbed891-4036-45d2-9e98-64e1bc8e9ab8.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/7e4d536a-fb37-4734-b8d0-188810b30468.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/6bb3a8b2-da19-4a37-ac56-e26ae2f2747f.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/7e0b8092-10a9-4769-9957-4cac5d0f9cb4.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0d3d7a24-7767-4e20-8e97-76183fdad4ec.json",
      "date": "1962-10-22T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/442d28a7-95d1-415e-b94e-ec0ca8ed0fa5.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1909-1996). Shoreditch farm-to-table blog literally celiac lumbersexual.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/be1221e3-ad79-4413-9c01-892e0e2ee541.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/09778aaa-fd4d-4988-b1fb-46ec1a4e7efc.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/32977b48-6169-449d-936c-70f2594e3ab8.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/6c3eb483-a69f-49c6-bca9-ef01a7497def.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/5c6106d8-c8d9-4d64-b74b-e5a0807da0bd.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/23a17926-cefc-4e05-abc4-43146b808068.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/30c2ac4e-914c-4b57-9874-61d7dd78bc27.json",
            "type": "production",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/4e62c2d5-79df-4814-b4f5-3cf0178c7978.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/b2951397-5a99-41b4-aa6f-4bbb9daa16bf.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/d121e260-5749-4588-b3a7-093f4c0c78d6.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/52528813-0adc-4159-a316-95b161f3e090.json",
      "date": "1963-05-11T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/ff12a7aa-731d-4902-a823-4230b2eef372.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1906-1989). Small batch vhs crucifix before they sold out locavore swag tacos.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/17227b7e-642d-44d5-91fe-1e2c4849e314.json",
          "type": "place",
          "label": "Horse and Groom",
          "description": "<span>Horse and Groom.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/4cbabc05-ff81-428b-a8a9-36ffcd87233d.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/dc4def10-6cbd-4e8e-907f-0e2415cc77c2.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/71cde2ba-398e-466f-97d4-48007e16812a.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/e54c71fe-28ba-4ddd-a64d-218c7c529e05.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Direct trade cardigan distillery irony beard vegan viral.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/8de6ba74-3d3d-4f47-977e-ca3eb26d213f.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/84bce663-a2f0-4e1e-899e-282ad387691b.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f4cc938c-88a1-4759-bddd-635bc87162d7.json",
      "date": "1963-10-08T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c8e1f069-fe8d-4bfc-ba9a-7e8b7f1fcd11.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1925-1985). Typewriter meditation chia retro.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c14014f3-0c54-4471-af8d-ef817b915847.json",
          "type": "place",
          "label": "Xaxis",
          "description": "<span>Xaxis.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/4bdfffe2-09f3-4266-aab8-adea177085ee.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/8763e609-cf73-42f6-9a6b-2917893298a8.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/511da239-4ae9-44fb-900f-4060ce257c37.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/113435b7-0c4b-42fe-8c02-850b1365d335.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/496f4622-c54f-4cfb-bb2f-e5da64645183.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/97805b99-4b54-421c-8f99-a0309cd0ccfe.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Hammock listicle iphone yolo butcher.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ef398797-b7ef-43a1-8a9e-dfb07db5aa80.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b9650a60-1722-4ec3-ae85-ac3497976a40.json",
      "date": "1963-10-30T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a8fc68cd-c4d7-4d57-b993-8e83c343993b.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1916-1983). Etsy locavore tote bag cliche.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/59a52163-b130-4223-aca2-a6c6426f50c5.json",
          "type": "place",
          "label": "Ysllodins",
          "description": "<span>Ysllodins.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/06ad1eb3-357e-4bf2-b74c-31df5e720554.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/2bf88fee-c261-46ae-834c-28bda3822100.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/d2521931-1491-4a2f-8e5e-7481488db48b.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/3e202821-ea04-4a8c-b6a9-a38ab4cc0549.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Leggings helvetica semiotics humblebrag paleo gluten-free trust fund.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/13719cc4-8437-425e-a18d-6da09d333f0f.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/17a4f4e9-6689-410c-a2e5-9245e9069fc0.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/6e133a0f-f226-4101-8c8b-30b0ab531111.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/0f4ae911-09ea-444a-8319-42d3d03f02a9.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/d6feb082-6e27-4e0b-8b45-932e854d7969.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/581a0fbf-4ee1-42f9-87b4-a701a86ac8cb.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/76e1be9a-7b29-4346-89ca-72997fbb5031.json",
      "date": "1963-12-23T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4a7d6584-6fb8-4218-b556-741fcdf573fd.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1927-1989). Vinyl butcher street taxidermy.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a31136b4-a478-45a5-9c4a-464899782c35.json",
          "type": "place",
          "label": "Milliways",
          "description": "<span>Milliways.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/b5cc7165-4a45-4c22-8c38-2765fe285087.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/453a384f-1b05-45f3-af42-abc8133d775d.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/3e68f748-9ed0-4ada-9b11-bd84f2ff8bec.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/e52df0dc-80a8-400f-83da-30e25e062a5f.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/69699a7a-94c4-4688-ab69-8b334903cb2a.json",
      "date": "1964-03-27T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/763a07e2-8459-4795-81d4-7dae4e027df6.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1901-1983). Synth before they sold out mustache tousled phlogiston pabst.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/51cbd21e-7a0a-4c47-84d7-573b9d25ab51.json",
          "type": "place",
          "label": "Easter Island",
          "description": "<span>Easter Island.</span>"
        }
      ],
      "mentions": {
        "places": [
          {
            "id": "http://example.org/entities/baf05ddc-db7d-47d9-82d3-906e868e296f.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/a27e7d03-1256-4361-a587-f31d377c6244.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/fde92ae1-2e0f-4d2f-b009-ca69e47213e6.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/b4dfa9c7-e2c7-4c79-9786-88f9e820a251.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/7c77cc71-882f-4e7e-b141-0fdbe8f518a1.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4e2ce186-aadf-4978-9dc9-1417a08ab625.json",
      "date": "1964-04-05T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/80cee501-36ef-4070-96f2-f3574680c96e.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1901-1996). Bitters intelligentsia chambray artisan beard dreamcatcher single-origin coffee gluten-free.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/00bf5ff1-0226-4084-9213-dd8bf6f810f4.json",
          "type": "place",
          "label": "Ysllodins",
          "description": "<span>Ysllodins.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/79f1099d-9bef-4037-afcc-8fee7e5b76aa.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/1051923f-94c7-42a6-8e9b-53137aa736b0.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/e6b966f4-e1f7-4de5-b1d0-6ec930588c8e.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/d92a3ef3-2fc2-4ad1-921d-a6a1e0a99ecb.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/078ce01d-33d0-4178-a504-64d3801a6f99.json",
      "date": "1965-02-13T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/1e445ae7-c801-45f0-9fa4-f8302faa2402.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1919-1993). Portland bicycle rights hashtag retro sustainable.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/de7d1ef1-c5d0-43c1-a6dc-6b214a9fc70c.json",
          "type": "place",
          "label": "Highgate Cemetery",
          "description": "<span>Highgate Cemetery.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/9cf99323-17be-435d-b030-c4322925fe18.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/1e39c303-b900-4c19-901d-6c124c120776.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/5fc8c7fc-db4a-406e-85fd-a5104d3fc56e.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/3d8d17de-1109-4dff-b0db-ac6880cee287.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/be9c0650-f811-45bb-843d-bcb5f773416a.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c99e01dc-3ad9-4c1f-8108-9c6a08652732.json",
      "date": "1965-05-12T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/34e08b97-441b-4073-a190-0c202d1c968e.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1924-1970). Church-key thundercats taxidermy actually.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/7ceb6848-18cf-4bb2-b277-98ba8d9720e7.json",
          "type": "place",
          "label": "Milliways",
          "description": "<span>Milliways.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/4cc539b4-5bd6-43cf-881d-a23a993eaa48.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/ce454f5b-dc6b-43a3-8d4e-7a219e790b8b.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/8b0fc16f-ce8a-4a25-b139-afe9b6ed5d79.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/acb62ac7-74b9-4c61-9ae3-4bad60e9dc03.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Gastropub etsy pour-over scenester gentrify offal selfies bitters.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/341721d4-1273-4585-9dfe-b49423ebf84d.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/26ea1db1-217f-425f-96d1-51e59f82e416.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Humblebrag echo readymade single-origin coffee.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ce72d573-7110-4bf0-9a74-2a02c722a581.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f0b49202-0861-4c1c-833c-c58053aee2e9.json",
      "date": "1965-07-14T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/dfe324c0-9daf-4c79-8d66-6b97b3ba8f2d.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1911-1970). Shoreditch brunch meggings franzen pickled cornhole godard freegan.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/5e5943cf-6183-41b6-925f-844586b4f9f6.json",
          "type": "place",
          "label": "Ziggie's Den of Iniquity",
          "description": "<span>Ziggie's Den of Iniquity.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/6a3b570b-ce76-4f20-a855-f984206760c4.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/621d147a-6302-4515-bc66-df79225ce0e9.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/5a11e21f-35da-416b-9e22-73843bc1560b.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/aaacf4e1-47f2-46e5-a620-a99bb27ab6d0.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/b69dfa15-e1ae-42ed-8a8c-09689c6b403b.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/5b48f9a0-fe3b-4b00-940c-f586f96e4879.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/8d2683b4-8011-47c8-8797-3fa10e6965fe.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/bc537532-0b2c-4fe2-91df-07db0bc528ee.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Church-key authentic bicycle rights chia flannel deep v.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/98a5eef4-0161-4a7a-a40e-12df24296178.json",
      "date": "1965-12-09T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/acd30d48-5e8d-43a7-a973-d452fefe5a3c.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1920-1991). Everyday irony marfa wes anderson pitchfork godard.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c89de384-cb1d-445b-beac-634f51049093.json",
          "type": "place",
          "label": "France",
          "description": "<span>France.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/8a1ed438-3cd2-414d-87bc-3e53aace788e.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/a8602add-4d1c-409b-ab39-fe49090bda20.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/6669bbf0-518c-4814-898b-3c7b8091c29c.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Synth authentic 90's blog taxidermy food truck next level franzen fingerstache.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/11775aa6-4627-45ea-a941-7a897d9dfb9b.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/3742bd79-520c-4976-9865-ff005ec355a3.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/b359a944-d5b2-4e9d-88aa-56b0e5e27301.json",
            "type": "production",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/5a173b5b-02f5-4a90-940b-01a54588a1d0.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/ed56f24b-c919-45ec-a3b0-fba27aa7f677.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 21,
      "buckets": [
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 4
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
          "key": "Southern Cartwright",
          "doc_count": 29
        },
        {
          "key": "Sawayn Institute",
          "doc_count": 21
        },
        {
          "key": "Jenkins University",
          "doc_count": 20
        },
        {
          "key": "Eastern Ohio Institute",
          "doc_count": 16
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 21,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 7
        },
        {
          "key": "french",
          "doc_count": 6
        },
        {
          "key": "english",
          "doc_count": 5
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
    "page_count": 1,
    "total_count": 21,
    "links": {
      "self": "http://example.org/letters?page=1&repositories=Sawayn+Institute"
    }
  }
}</pre>
